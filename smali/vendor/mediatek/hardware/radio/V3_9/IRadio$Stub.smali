.class public abstract Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_9/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_9/IRadio;
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

    .line 5872
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5919
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5920
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5921
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5922
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5923
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

    .line 5884
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

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

    new-array v3, v2, [B

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        -0x18t
        -0x3dt
        0x5at
        0x35t
        0x67t
        -0x3et
        0x5dt
        -0xet
        -0x5t
        -0x30t
        -0x71t
        0x25t
        0x4t
        -0x74t
        -0x42t
        0x56t
        -0x16t
        -0x3bt
        -0x3dt
        0x70t
        0xft
        0x68t
        -0x58t
        0x43t
        0x25t
        0x1at
        0x3bt
        0x7t
        -0x2ct
        -0x4dt
        -0x1et
        0x51t
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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

    :array_9
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

    :array_a
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

    :array_b
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
    .locals 13
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

    const-string v1, "vendor.mediatek.hardware.radio@3.9::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.8::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.7::IRadio"

    const-string v4, "vendor.mediatek.hardware.radio@3.6::IRadio"

    const-string v5, "vendor.mediatek.hardware.radio@3.5::IRadio"

    const-string v6, "vendor.mediatek.hardware.radio@3.4::IRadio"

    const-string v7, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v8, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v9, "android.hardware.radio@1.2::IRadio"

    const-string v10, "android.hardware.radio@1.1::IRadio"

    const-string v11, "android.hardware.radio@1.0::IRadio"

    const-string v12, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 5878
    const-string v0, "vendor.mediatek.hardware.radio@3.9::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5907
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5929
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5931
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

    .line 5959
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

    .line 11042
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    :cond_0
    move v0, v6

    .line 11043
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_294

    .line 11044
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11045
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11046
    goto/16 :goto_c

    .line 11029
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v6, v7

    :cond_1
    move v1, v6

    .line 11030
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_2

    .line 11031
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11033
    goto/16 :goto_c

    .line 11034
    :cond_2
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11036
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->notifySyspropsChanged()V

    .line 11037
    goto/16 :goto_c

    .line 11013
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    move v1, v7

    .line 11014
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 11015
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11017
    goto/16 :goto_c

    .line 11018
    :cond_4
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11020
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 11021
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11022
    invoke-virtual {v0, v15}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 11023
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11024
    goto/16 :goto_c

    .line 10998
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

    .line 10999
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 11000
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11002
    goto/16 :goto_c

    .line 11003
    :cond_6
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11005
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->ping()V

    .line 11006
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11008
    goto/16 :goto_c

    .line 10988
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v6, v7

    :cond_7
    move v0, v6

    .line 10989
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_294

    .line 10990
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10991
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10992
    goto/16 :goto_c

    .line 10975
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v6, v7

    :cond_8
    move v1, v6

    .line 10976
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_9

    .line 10977
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10978
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10979
    goto/16 :goto_c

    .line 10980
    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10982
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setHALInstrumentation()V

    .line 10983
    goto/16 :goto_c

    .line 10936
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v7, v6

    :goto_2
    move v1, v7

    .line 10937
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 10938
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10940
    goto/16 :goto_c

    .line 10941
    :cond_b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10943
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10944
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10946
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 10948
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 10949
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 10950
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10951
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 10952
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 10954
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 10955
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 10957
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 10961
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10962
    nop

    .line 10952
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 10958
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 10965
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 10967
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 10969
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10970
    goto/16 :goto_c

    .line 10920
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

    .line 10921
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 10922
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10923
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10924
    goto/16 :goto_c

    .line 10925
    :cond_f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10927
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 10928
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10929
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 10930
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10931
    goto/16 :goto_c

    .line 10903
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

    .line 10904
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 10905
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10907
    goto/16 :goto_c

    .line 10908
    :cond_11
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 10911
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10912
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 10913
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10914
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10915
    goto/16 :goto_c

    .line 10887
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

    .line 10888
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 10889
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10891
    goto/16 :goto_c

    .line 10892
    :cond_13
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10894
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10895
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10896
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10898
    goto/16 :goto_c

    .line 10871
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_14

    move v6, v7

    :cond_14
    move v1, v6

    .line 10872
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_15

    .line 10873
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10875
    goto/16 :goto_c

    .line 10876
    :cond_15
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10879
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10880
    .local v2, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 10881
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 10882
    goto/16 :goto_c

    .line 10856
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

    .line 10857
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v7, :cond_17

    .line 10858
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10860
    goto/16 :goto_c

    .line 10861
    :cond_17
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;

    move-result-object v0

    .line 10864
    .local v0, "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;

    move-result-object v2

    .line 10865
    .local v2, "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;)V

    .line 10866
    goto/16 :goto_c

    .line 10840
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v6, v7

    :cond_18
    move v0, v6

    .line 10841
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19

    .line 10842
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10843
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10844
    goto/16 :goto_c

    .line 10845
    :cond_19
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10848
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10849
    .local v2, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10850
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->hangupWithReason(III)V

    .line 10851
    goto/16 :goto_c

    .line 10825
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

    .line 10826
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b

    .line 10827
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10828
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10829
    goto/16 :goto_c

    .line 10830
    :cond_1b
    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10833
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10834
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10835
    goto/16 :goto_c

    .line 10810
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v6, v7

    :cond_1c
    move v0, v6

    .line 10811
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d

    .line 10812
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10813
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10814
    goto/16 :goto_c

    .line 10815
    :cond_1d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10818
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10819
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10820
    goto/16 :goto_c

    .line 10795
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v6, v7

    :cond_1e
    move v0, v6

    .line 10796
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f

    .line 10797
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10799
    goto/16 :goto_c

    .line 10800
    :cond_1f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10803
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10804
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10805
    goto/16 :goto_c

    .line 10779
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v6, v7

    :cond_20
    move v0, v6

    .line 10780
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21

    .line 10781
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10783
    goto/16 :goto_c

    .line 10784
    :cond_21
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10787
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10788
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10789
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10790
    goto/16 :goto_c

    .line 10763
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

    .line 10764
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23

    .line 10765
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10767
    goto/16 :goto_c

    .line 10768
    :cond_23
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10770
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10771
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10772
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10773
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10774
    goto/16 :goto_c

    .line 10748
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

    .line 10749
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25

    .line 10750
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10751
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10752
    goto/16 :goto_c

    .line 10753
    :cond_25
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10756
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10757
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10758
    goto/16 :goto_c

    .line 10733
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v6, v7

    :cond_26
    move v0, v6

    .line 10734
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27

    .line 10735
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10736
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10737
    goto/16 :goto_c

    .line 10738
    :cond_27
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10740
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10741
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10742
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10743
    goto/16 :goto_c

    .line 10718
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v6, v7

    :cond_28
    move v0, v6

    .line 10719
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_29

    .line 10720
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10721
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10722
    goto/16 :goto_c

    .line 10723
    :cond_29
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10726
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10727
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSilentReboot(II)V

    .line 10728
    goto/16 :goto_c

    .line 10703
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v6, v7

    :cond_2a
    move v0, v6

    .line 10704
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2b

    .line 10705
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10707
    goto/16 :goto_c

    .line 10708
    :cond_2b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10711
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10712
    .local v2, "simMode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->reportSimMode(II)V

    .line 10713
    goto/16 :goto_c

    .line 10688
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simMode":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v6, v7

    :cond_2c
    move v0, v6

    .line 10689
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2d

    .line 10690
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10692
    goto/16 :goto_c

    .line 10693
    :cond_2d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10696
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10697
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10698
    goto/16 :goto_c

    .line 10674
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v6, v7

    :cond_2e
    move v0, v6

    .line 10675
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_2f

    .line 10676
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10678
    goto/16 :goto_c

    .line 10679
    :cond_2f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10682
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10683
    goto/16 :goto_c

    .line 10659
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v6, v7

    :cond_30
    move v0, v6

    .line 10660
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_31

    .line 10661
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10662
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10663
    goto/16 :goto_c

    .line 10664
    :cond_31
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10667
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10668
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10669
    goto/16 :goto_c

    .line 10645
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v6, v7

    :cond_32
    move v0, v6

    .line 10646
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_33

    .line 10647
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10649
    goto/16 :goto_c

    .line 10650
    :cond_33
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10653
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->resetAllConnections(I)V

    .line 10654
    goto/16 :goto_c

    .line 10630
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v6, v7

    :cond_34
    move v0, v6

    .line 10631
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_35

    .line 10632
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10634
    goto/16 :goto_c

    .line 10635
    :cond_35
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10638
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10639
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10640
    goto/16 :goto_c

    .line 10615
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v6, v7

    :cond_36
    move v0, v6

    .line 10616
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_37

    .line 10617
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10618
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10619
    goto/16 :goto_c

    .line 10620
    :cond_37
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10623
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10624
    .restart local v2    # "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10625
    goto/16 :goto_c

    .line 10600
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v6, v7

    :cond_38
    move v0, v6

    .line 10601
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_39

    .line 10602
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10604
    goto/16 :goto_c

    .line 10605
    :cond_39
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10608
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10609
    .local v2, "featureId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10610
    goto/16 :goto_c

    .line 10584
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v6, v7

    :cond_3a
    move v0, v6

    .line 10585
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3b

    .line 10586
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10588
    goto/16 :goto_c

    .line 10589
    :cond_3b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10592
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10593
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10594
    .local v3, "value":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10595
    goto/16 :goto_c

    .line 10569
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

    .line 10570
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3d

    .line 10571
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10573
    goto/16 :goto_c

    .line 10574
    :cond_3d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10577
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10578
    .local v2, "configId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10579
    goto/16 :goto_c

    .line 10553
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v6, v7

    :cond_3e
    move v0, v6

    .line 10554
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_3f

    .line 10555
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10556
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10557
    goto/16 :goto_c

    .line 10558
    :cond_3f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10561
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10562
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10563
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10564
    goto/16 :goto_c

    .line 10537
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

    .line 10538
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_41

    .line 10539
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10541
    goto/16 :goto_c

    .line 10542
    :cond_41
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10545
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10546
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10547
    .local v3, "network":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10548
    goto/16 :goto_c

    .line 10519
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v6, v7

    .line 10520
    .local v6, "_hidl_is_oneway":Z
    :cond_42
    if-eq v6, v7, :cond_43

    .line 10521
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10522
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10523
    goto/16 :goto_c

    .line 10524
    :cond_43
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10527
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10528
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10529
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10530
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10531
    .local v11, "isLast":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10532
    goto/16 :goto_c

    .line 10504
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

    .line 10505
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_45

    .line 10506
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10507
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10508
    goto/16 :goto_c

    .line 10509
    :cond_45
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10511
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10512
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10513
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10514
    goto/16 :goto_c

    .line 10490
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v6, v7

    :cond_46
    move v0, v6

    .line 10491
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_47

    .line 10492
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10493
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10494
    goto/16 :goto_c

    .line 10495
    :cond_47
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10498
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getApcInfo(I)V

    .line 10499
    goto/16 :goto_c

    .line 10473
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v6, v7

    :cond_48
    move v0, v6

    .line 10474
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_49

    .line 10475
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10477
    goto/16 :goto_c

    .line 10478
    :cond_49
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10480
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10481
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10482
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10483
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10484
    .local v4, "interval":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setApcMode(IIII)V

    .line 10485
    goto/16 :goto_c

    .line 10456
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

    .line 10457
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4b

    .line 10458
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10460
    goto/16 :goto_c

    .line 10461
    :cond_4b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10464
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10465
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10466
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10467
    .local v4, "pktloss":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10468
    goto/16 :goto_c

    .line 10436
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

    .line 10437
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_4d

    .line 10438
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10440
    goto/16 :goto_c

    .line 10441
    :cond_4d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10444
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10445
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10446
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10447
    .local v12, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10448
    .local v16, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10449
    .local v17, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 10450
    .local v18, "dstPort":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10451
    goto/16 :goto_c

    .line 10421
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

    .line 10422
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_4f

    .line 10423
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10425
    goto/16 :goto_c

    .line 10426
    :cond_4f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10429
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10430
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10431
    goto/16 :goto_c

    .line 10396
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v6, v7

    :cond_50
    move v12, v6

    .line 10397
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v7, :cond_51

    .line 10398
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10399
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10400
    goto/16 :goto_c

    .line 10401
    :cond_51
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10404
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10405
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10406
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10407
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10408
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10409
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10410
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10411
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10412
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10413
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10414
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10415
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10416
    goto/16 :goto_c

    .line 10379
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

    .line 10380
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_53

    .line 10381
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10382
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10383
    goto/16 :goto_c

    .line 10384
    :cond_53
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10387
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10388
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10389
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10390
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10391
    goto/16 :goto_c

    .line 10363
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

    .line 10364
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_55

    .line 10365
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10367
    goto/16 :goto_c

    .line 10368
    :cond_55
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10371
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10372
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10373
    .local v3, "snr":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10374
    goto/16 :goto_c

    .line 10345
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v6, v7

    .line 10346
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v6, v7, :cond_57

    .line 10347
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10348
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10349
    goto/16 :goto_c

    .line 10350
    :cond_57
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 10353
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10354
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10355
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10356
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10357
    .local v11, "apMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10358
    goto/16 :goto_c

    .line 10328
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

    .line 10329
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_59

    .line 10330
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10332
    goto/16 :goto_c

    .line 10333
    :cond_59
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10336
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10337
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10338
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10339
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10340
    goto/16 :goto_c

    .line 10313
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

    .line 10314
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5b

    .line 10315
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10316
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10317
    goto/16 :goto_c

    .line 10318
    :cond_5b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10321
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10322
    .local v2, "vdp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10323
    goto/16 :goto_c

    .line 10298
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "vdp":I
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v6, v7

    :cond_5c
    move v0, v6

    .line 10299
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5d

    .line 10300
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10302
    goto/16 :goto_c

    .line 10303
    :cond_5d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10306
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10307
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setE911State(II)V

    .line 10308
    goto/16 :goto_c

    .line 10282
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v6, v7

    :cond_5e
    move v0, v6

    .line 10283
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_5f

    .line 10284
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10285
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10286
    goto/16 :goto_c

    .line 10287
    :cond_5f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10289
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10290
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10291
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10292
    .local v3, "interfaceId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10293
    goto/16 :goto_c

    .line 10267
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

    .line 10268
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_61

    .line 10269
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10271
    goto/16 :goto_c

    .line 10272
    :cond_61
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10274
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10275
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10276
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10277
    goto/16 :goto_c

    .line 10252
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v6, v7

    :cond_62
    move v0, v6

    .line 10253
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_63

    .line 10254
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10256
    goto/16 :goto_c

    .line 10257
    :cond_63
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10260
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10261
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10262
    goto/16 :goto_c

    .line 10237
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v6, v7

    :cond_64
    move v0, v6

    .line 10238
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_65

    .line 10239
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10241
    goto/16 :goto_c

    .line 10242
    :cond_65
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10245
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10246
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10247
    goto/16 :goto_c

    .line 10222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v6, v7

    :cond_66
    move v0, v6

    .line 10223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_67

    .line 10224
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10226
    goto/16 :goto_c

    .line 10227
    :cond_67
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10230
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10231
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10232
    goto/16 :goto_c

    .line 10208
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v6, v7

    :cond_68
    move v0, v6

    .line 10209
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_69

    .line 10210
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10211
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10212
    goto/16 :goto_c

    .line 10213
    :cond_69
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10216
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->restartRILD(I)V

    .line 10217
    goto/16 :goto_c

    .line 10194
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v6, v7

    :cond_6a
    move v0, v6

    .line 10195
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6b

    .line 10196
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10197
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10198
    goto/16 :goto_c

    .line 10199
    :cond_6b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10202
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->resetRadio(I)V

    .line 10203
    goto/16 :goto_c

    .line 10179
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v6, v7

    :cond_6c
    move v0, v6

    .line 10180
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6d

    .line 10181
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10183
    goto/16 :goto_c

    .line 10184
    :cond_6d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10187
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10188
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10189
    goto/16 :goto_c

    .line 10164
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v6, v7

    :cond_6e
    move v0, v6

    .line 10165
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_6f

    .line 10166
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10168
    goto/16 :goto_c

    .line 10169
    :cond_6f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v1

    .line 10172
    .local v1, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10173
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10174
    goto/16 :goto_c

    .line 10149
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v6, v7

    :cond_70
    move v0, v6

    .line 10150
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_71

    .line 10151
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10152
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10153
    goto/16 :goto_c

    .line 10154
    :cond_71
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10157
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10158
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10159
    goto/16 :goto_c

    .line 10134
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v6, v7

    :cond_72
    move v0, v6

    .line 10135
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_73

    .line 10136
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10137
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10138
    goto/16 :goto_c

    .line 10139
    :cond_73
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10142
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10143
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10144
    goto/16 :goto_c

    .line 10119
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v6, v7

    :cond_74
    move v0, v6

    .line 10120
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_75

    .line 10121
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10123
    goto/16 :goto_c

    .line 10124
    :cond_75
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10127
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10128
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10129
    goto/16 :goto_c

    .line 10104
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v6, v7

    :cond_76
    move v0, v6

    .line 10105
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_77

    .line 10106
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10107
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10108
    goto/16 :goto_c

    .line 10109
    :cond_77
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10112
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10113
    .local v2, "resultCode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10114
    goto/16 :goto_c

    .line 10089
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resultCode":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v6, v7

    :cond_78
    move v0, v6

    .line 10090
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_79

    .line 10091
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10092
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10093
    goto/16 :goto_c

    .line 10094
    :cond_79
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10097
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10098
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setTrm(II)V

    .line 10099
    goto/16 :goto_c

    .line 10072
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v6, v7

    :cond_7a
    move v0, v6

    .line 10073
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7b

    .line 10074
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10075
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10076
    goto/16 :goto_c

    .line 10077
    :cond_7b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10079
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10080
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10081
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10082
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10083
    .local v4, "param2":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setFdMode(IIII)V

    .line 10084
    goto/16 :goto_c

    .line 10055
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

    .line 10056
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7d

    .line 10057
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10059
    goto/16 :goto_c

    .line 10060
    :cond_7d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10063
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10064
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10065
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10066
    .local v4, "nAct":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 10067
    goto/16 :goto_c

    .line 10041
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

    .line 10042
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_7f

    .line 10043
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10044
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10045
    goto/16 :goto_c

    .line 10046
    :cond_7f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10049
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getCurrentPOLList(I)V

    .line 10050
    goto/16 :goto_c

    .line 10027
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v6, v7

    :cond_80
    move v0, v6

    .line 10028
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_81

    .line 10029
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10030
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10031
    goto/16 :goto_c

    .line 10032
    :cond_81
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10035
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getPOLCapability(I)V

    .line 10036
    goto/16 :goto_c

    .line 10012
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v6, v7

    :cond_82
    move v0, v6

    .line 10013
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_83

    .line 10014
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10015
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10016
    goto/16 :goto_c

    .line 10017
    :cond_83
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10020
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10021
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getRxTestResult(II)V

    .line 10022
    goto/16 :goto_c

    .line 9997
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v6, v7

    :cond_84
    move v0, v6

    .line 9998
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_85

    .line 9999
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10001
    goto/16 :goto_c

    .line 10002
    :cond_85
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10005
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10006
    .local v2, "antType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setRxTestConfig(II)V

    .line 10007
    goto/16 :goto_c

    .line 9977
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "antType":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v6, v7

    :cond_86
    move v8, v6

    .line 9978
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_87

    .line 9979
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9981
    goto/16 :goto_c

    .line 9982
    :cond_87
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9985
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9986
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9987
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9988
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 9989
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 9990
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9991
    .local v18, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 9992
    goto/16 :goto_c

    .line 9962
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

    .line 9963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_89

    .line 9964
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9966
    goto/16 :goto_c

    .line 9967
    :cond_89
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9970
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9971
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 9972
    goto/16 :goto_c

    .line 9948
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v6, v7

    :cond_8a
    move v0, v6

    .line 9949
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8b

    .line 9950
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9952
    goto/16 :goto_c

    .line 9953
    :cond_8b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9956
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 9957
    goto/16 :goto_c

    .line 9931
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v6, v7

    :cond_8c
    move v0, v6

    .line 9932
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8d

    .line 9933
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9934
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9935
    goto/16 :goto_c

    .line 9936
    :cond_8d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9938
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9939
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9940
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9941
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9942
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9943
    goto/16 :goto_c

    .line 9917
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

    .line 9918
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_8f

    .line 9919
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9921
    goto/16 :goto_c

    .line 9922
    :cond_8f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9925
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->abortFemtocellList(I)V

    .line 9926
    goto/16 :goto_c

    .line 9903
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v6, v7

    :cond_90
    move v0, v6

    .line 9904
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_91

    .line 9905
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9907
    goto/16 :goto_c

    .line 9908
    :cond_91
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9911
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getFemtocellList(I)V

    .line 9912
    goto/16 :goto_c

    .line 9889
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v6, v7

    :cond_92
    move v0, v6

    .line 9890
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_93

    .line 9891
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9893
    goto/16 :goto_c

    .line 9894
    :cond_93
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9897
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9898
    goto/16 :goto_c

    .line 9875
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v6, v7

    :cond_94
    move v0, v6

    .line 9876
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_95

    .line 9877
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9879
    goto/16 :goto_c

    .line 9880
    :cond_95
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9883
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9884
    goto/16 :goto_c

    .line 9861
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v6, v7

    :cond_96
    move v0, v6

    .line 9862
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_97

    .line 9863
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9864
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9865
    goto/16 :goto_c

    .line 9866
    :cond_97
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9868
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9869
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9870
    goto/16 :goto_c

    .line 9844
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v6, v7

    :cond_98
    move v0, v6

    .line 9845
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_99

    .line 9846
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9848
    goto/16 :goto_c

    .line 9849
    :cond_99
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9852
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9853
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9854
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9855
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9856
    goto/16 :goto_c

    .line 9830
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

    .line 9831
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9b

    .line 9832
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9834
    goto/16 :goto_c

    .line 9835
    :cond_9b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9838
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9839
    goto/16 :goto_c

    .line 9815
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v6, v7

    :cond_9c
    move v0, v6

    .line 9816
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9d

    .line 9817
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9819
    goto/16 :goto_c

    .line 9820
    :cond_9d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9823
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9824
    .local v2, "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->reloadModemType(II)V

    .line 9825
    goto/16 :goto_c

    .line 9800
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v6, v7

    :cond_9e
    move v0, v6

    .line 9801
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_9f

    .line 9802
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9804
    goto/16 :goto_c

    .line 9805
    :cond_9f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9808
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9809
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->storeModemType(II)V

    .line 9810
    goto/16 :goto_c

    .line 9785
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v6, v7

    :cond_a0
    move v0, v6

    .line 9786
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a1

    .line 9787
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9789
    goto/16 :goto_c

    .line 9790
    :cond_a1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9793
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9794
    .local v2, "sessionId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setResumeRegistration(II)V

    .line 9795
    goto/16 :goto_c

    .line 9770
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionId":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v6, v7

    :cond_a2
    move v0, v6

    .line 9771
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a3

    .line 9772
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9774
    goto/16 :goto_c

    .line 9775
    :cond_a3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9778
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9779
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9780
    goto/16 :goto_c

    .line 9755
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v6, v7

    :cond_a4
    move v0, v6

    .line 9756
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a5

    .line 9757
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9758
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9759
    goto/16 :goto_c

    .line 9760
    :cond_a5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9763
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9764
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9765
    goto/16 :goto_c

    .line 9739
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v6, v7

    :cond_a6
    move v0, v6

    .line 9740
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a7

    .line 9741
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9743
    goto/16 :goto_c

    .line 9744
    :cond_a7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9747
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9748
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9749
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9750
    goto/16 :goto_c

    .line 9723
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v6, v7

    :cond_a8
    move v0, v6

    .line 9724
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_a9

    .line 9725
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9727
    goto/16 :goto_c

    .line 9728
    :cond_a9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9730
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9731
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9732
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9733
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9734
    goto/16 :goto_c

    .line 9709
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

    .line 9710
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ab

    .line 9711
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9713
    goto/16 :goto_c

    .line 9714
    :cond_ab
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9717
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9718
    goto/16 :goto_c

    .line 9693
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v6, v7

    :cond_ac
    move v0, v6

    .line 9694
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ad

    .line 9695
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9697
    goto/16 :goto_c

    .line 9698
    :cond_ad
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9700
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9701
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9702
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9703
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9704
    goto/16 :goto_c

    .line 9679
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v6, v7

    :cond_ae
    move v0, v6

    .line 9680
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_af

    .line 9681
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9683
    goto/16 :goto_c

    .line 9684
    :cond_af
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9687
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9688
    goto/16 :goto_c

    .line 9665
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v6, v7

    :cond_b0
    move v0, v6

    .line 9666
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b1

    .line 9667
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9669
    goto/16 :goto_c

    .line 9670
    :cond_b1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9673
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9674
    goto/16 :goto_c

    .line 9650
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v6, v7

    :cond_b2
    move v0, v6

    .line 9651
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b3

    .line 9652
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9653
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9654
    goto/16 :goto_c

    .line 9655
    :cond_b3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9658
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9659
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9660
    goto/16 :goto_c

    .line 9634
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v6, v7

    :cond_b4
    move v0, v6

    .line 9635
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b5

    .line 9636
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9638
    goto/16 :goto_c

    .line 9639
    :cond_b5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9642
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9643
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9644
    .local v3, "serialId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->removeCbMsg(III)V

    .line 9645
    goto/16 :goto_c

    .line 9619
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

    .line 9620
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b7

    .line 9621
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9623
    goto/16 :goto_c

    .line 9624
    :cond_b7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9626
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9627
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9628
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setEtws(II)V

    .line 9629
    goto/16 :goto_c

    .line 9605
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v6, v7

    :cond_b8
    move v0, v6

    .line 9606
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_b9

    .line 9607
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9608
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9609
    goto/16 :goto_c

    .line 9610
    :cond_b9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9613
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9614
    goto/16 :goto_c

    .line 9589
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v6, v7

    :cond_ba
    move v0, v6

    .line 9590
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bb

    .line 9591
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9592
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9593
    goto/16 :goto_c

    .line 9594
    :cond_bb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9597
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9598
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9599
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9600
    goto/16 :goto_c

    .line 9575
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v6, v7

    :cond_bc
    move v0, v6

    .line 9576
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_bd

    .line 9577
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9579
    goto/16 :goto_c

    .line 9580
    :cond_bd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9583
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getSmsParameters(I)V

    .line 9584
    goto/16 :goto_c

    .line 9556
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v6, v7

    :cond_be
    move v8, v6

    .line 9557
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_bf

    .line 9558
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9559
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9560
    goto/16 :goto_c

    .line 9561
    :cond_bf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9563
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 9564
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9565
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9566
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9567
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9568
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9569
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9570
    goto/16 :goto_c

    .line 9539
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

    .line 9540
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c1

    .line 9541
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9543
    goto/16 :goto_c

    .line 9544
    :cond_c1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9547
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9548
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9549
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9550
    .local v4, "simType":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9551
    goto/16 :goto_c

    .line 9523
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

    .line 9524
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c3

    .line 9525
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9527
    goto/16 :goto_c

    .line 9528
    :cond_c3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9531
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9532
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9533
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9534
    goto/16 :goto_c

    .line 9503
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

    .line 9504
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_c5

    .line 9505
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9506
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9507
    goto/16 :goto_c

    .line 9508
    :cond_c5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9511
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9512
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9513
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9514
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9515
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9516
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9517
    .local v18, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9518
    goto/16 :goto_c

    .line 9488
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

    .line 9489
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c7

    .line 9490
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9492
    goto/16 :goto_c

    .line 9493
    :cond_c7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9495
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9496
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9497
    .local v2, "category":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->queryNetworkLock(II)V

    .line 9498
    goto/16 :goto_c

    .line 9472
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "category":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v6, v7

    :cond_c8
    move v0, v6

    .line 9473
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_c9

    .line 9474
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9475
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9476
    goto/16 :goto_c

    .line 9477
    :cond_c9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9479
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9480
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9481
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9482
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9483
    goto/16 :goto_c

    .line 9457
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v6, v7

    :cond_ca
    move v0, v6

    .line 9458
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cb

    .line 9459
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9460
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9461
    goto/16 :goto_c

    .line 9462
    :cond_cb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9465
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9466
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSimPower(II)V

    .line 9467
    goto/16 :goto_c

    .line 9443
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v6, v7

    :cond_cc
    move v0, v6

    .line 9444
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cd

    .line 9445
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9447
    goto/16 :goto_c

    .line 9448
    :cond_cd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9450
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9451
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getIccid(I)V

    .line 9452
    goto/16 :goto_c

    .line 9429
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v6, v7

    :cond_ce
    move v0, v6

    .line 9430
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_cf

    .line 9431
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9433
    goto/16 :goto_c

    .line 9434
    :cond_cf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9437
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getATR(I)V

    .line 9438
    goto/16 :goto_c

    .line 9414
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v6, v7

    :cond_d0
    move v0, v6

    .line 9415
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d1

    .line 9416
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9418
    goto/16 :goto_c

    .line 9419
    :cond_d1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9421
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9422
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9423
    .restart local v2    # "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9424
    goto/16 :goto_c

    .line 9399
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v6, v7

    :cond_d2
    move v0, v6

    .line 9400
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d3

    .line 9401
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9403
    goto/16 :goto_c

    .line 9404
    :cond_d3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9407
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9408
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setModemPower(IZ)V

    .line 9409
    goto/16 :goto_c

    .line 9384
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v6, v7

    :cond_d4
    move v0, v6

    .line 9385
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d5

    .line 9386
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9387
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9388
    goto/16 :goto_c

    .line 9389
    :cond_d5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9392
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9393
    .local v2, "ready":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setPhonebookReady(II)V

    .line 9394
    goto/16 :goto_c

    .line 9368
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ready":I
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v6, v7

    :cond_d6
    move v0, v6

    .line 9369
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d7

    .line 9370
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9372
    goto/16 :goto_c

    .line 9373
    :cond_d7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9376
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9377
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9378
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->readUPBAasList(III)V

    .line 9379
    goto/16 :goto_c

    .line 9352
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

    .line 9353
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_d9

    .line 9354
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9356
    goto/16 :goto_c

    .line 9357
    :cond_d9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9359
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9360
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9361
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9362
    .local v3, "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9363
    goto/16 :goto_c

    .line 9336
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

    .line 9337
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_db

    .line 9338
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9339
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9340
    goto/16 :goto_c

    .line 9341
    :cond_db
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9344
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9345
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9346
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9347
    goto/16 :goto_c

    .line 9320
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

    .line 9321
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_dd

    .line 9322
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9323
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9324
    goto/16 :goto_c

    .line 9325
    :cond_dd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9327
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9328
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9329
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9330
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9331
    goto/16 :goto_c

    .line 9304
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

    .line 9305
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_df

    .line 9306
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9308
    goto/16 :goto_c

    .line 9309
    :cond_df
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9312
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9313
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9314
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9315
    goto/16 :goto_c

    .line 9288
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

    .line 9289
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e1

    .line 9290
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9292
    goto/16 :goto_c

    .line 9293
    :cond_e1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9296
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9297
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9298
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9299
    goto/16 :goto_c

    .line 9272
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v6, v7

    :cond_e2
    move v0, v6

    .line 9273
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e3

    .line 9274
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9276
    goto/16 :goto_c

    .line 9277
    :cond_e3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9280
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9281
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9282
    .local v3, "index2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9283
    goto/16 :goto_c

    .line 9256
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

    .line 9257
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e5

    .line 9258
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9260
    goto/16 :goto_c

    .line 9261
    :cond_e5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9263
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9264
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9265
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9266
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9267
    goto/16 :goto_c

    .line 9242
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

    .line 9243
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e7

    .line 9244
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9245
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9246
    goto/16 :goto_c

    .line 9247
    :cond_e7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9250
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9251
    goto/16 :goto_c

    .line 9228
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v6, v7

    :cond_e8
    move v0, v6

    .line 9229
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_e9

    .line 9230
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9231
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9232
    goto/16 :goto_c

    .line 9233
    :cond_e9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9235
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9236
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9237
    goto/16 :goto_c

    .line 9212
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v6, v7

    :cond_ea
    move v0, v6

    .line 9213
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_eb

    .line 9214
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9215
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9216
    goto/16 :goto_c

    .line 9217
    :cond_eb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9220
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9221
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9222
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9223
    goto/16 :goto_c

    .line 9197
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

    .line 9198
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ed

    .line 9199
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9201
    goto/16 :goto_c

    .line 9202
    :cond_ed
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9205
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9206
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9207
    goto/16 :goto_c

    .line 9181
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v6, v7

    :cond_ee
    move v0, v6

    .line 9182
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ef

    .line 9183
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9185
    goto/16 :goto_c

    .line 9186
    :cond_ef
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9189
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9190
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9191
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->readUPBGasList(III)V

    .line 9192
    goto/16 :goto_c

    .line 9164
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

    .line 9165
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f1

    .line 9166
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9168
    goto/16 :goto_c

    .line 9169
    :cond_f1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9172
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9173
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9174
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9175
    .local v4, "entryIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9176
    goto/16 :goto_c

    .line 9149
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

    .line 9150
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f3

    .line 9151
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9152
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9153
    goto/16 :goto_c

    .line 9154
    :cond_f3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9157
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9158
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9159
    goto/16 :goto_c

    .line 9135
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v6, v7

    :cond_f4
    move v0, v6

    .line 9136
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f5

    .line 9137
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9138
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9139
    goto/16 :goto_c

    .line 9140
    :cond_f5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9142
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9143
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->queryUPBCapability(I)V

    .line 9144
    goto/16 :goto_c

    .line 9118
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v6, v7

    :cond_f6
    move v0, v6

    .line 9119
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f7

    .line 9120
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9121
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9122
    goto/16 :goto_c

    .line 9123
    :cond_f7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9125
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9126
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9127
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9128
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9129
    .local v4, "eIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9130
    goto/16 :goto_c

    .line 9102
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

    .line 9103
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_f9

    .line 9104
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9106
    goto/16 :goto_c

    .line 9107
    :cond_f9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9110
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9111
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9112
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9113
    goto/16 :goto_c

    .line 9087
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v6, v7

    :cond_fa
    move v0, v6

    .line 9088
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fb

    .line 9089
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9091
    goto/16 :goto_c

    .line 9092
    :cond_fb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9095
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9096
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9097
    goto/16 :goto_c

    .line 9073
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v6, v7

    :cond_fc
    move v0, v6

    .line 9074
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_fd

    .line 9075
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9076
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9077
    goto/16 :goto_c

    .line 9078
    :cond_fd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9081
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getEccNum(I)V

    .line 9082
    goto/16 :goto_c

    .line 9057
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v6, v7

    :cond_fe
    move v0, v6

    .line 9058
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_ff

    .line 9059
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9060
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9061
    goto/16 :goto_c

    .line 9062
    :cond_ff
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9064
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9065
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9066
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9067
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 9068
    goto/16 :goto_c

    .line 9042
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

    .line 9043
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_101

    .line 9044
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9045
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9046
    goto/16 :goto_c

    .line 9047
    :cond_101
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9050
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9051
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 9052
    goto/16 :goto_c

    .line 9027
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v6, v7

    :cond_102
    move v0, v6

    .line 9028
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_103

    .line 9029
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9030
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9031
    goto/16 :goto_c

    .line 9032
    :cond_103
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9035
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9036
    .local v2, "phoneType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->eccPreferredRat(II)V

    .line 9037
    goto/16 :goto_c

    .line 9011
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneType":I
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v6, v7

    :cond_104
    move v0, v6

    .line 9012
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_105

    .line 9013
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9015
    goto/16 :goto_c

    .line 9016
    :cond_105
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9019
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9020
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9021
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->currentStatus(III)V

    .line 9022
    goto/16 :goto_c

    .line 8995
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

    .line 8996
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_107

    .line 8997
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8998
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8999
    goto/16 :goto_c

    .line 9000
    :cond_107
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9003
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9004
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9005
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 9006
    goto/16 :goto_c

    .line 8980
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

    .line 8981
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_109

    .line 8982
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8984
    goto/16 :goto_c

    .line 8985
    :cond_109
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8988
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8989
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setEccServiceCategory(II)V

    .line 8990
    goto/16 :goto_c

    .line 8964
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceCategory":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v6, v7

    :cond_10a
    move v0, v6

    .line 8965
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10b

    .line 8966
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8968
    goto/16 :goto_c

    .line 8969
    :cond_10b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8972
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8973
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8974
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8975
    goto/16 :goto_c

    .line 8947
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v6, v7

    :cond_10c
    move v0, v6

    .line 8948
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10d

    .line 8949
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8951
    goto/16 :goto_c

    .line 8952
    :cond_10d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8955
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8956
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8957
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8958
    .local v4, "seqNumber":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCallIndication(IIII)V

    .line 8959
    goto/16 :goto_c

    .line 8933
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

    .line 8934
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_10f

    .line 8935
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8936
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8937
    goto/16 :goto_c

    .line 8938
    :cond_10f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8941
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->hangupAll(I)V

    .line 8942
    goto/16 :goto_c

    .line 8918
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v6, v7

    :cond_110
    move v0, v6

    .line 8919
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_111

    .line 8920
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8922
    goto/16 :goto_c

    .line 8923
    :cond_111
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8926
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8927
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8928
    goto/16 :goto_c

    .line 8904
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v6, v7

    :cond_112
    move v0, v6

    .line 8905
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_113

    .line 8906
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8908
    goto/16 :goto_c

    .line 8909
    :cond_113
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8912
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->resetSuppServ(I)V

    .line 8913
    goto/16 :goto_c

    .line 8890
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v6, v7

    :cond_114
    move v0, v6

    .line 8891
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_115

    .line 8892
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8893
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8894
    goto/16 :goto_c

    .line 8895
    :cond_115
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8898
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getXcapStatus(I)V

    .line 8899
    goto/16 :goto_c

    .line 8876
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v6, v7

    :cond_116
    move v0, v6

    .line 8877
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_117

    .line 8878
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8879
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8880
    goto/16 :goto_c

    .line 8881
    :cond_117
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8883
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8884
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->cancelUssi(I)V

    .line 8885
    goto/16 :goto_c

    .line 8860
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v6, v7

    :cond_118
    move v0, v6

    .line 8861
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_119

    .line 8862
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8864
    goto/16 :goto_c

    .line 8865
    :cond_119
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8868
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8869
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8870
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8871
    goto/16 :goto_c

    .line 8842
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v6, v7

    .line 8843
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_11a
    if-eq v6, v7, :cond_11b

    .line 8844
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8846
    goto/16 :goto_c

    .line 8847
    :cond_11b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8850
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8851
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8852
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8853
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8854
    .local v11, "netId":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8855
    goto/16 :goto_c

    .line 8826
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

    .line 8827
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11d

    .line 8828
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8830
    goto/16 :goto_c

    .line 8831
    :cond_11d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8834
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8835
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8836
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8837
    goto/16 :goto_c

    .line 8810
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v6, v7

    :cond_11e
    move v0, v6

    .line 8811
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_11f

    .line 8812
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8813
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8814
    goto/16 :goto_c

    .line 8815
    :cond_11f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8818
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8819
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8820
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8821
    goto/16 :goto_c

    .line 8795
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v6, v7

    :cond_120
    move v0, v6

    .line 8796
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_121

    .line 8797
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8799
    goto/16 :goto_c

    .line 8800
    :cond_121
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8803
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8804
    .local v2, "colrEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setColr(II)V

    .line 8805
    goto/16 :goto_c

    .line 8780
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colrEnable":I
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v6, v7

    :cond_122
    move v0, v6

    .line 8781
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_123

    .line 8782
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8784
    goto/16 :goto_c

    .line 8785
    :cond_123
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8787
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8788
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8789
    .local v2, "colpEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setColp(II)V

    .line 8790
    goto/16 :goto_c

    .line 8765
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colpEnable":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v6, v7

    :cond_124
    move v0, v6

    .line 8766
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_125

    .line 8767
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8769
    goto/16 :goto_c

    .line 8770
    :cond_125
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8773
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8774
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8775
    goto/16 :goto_c

    .line 8751
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v6, v7

    :cond_126
    move v0, v6

    .line 8752
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_127

    .line 8753
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8754
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8755
    goto/16 :goto_c

    .line 8756
    :cond_127
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8759
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getColr(I)V

    .line 8760
    goto/16 :goto_c

    .line 8737
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v6, v7

    :cond_128
    move v0, v6

    .line 8738
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_129

    .line 8739
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8741
    goto/16 :goto_c

    .line 8742
    :cond_129
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8745
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getColp(I)V

    .line 8746
    goto/16 :goto_c

    .line 8722
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v6, v7

    :cond_12a
    move v0, v6

    .line 8723
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12b

    .line 8724
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8725
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8726
    goto/16 :goto_c

    .line 8727
    :cond_12b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8729
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8730
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8731
    .local v2, "clipEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setClip(II)V

    .line 8732
    goto/16 :goto_c

    .line 8704
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "clipEnable":I
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v6, v7

    .line 8705
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_12c
    if-eq v6, v7, :cond_12d

    .line 8706
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8707
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8708
    goto/16 :goto_c

    .line 8709
    :cond_12d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8712
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8713
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8714
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8715
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8716
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8717
    goto/16 :goto_c

    .line 8689
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

    .line 8690
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_12f

    .line 8691
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8692
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8693
    goto/16 :goto_c

    .line 8694
    :cond_12f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8697
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8698
    .local v2, "phoneId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getRoamingEnable(II)V

    .line 8699
    goto/16 :goto_c

    .line 8674
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneId":I
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v6, v7

    :cond_130
    move v0, v6

    .line 8675
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_131

    .line 8676
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8678
    goto/16 :goto_c

    .line 8679
    :cond_131
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8682
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8683
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8684
    goto/16 :goto_c

    .line 8659
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v6, v7

    :cond_132
    move v0, v6

    .line 8660
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_133

    .line 8661
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8662
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8663
    goto/16 :goto_c

    .line 8664
    :cond_133
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8667
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8668
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8669
    goto/16 :goto_c

    .line 8645
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v6, v7

    :cond_134
    move v0, v6

    .line 8646
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_135

    .line 8647
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8649
    goto/16 :goto_c

    .line 8650
    :cond_135
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8653
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8654
    goto/16 :goto_c

    .line 8629
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v6, v7

    :cond_136
    move v0, v6

    .line 8630
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_137

    .line 8631
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8632
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8633
    goto/16 :goto_c

    .line 8634
    :cond_137
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8637
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8638
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8639
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8640
    goto/16 :goto_c

    .line 8612
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

    .line 8613
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_139

    .line 8614
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8615
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8616
    goto/16 :goto_c

    .line 8617
    :cond_139
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8619
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8620
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8621
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8622
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8623
    .local v4, "timer":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8624
    goto/16 :goto_c

    .line 8596
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

    .line 8597
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13b

    .line 8598
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8600
    goto/16 :goto_c

    .line 8601
    :cond_13b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8603
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8604
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8605
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8606
    .local v3, "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8607
    goto/16 :goto_c

    .line 8580
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

    .line 8581
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13d

    .line 8582
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8583
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8584
    goto/16 :goto_c

    .line 8585
    :cond_13d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8588
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8589
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8590
    .restart local v3    # "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8591
    goto/16 :goto_c

    .line 8565
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

    .line 8566
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_13f

    .line 8567
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8569
    goto/16 :goto_c

    .line 8570
    :cond_13f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8572
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8573
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8574
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->forceReleaseCall(II)V

    .line 8575
    goto/16 :goto_c

    .line 8549
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v6, v7

    :cond_140
    move v0, v6

    .line 8550
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_141

    .line 8551
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8552
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8553
    goto/16 :goto_c

    .line 8554
    :cond_141
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8556
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8557
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8558
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8559
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8560
    goto/16 :goto_c

    .line 8534
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v6, v7

    :cond_142
    move v0, v6

    .line 8535
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_143

    .line 8536
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8537
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8538
    goto/16 :goto_c

    .line 8539
    :cond_143
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8541
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8542
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8543
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8544
    goto/16 :goto_c

    .line 8519
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v6, v7

    :cond_144
    move v0, v6

    .line 8520
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_145

    .line 8521
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8522
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8523
    goto/16 :goto_c

    .line 8524
    :cond_145
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8527
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8528
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8529
    goto/16 :goto_c

    .line 8502
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v6, v7

    :cond_146
    move v0, v6

    .line 8503
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_147

    .line 8504
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8505
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8506
    goto/16 :goto_c

    .line 8507
    :cond_147
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8509
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8510
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8511
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8512
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8513
    .local v4, "type":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8514
    goto/16 :goto_c

    .line 8486
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

    .line 8487
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_149

    .line 8488
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8489
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8490
    goto/16 :goto_c

    .line 8491
    :cond_149
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8494
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8495
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8496
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8497
    goto/16 :goto_c

    .line 8471
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v6, v7

    :cond_14a
    move v0, v6

    .line 8472
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14b

    .line 8473
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8474
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8475
    goto/16 :goto_c

    .line 8476
    :cond_14b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8479
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8480
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setWfcProfile(II)V

    .line 8481
    goto/16 :goto_c

    .line 8454
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "wfcPreference":I
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v6, v7

    :cond_14c
    move v0, v6

    .line 8455
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14d

    .line 8456
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8458
    goto/16 :goto_c

    .line 8459
    :cond_14d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8462
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8463
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8464
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8465
    .local v4, "callToRemove":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8466
    goto/16 :goto_c

    .line 8437
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

    .line 8438
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_14f

    .line 8439
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8441
    goto/16 :goto_c

    .line 8442
    :cond_14f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8445
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8446
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8447
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8448
    .local v4, "callToAdd":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8449
    goto/16 :goto_c

    .line 8421
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

    .line 8422
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_151

    .line 8423
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8425
    goto/16 :goto_c

    .line 8426
    :cond_151
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8429
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8430
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8431
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8432
    goto/16 :goto_c

    .line 8406
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

    .line 8407
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_153

    .line 8408
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8410
    goto/16 :goto_c

    .line 8411
    :cond_153
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8414
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8415
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8416
    goto/16 :goto_c

    .line 8386
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v6, v7

    :cond_154
    move v8, v6

    .line 8387
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_155

    .line 8388
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8389
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8390
    goto/16 :goto_c

    .line 8391
    :cond_155
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8394
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8395
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8396
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8397
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8398
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8399
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8400
    .local v18, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8401
    goto/16 :goto_c

    .line 8371
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

    .line 8372
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_157

    .line 8373
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8374
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8375
    goto/16 :goto_c

    .line 8376
    :cond_157
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8379
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8380
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8381
    goto/16 :goto_c

    .line 8356
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v6, v7

    :cond_158
    move v0, v6

    .line 8357
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_159

    .line 8358
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8360
    goto/16 :goto_c

    .line 8361
    :cond_159
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8364
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8365
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8366
    goto/16 :goto_c

    .line 8341
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v6, v7

    :cond_15a
    move v0, v6

    .line 8342
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15b

    .line 8343
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8344
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8345
    goto/16 :goto_c

    .line 8346
    :cond_15b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8349
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8350
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8351
    goto/16 :goto_c

    .line 8326
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v6, v7

    :cond_15c
    move v0, v6

    .line 8327
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15d

    .line 8328
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8330
    goto/16 :goto_c

    .line 8331
    :cond_15d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8334
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8335
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8336
    goto/16 :goto_c

    .line 8311
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v6, v7

    :cond_15e
    move v0, v6

    .line 8312
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_15f

    .line 8313
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8315
    goto/16 :goto_c

    .line 8316
    :cond_15f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8319
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8320
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8321
    goto/16 :goto_c

    .line 8296
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v6, v7

    :cond_160
    move v0, v6

    .line 8297
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_161

    .line 8298
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8300
    goto/16 :goto_c

    .line 8301
    :cond_161
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8304
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8305
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8306
    goto/16 :goto_c

    .line 8281
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v6, v7

    :cond_162
    move v0, v6

    .line 8282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_163

    .line 8283
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8285
    goto/16 :goto_c

    .line 8286
    :cond_163
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8289
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8290
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8291
    goto/16 :goto_c

    .line 8266
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v6, v7

    :cond_164
    move v0, v6

    .line 8267
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_165

    .line 8268
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8270
    goto/16 :goto_c

    .line 8271
    :cond_165
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8273
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8274
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8275
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setImsEnable(IZ)V

    .line 8276
    goto/16 :goto_c

    .line 8251
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_166

    move v6, v7

    :cond_166
    move v0, v6

    .line 8252
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_167

    .line 8253
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8254
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8255
    goto/16 :goto_c

    .line 8256
    :cond_167
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8259
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8260
    .local v2, "cause":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->imsDeregNotification(II)V

    .line 8261
    goto/16 :goto_c

    .line 8236
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cause":I
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v6, v7

    :cond_168
    move v0, v6

    .line 8237
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_169

    .line 8238
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8239
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8240
    goto/16 :goto_c

    .line 8241
    :cond_169
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8244
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8245
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->resumeCall(II)V

    .line 8246
    goto/16 :goto_c

    .line 8221
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    move v6, v7

    :cond_16a
    move v0, v6

    .line 8222
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16b

    .line 8223
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8225
    goto/16 :goto_c

    .line 8226
    :cond_16b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8229
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8230
    .restart local v2    # "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->holdCall(II)V

    .line 8231
    goto/16 :goto_c

    .line 8205
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ac
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16c

    move v6, v7

    :cond_16c
    move v0, v6

    .line 8206
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16d

    .line 8207
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8209
    goto/16 :goto_c

    .line 8210
    :cond_16d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8213
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8214
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8215
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8216
    goto/16 :goto_c

    .line 8189
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

    .line 8190
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_16f

    .line 8191
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8193
    goto/16 :goto_c

    .line 8194
    :cond_16f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8197
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8198
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8199
    .local v3, "callId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->videoCallAccept(III)V

    .line 8200
    goto/16 :goto_c

    .line 8172
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

    .line 8173
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_171

    .line 8174
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8175
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8176
    goto/16 :goto_c

    .line 8177
    :cond_171
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8179
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v1

    .line 8180
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v2

    .line 8181
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8182
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8183
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8184
    goto/16 :goto_c

    .line 8155
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

    .line 8156
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_173

    .line 8157
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8159
    goto/16 :goto_c

    .line 8160
    :cond_173
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v1

    .line 8163
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 8164
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8165
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8167
    goto/16 :goto_c

    .line 8138
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

    .line 8139
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_175

    .line 8140
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8141
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8142
    goto/16 :goto_c

    .line 8143
    :cond_175
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v1

    .line 8146
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 8147
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8148
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8149
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8150
    goto/16 :goto_c

    .line 8121
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

    .line 8122
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_177

    .line 8123
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8124
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8125
    goto/16 :goto_c

    .line 8126
    :cond_177
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v1

    .line 8129
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v2

    .line 8130
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8131
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8133
    goto/16 :goto_c

    .line 8105
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_b2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_178

    move v6, v7

    :cond_178
    move v0, v6

    .line 8106
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_179

    .line 8107
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8109
    goto/16 :goto_c

    .line 8110
    :cond_179
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8113
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8114
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8115
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8116
    goto/16 :goto_c

    .line 8082
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

    .line 8083
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v7, :cond_17b

    .line 8084
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8085
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8086
    goto/16 :goto_c

    .line 8087
    :cond_17b
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8090
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8091
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8092
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8093
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8094
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8095
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8096
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8097
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8098
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8099
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

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8100
    goto/16 :goto_c

    .line 8062
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

    .line 8063
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_17d

    .line 8064
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8066
    goto/16 :goto_c

    .line 8067
    :cond_17d
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8070
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8071
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8072
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8073
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 8074
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 8075
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8076
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8077
    goto/16 :goto_c

    .line 8044
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

    .line 8045
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_17e
    if-eq v6, v7, :cond_17f

    .line 8046
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8047
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8048
    goto/16 :goto_c

    .line 8049
    :cond_17f
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8052
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8053
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8054
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 8055
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8056
    .local v11, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 8057
    goto/16 :goto_c

    .line 8029
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

    .line 8030
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_181

    .line 8031
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8033
    goto/16 :goto_c

    .line 8034
    :cond_181
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8037
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8038
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 8039
    goto/16 :goto_c

    .line 8013
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v6, v7

    :cond_182
    move v0, v6

    .line 8014
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_183

    .line 8015
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8017
    goto/16 :goto_c

    .line 8018
    :cond_183
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8021
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 8022
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8023
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 8024
    goto/16 :goto_c

    .line 7998
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v6, v7

    :cond_184
    move v0, v6

    .line 7999
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_185

    .line 8000
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8002
    goto/16 :goto_c

    .line 8003
    :cond_185
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8006
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8007
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->stopKeepalive(II)V

    .line 8008
    goto/16 :goto_c

    .line 7982
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v6, v7

    :cond_186
    move v0, v6

    .line 7983
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_187

    .line 7984
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7986
    goto/16 :goto_c

    .line 7987
    :cond_187
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7990
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 7991
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7992
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 7993
    goto/16 :goto_c

    .line 7968
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v6, v7

    :cond_188
    move v0, v6

    .line 7969
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_189

    .line 7970
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7972
    goto/16 :goto_c

    .line 7973
    :cond_189
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7976
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->stopNetworkScan(I)V

    .line 7977
    goto/16 :goto_c

    .line 7952
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v6, v7

    :cond_18a
    move v0, v6

    .line 7953
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18b

    .line 7954
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7955
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7956
    goto/16 :goto_c

    .line 7957
    :cond_18b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7960
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 7961
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7962
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 7963
    goto/16 :goto_c

    .line 7937
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v6, v7

    :cond_18c
    move v0, v6

    .line 7938
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18d

    .line 7939
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7940
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7941
    goto/16 :goto_c

    .line 7942
    :cond_18d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7944
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7945
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7946
    .local v2, "powerUp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7947
    goto/16 :goto_c

    .line 7921
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v6, v7

    :cond_18e
    move v0, v6

    .line 7922
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_18f

    .line 7923
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7924
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7925
    goto/16 :goto_c

    .line 7926
    :cond_18f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7929
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7930
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7931
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7932
    goto/16 :goto_c

    .line 7908
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v6, v7

    :cond_190
    move v0, v6

    .line 7909
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_191

    .line 7910
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7911
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7912
    goto/16 :goto_c

    .line 7913
    :cond_191
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7915
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->responseAcknowledgement()V

    .line 7916
    goto/16 :goto_c

    .line 7893
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v6, v7

    :cond_192
    move v0, v6

    .line 7894
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_193

    .line 7895
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7896
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7897
    goto/16 :goto_c

    .line 7898
    :cond_193
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7901
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7902
    .local v2, "powerUp":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7903
    goto/16 :goto_c

    .line 7878
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v6, v7

    :cond_194
    move v0, v6

    .line 7879
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_195

    .line 7880
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7881
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7882
    goto/16 :goto_c

    .line 7883
    :cond_195
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7885
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7886
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7887
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setIndicationFilter(II)V

    .line 7888
    goto/16 :goto_c

    .line 7862
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v6, v7

    :cond_196
    move v0, v6

    .line 7863
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_197

    .line 7864
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7865
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7866
    goto/16 :goto_c

    .line 7867
    :cond_197
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7870
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7871
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7872
    .local v3, "state":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7873
    goto/16 :goto_c

    .line 7848
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

    .line 7849
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_199

    .line 7850
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7851
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7852
    goto/16 :goto_c

    .line 7853
    :cond_199
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7855
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7856
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7857
    goto/16 :goto_c

    .line 7831
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v6, v7

    :cond_19a
    move v0, v6

    .line 7832
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19b

    .line 7833
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7834
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7835
    goto/16 :goto_c

    .line 7836
    :cond_19b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7838
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7839
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7840
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7841
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v14}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7842
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7843
    goto/16 :goto_c

    .line 7817
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

    .line 7818
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19d

    .line 7819
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7821
    goto/16 :goto_c

    .line 7822
    :cond_19d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7824
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7825
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7826
    goto/16 :goto_c

    .line 7803
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v6, v7

    :cond_19e
    move v0, v6

    .line 7804
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_19f

    .line 7805
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7807
    goto/16 :goto_c

    .line 7808
    :cond_19f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7811
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->pullLceData(I)V

    .line 7812
    goto/16 :goto_c

    .line 7789
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v6, v7

    :cond_1a0
    move v0, v6

    .line 7790
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a1

    .line 7791
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7793
    goto/16 :goto_c

    .line 7794
    :cond_1a1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7797
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->stopLceService(I)V

    .line 7798
    goto/16 :goto_c

    .line 7773
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v6, v7

    :cond_1a2
    move v0, v6

    .line 7774
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a3

    .line 7775
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7777
    goto/16 :goto_c

    .line 7778
    :cond_1a3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7781
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7782
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7783
    .local v3, "pullMode":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->startLceService(IIZ)V

    .line 7784
    goto/16 :goto_c

    .line 7757
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

    .line 7758
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a5

    .line 7759
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7761
    goto/16 :goto_c

    .line 7762
    :cond_1a5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7765
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7766
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7767
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7768
    goto/16 :goto_c

    .line 7743
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v6, v7

    :cond_1a6
    move v0, v6

    .line 7744
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a7

    .line 7745
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7747
    goto/16 :goto_c

    .line 7748
    :cond_1a7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7750
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7751
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getRadioCapability(I)V

    .line 7752
    goto/16 :goto_c

    .line 7729
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v6, v7

    :cond_1a8
    move v0, v6

    .line 7730
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1a9

    .line 7731
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7733
    goto/16 :goto_c

    .line 7734
    :cond_1a9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7737
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->requestShutdown(I)V

    .line 7738
    goto/16 :goto_c

    .line 7713
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v6, v7

    :cond_1aa
    move v0, v6

    .line 7714
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ab

    .line 7715
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7717
    goto/16 :goto_c

    .line 7718
    :cond_1ab
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7721
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7722
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7723
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7724
    goto/16 :goto_c

    .line 7696
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

    .line 7697
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ad

    .line 7698
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7700
    goto/16 :goto_c

    .line 7701
    :cond_1ad
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7703
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7704
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7705
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7706
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7707
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7708
    goto/16 :goto_c

    .line 7682
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

    .line 7683
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1af

    .line 7684
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7686
    goto/16 :goto_c

    .line 7687
    :cond_1af
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7689
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7690
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getHardwareConfig(I)V

    .line 7691
    goto/16 :goto_c

    .line 7667
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v6, v7

    :cond_1b0
    move v0, v6

    .line 7668
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b1

    .line 7669
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7670
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7671
    goto/16 :goto_c

    .line 7672
    :cond_1b1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7674
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7675
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7676
    .local v2, "allow":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7677
    goto/16 :goto_c

    .line 7651
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v6, v7

    :cond_1b2
    move v0, v6

    .line 7652
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b3

    .line 7653
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7655
    goto/16 :goto_c

    .line 7656
    :cond_1b3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7658
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7659
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7660
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7661
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7662
    goto/16 :goto_c

    .line 7636
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v6, v7

    :cond_1b4
    move v0, v6

    .line 7637
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b5

    .line 7638
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7640
    goto/16 :goto_c

    .line 7641
    :cond_1b5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7644
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7645
    .local v2, "resetType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->nvResetConfig(II)V

    .line 7646
    goto/16 :goto_c

    .line 7621
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v6, v7

    :cond_1b6
    move v0, v6

    .line 7622
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b7

    .line 7623
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7625
    goto/16 :goto_c

    .line 7626
    :cond_1b7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7629
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7630
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7631
    goto/16 :goto_c

    .line 7605
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v6, v7

    :cond_1b8
    move v0, v6

    .line 7606
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1b9

    .line 7607
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7608
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7609
    goto/16 :goto_c

    .line 7610
    :cond_1b9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7613
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7614
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7615
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7616
    goto/16 :goto_c

    .line 7590
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v6, v7

    :cond_1ba
    move v0, v6

    .line 7591
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bb

    .line 7592
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7593
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7594
    goto/16 :goto_c

    .line 7595
    :cond_1bb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7598
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7599
    .local v2, "itemId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->nvReadItem(II)V

    .line 7600
    goto/16 :goto_c

    .line 7574
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v6, v7

    :cond_1bc
    move v0, v6

    .line 7575
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bd

    .line 7576
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7577
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7578
    goto/16 :goto_c

    .line 7579
    :cond_1bd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7581
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7582
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7583
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7584
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7585
    goto/16 :goto_c

    .line 7559
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v6, v7

    :cond_1be
    move v0, v6

    .line 7560
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1bf

    .line 7561
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7562
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7563
    goto/16 :goto_c

    .line 7564
    :cond_1bf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7567
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7568
    .local v2, "channelId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7569
    goto/16 :goto_c

    .line 7543
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v6, v7

    :cond_1c0
    move v0, v6

    .line 7544
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c1

    .line 7545
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7546
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7547
    goto/16 :goto_c

    .line 7548
    :cond_1c1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7551
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7552
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7553
    .local v3, "p2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7554
    goto/16 :goto_c

    .line 7527
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

    .line 7528
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c3

    .line 7529
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7530
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7531
    goto/16 :goto_c

    .line 7532
    :cond_1c3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7535
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7536
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7537
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7538
    goto/16 :goto_c

    .line 7511
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v6, v7

    :cond_1c4
    move v0, v6

    .line 7512
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c5

    .line 7513
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7514
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7515
    goto/16 :goto_c

    .line 7516
    :cond_1c5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7519
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7520
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7521
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7522
    goto/16 :goto_c

    .line 7497
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v6, v7

    :cond_1c6
    move v0, v6

    .line 7498
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c7

    .line 7499
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7500
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7501
    goto/16 :goto_c

    .line 7502
    :cond_1c7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7505
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7506
    goto/16 :goto_c

    .line 7479
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v6, v7

    :cond_1c8
    move v0, v6

    .line 7480
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1c9

    .line 7481
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7483
    goto/16 :goto_c

    .line 7484
    :cond_1c9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7487
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7488
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7489
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7490
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7491
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7492
    goto/16 :goto_c

    .line 7464
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

    .line 7465
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cb

    .line 7466
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7468
    goto/16 :goto_c

    .line 7469
    :cond_1cb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7472
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7473
    .local v2, "rate":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7474
    goto/16 :goto_c

    .line 7450
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v6, v7

    :cond_1cc
    move v0, v6

    .line 7451
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cd

    .line 7452
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7453
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7454
    goto/16 :goto_c

    .line 7455
    :cond_1cd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7458
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getCellInfoList(I)V

    .line 7459
    goto/16 :goto_c

    .line 7436
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v6, v7

    :cond_1ce
    move v0, v6

    .line 7437
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1cf

    .line 7438
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7440
    goto/16 :goto_c

    .line 7441
    :cond_1cf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7444
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7445
    goto/16 :goto_c

    .line 7421
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_de
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d0

    move v6, v7

    :cond_1d0
    move v0, v6

    .line 7422
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d1

    .line 7423
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7425
    goto/16 :goto_c

    .line 7426
    :cond_1d1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7429
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7430
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7431
    goto/16 :goto_c

    .line 7405
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v6, v7

    :cond_1d2
    move v0, v6

    .line 7406
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d3

    .line 7407
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7408
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7409
    goto/16 :goto_c

    .line 7410
    :cond_1d3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7412
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7413
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7414
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7415
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7416
    goto/16 :goto_c

    .line 7390
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

    .line 7391
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d5

    .line 7392
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7393
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7394
    goto/16 :goto_c

    .line 7395
    :cond_1d5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7398
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7399
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7400
    goto/16 :goto_c

    .line 7376
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v6, v7

    :cond_1d6
    move v0, v6

    .line 7377
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d7

    .line 7378
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7380
    goto/16 :goto_c

    .line 7381
    :cond_1d7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7384
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7385
    goto/16 :goto_c

    .line 7362
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d8

    move v6, v7

    :cond_1d8
    move v0, v6

    .line 7363
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1d9

    .line 7364
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7365
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7366
    goto/16 :goto_c

    .line 7367
    :cond_1d9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7370
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7371
    goto/16 :goto_c

    .line 7347
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v6, v7

    :cond_1da
    move v0, v6

    .line 7348
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1db

    .line 7349
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7350
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7351
    goto/16 :goto_c

    .line 7352
    :cond_1db
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7355
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7356
    .local v2, "available":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7357
    goto/16 :goto_c

    .line 7332
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v6, v7

    :cond_1dc
    move v0, v6

    .line 7333
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1dd

    .line 7334
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7336
    goto/16 :goto_c

    .line 7337
    :cond_1dd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7340
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7341
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7342
    goto/16 :goto_c

    .line 7318
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v6, v7

    :cond_1de
    move v0, v6

    .line 7319
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1df

    .line 7320
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7322
    goto/16 :goto_c

    .line 7323
    :cond_1df
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7326
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getSmscAddress(I)V

    .line 7327
    goto/16 :goto_c

    .line 7304
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v6, v7

    :cond_1e0
    move v0, v6

    .line 7305
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e1

    .line 7306
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7308
    goto/16 :goto_c

    .line 7309
    :cond_1e1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7312
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7313
    goto/16 :goto_c

    .line 7290
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v6, v7

    :cond_1e2
    move v0, v6

    .line 7291
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e3

    .line 7292
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7293
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7294
    goto/16 :goto_c

    .line 7295
    :cond_1e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7298
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7299
    goto/16 :goto_c

    .line 7275
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v6, v7

    :cond_1e4
    move v0, v6

    .line 7276
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e5

    .line 7277
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7279
    goto/16 :goto_c

    .line 7280
    :cond_1e5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7282
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7283
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7284
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7285
    goto/16 :goto_c

    .line 7259
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v6, v7

    :cond_1e6
    move v0, v6

    .line 7260
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e7

    .line 7261
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7262
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7263
    goto/16 :goto_c

    .line 7264
    :cond_1e7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7267
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7268
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7269
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7270
    goto/16 :goto_c

    .line 7245
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v6, v7

    :cond_1e8
    move v0, v6

    .line 7246
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1e9

    .line 7247
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7248
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7249
    goto/16 :goto_c

    .line 7250
    :cond_1e9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7253
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getCDMASubscription(I)V

    .line 7254
    goto/16 :goto_c

    .line 7230
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_eb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ea

    move v6, v7

    :cond_1ea
    move v0, v6

    .line 7231
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1eb

    .line 7232
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7234
    goto/16 :goto_c

    .line 7235
    :cond_1eb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7238
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7239
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7240
    goto/16 :goto_c

    .line 7215
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v6, v7

    :cond_1ec
    move v0, v6

    .line 7216
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ed

    .line 7217
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7219
    goto/16 :goto_c

    .line 7220
    :cond_1ed
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7223
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7224
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7225
    goto/16 :goto_c

    .line 7201
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v6, v7

    :cond_1ee
    move v0, v6

    .line 7202
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ef

    .line 7203
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7205
    goto/16 :goto_c

    .line 7206
    :cond_1ef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7208
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7209
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7210
    goto/16 :goto_c

    .line 7186
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v6, v7

    :cond_1f0
    move v0, v6

    .line 7187
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f1

    .line 7188
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7190
    goto/16 :goto_c

    .line 7191
    :cond_1f1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7194
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7195
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7196
    goto/16 :goto_c

    .line 7171
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v6, v7

    :cond_1f2
    move v0, v6

    .line 7172
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f3

    .line 7173
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7174
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7175
    goto/16 :goto_c

    .line 7176
    :cond_1f3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7178
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7179
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7180
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7181
    goto/16 :goto_c

    .line 7157
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v6, v7

    :cond_1f4
    move v0, v6

    .line 7158
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f5

    .line 7159
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7161
    goto/16 :goto_c

    .line 7162
    :cond_1f5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7164
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7165
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7166
    goto/16 :goto_c

    .line 7141
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v6, v7

    :cond_1f6
    move v0, v6

    .line 7142
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f7

    .line 7143
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7145
    goto/16 :goto_c

    .line 7146
    :cond_1f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7149
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7150
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7151
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7152
    goto/16 :goto_c

    .line 7125
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v6, v7

    :cond_1f8
    move v0, v6

    .line 7126
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1f9

    .line 7127
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7129
    goto/16 :goto_c

    .line 7130
    :cond_1f9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7133
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7134
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7135
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7136
    goto/16 :goto_c

    .line 7108
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v6, v7

    :cond_1fa
    move v0, v6

    .line 7109
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1fb

    .line 7110
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7112
    goto/16 :goto_c

    .line 7113
    :cond_1fb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7116
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7117
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7118
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7119
    .local v4, "off":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7120
    goto/16 :goto_c

    .line 7093
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

    .line 7094
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1fd

    .line 7095
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7097
    goto/16 :goto_c

    .line 7098
    :cond_1fd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7101
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7102
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7103
    goto/16 :goto_c

    .line 7079
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v6, v7

    :cond_1fe
    move v0, v6

    .line 7080
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_1ff

    .line 7081
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7083
    goto/16 :goto_c

    .line 7084
    :cond_1ff
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7087
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 7088
    goto/16 :goto_c

    .line 7064
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v6, v7

    :cond_200
    move v0, v6

    .line 7065
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_201

    .line 7066
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7068
    goto/16 :goto_c

    .line 7069
    :cond_201
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7072
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7073
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 7074
    goto/16 :goto_c

    .line 7050
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v6, v7

    :cond_202
    move v0, v6

    .line 7051
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_203

    .line 7052
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7053
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7054
    goto/16 :goto_c

    .line 7055
    :cond_203
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7057
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7058
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getTTYMode(I)V

    .line 7059
    goto/16 :goto_c

    .line 7035
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v6, v7

    :cond_204
    move v0, v6

    .line 7036
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_205

    .line 7037
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7038
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7039
    goto/16 :goto_c

    .line 7040
    :cond_205
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7042
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7043
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7044
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setTTYMode(II)V

    .line 7045
    goto/16 :goto_c

    .line 7021
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v6, v7

    :cond_206
    move v0, v6

    .line 7022
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_207

    .line 7023
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7025
    goto/16 :goto_c

    .line 7026
    :cond_207
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7029
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 7030
    goto/16 :goto_c

    .line 7006
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v6, v7

    :cond_208
    move v0, v6

    .line 7007
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_209

    .line 7008
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7010
    goto/16 :goto_c

    .line 7011
    :cond_209
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7014
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7015
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 7016
    goto/16 :goto_c

    .line 6991
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v6, v7

    :cond_20a
    move v0, v6

    .line 6992
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20b

    .line 6993
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6994
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6995
    goto/16 :goto_c

    .line 6996
    :cond_20b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6999
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7000
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 7001
    goto/16 :goto_c

    .line 6976
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v6, v7

    :cond_20c
    move v0, v6

    .line 6977
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20d

    .line 6978
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6980
    goto/16 :goto_c

    .line 6981
    :cond_20d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6984
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6985
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 6986
    goto/16 :goto_c

    .line 6962
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v6, v7

    :cond_20e
    move v0, v6

    .line 6963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_20f

    .line 6964
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6966
    goto/16 :goto_c

    .line 6967
    :cond_20f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6970
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getNeighboringCids(I)V

    .line 6971
    goto/16 :goto_c

    .line 6948
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v6, v7

    :cond_210
    move v0, v6

    .line 6949
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_211

    .line 6950
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6952
    goto/16 :goto_c

    .line 6953
    :cond_211
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6956
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 6957
    goto/16 :goto_c

    .line 6933
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v6, v7

    :cond_212
    move v0, v6

    .line 6934
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_213

    .line 6935
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6936
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6937
    goto/16 :goto_c

    .line 6938
    :cond_213
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6941
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6942
    .local v2, "nwType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6943
    goto/16 :goto_c

    .line 6919
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_100
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_214

    move v6, v7

    :cond_214
    move v0, v6

    .line 6920
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_215

    .line 6921
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6923
    goto/16 :goto_c

    .line 6924
    :cond_215
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6927
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6928
    goto/16 :goto_c

    .line 6904
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_101
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_216

    move v6, v7

    :cond_216
    move v0, v6

    .line 6905
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_217

    .line 6906
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6908
    goto/16 :goto_c

    .line 6909
    :cond_217
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6912
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6913
    .local v2, "accept":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6914
    goto/16 :goto_c

    .line 6889
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_102
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_218

    move v6, v7

    :cond_218
    move v0, v6

    .line 6890
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_219

    .line 6891
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6892
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6893
    goto/16 :goto_c

    .line 6894
    :cond_219
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6897
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6898
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6899
    goto/16 :goto_c

    .line 6874
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_103
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21a

    move v6, v7

    :cond_21a
    move v0, v6

    .line 6875
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21b

    .line 6876
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6878
    goto/16 :goto_c

    .line 6879
    :cond_21b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6882
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6883
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6884
    goto/16 :goto_c

    .line 6860
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_104
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21c

    move v6, v7

    :cond_21c
    move v0, v6

    .line 6861
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21d

    .line 6862
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6864
    goto/16 :goto_c

    .line 6865
    :cond_21d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6868
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6869
    goto/16 :goto_c

    .line 6845
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_105
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21e

    move v6, v7

    :cond_21e
    move v0, v6

    .line 6846
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_21f

    .line 6847
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6848
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6849
    goto/16 :goto_c

    .line 6850
    :cond_21f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6853
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6854
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setBandMode(II)V

    .line 6855
    goto/16 :goto_c

    .line 6830
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_106
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_220

    move v6, v7

    :cond_220
    move v0, v6

    .line 6831
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_221

    .line 6832
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6833
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6834
    goto/16 :goto_c

    .line 6835
    :cond_221
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6838
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6839
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6840
    goto/16 :goto_c

    .line 6814
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_107
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_222

    move v6, v7

    :cond_222
    move v0, v6

    .line 6815
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_223

    .line 6816
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6818
    goto/16 :goto_c

    .line 6819
    :cond_223
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6822
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6823
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6824
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6825
    goto/16 :goto_c

    .line 6799
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_108
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_224

    move v6, v7

    :cond_224
    move v0, v6

    .line 6800
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_225

    .line 6801
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6802
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6803
    goto/16 :goto_c

    .line 6804
    :cond_225
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6807
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6808
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6809
    goto/16 :goto_c

    .line 6785
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_109
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_226

    move v6, v7

    :cond_226
    move v0, v6

    .line 6786
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_227

    .line 6787
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6789
    goto/16 :goto_c

    .line 6790
    :cond_227
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6793
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getDataCallList(I)V

    .line 6794
    goto/16 :goto_c

    .line 6771
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_228

    move v6, v7

    :cond_228
    move v0, v6

    .line 6772
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_229

    .line 6773
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6775
    goto/16 :goto_c

    .line 6776
    :cond_229
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6779
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getClip(I)V

    .line 6780
    goto/16 :goto_c

    .line 6757
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22a

    move v6, v7

    :cond_22a
    move v0, v6

    .line 6758
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22b

    .line 6759
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6760
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6761
    goto/16 :goto_c

    .line 6762
    :cond_22b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6765
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getMute(I)V

    .line 6766
    goto/16 :goto_c

    .line 6742
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22c

    move v6, v7

    :cond_22c
    move v0, v6

    .line 6743
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22d

    .line 6744
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6746
    goto/16 :goto_c

    .line 6747
    :cond_22d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6749
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6750
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6751
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setMute(IZ)V

    .line 6752
    goto/16 :goto_c

    .line 6727
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_10d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22e

    move v6, v7

    :cond_22e
    move v0, v6

    .line 6728
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_22f

    .line 6729
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6731
    goto/16 :goto_c

    .line 6732
    :cond_22f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6735
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6736
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->separateConnection(II)V

    .line 6737
    goto/16 :goto_c

    .line 6713
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_10e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_230

    move v6, v7

    :cond_230
    move v0, v6

    .line 6714
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_231

    .line 6715
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6717
    goto/16 :goto_c

    .line 6718
    :cond_231
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6721
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getBasebandVersion(I)V

    .line 6722
    goto/16 :goto_c

    .line 6699
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_232

    move v6, v7

    :cond_232
    move v0, v6

    .line 6700
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_233

    .line 6701
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6703
    goto/16 :goto_c

    .line 6704
    :cond_233
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6707
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->stopDtmf(I)V

    .line 6708
    goto/16 :goto_c

    .line 6684
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_110
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_234

    move v6, v7

    :cond_234
    move v0, v6

    .line 6685
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_235

    .line 6686
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6688
    goto/16 :goto_c

    .line 6689
    :cond_235
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6691
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6692
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6693
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6694
    goto/16 :goto_c

    .line 6670
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_111
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_236

    move v6, v7

    :cond_236
    move v0, v6

    .line 6671
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_237

    .line 6672
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6674
    goto/16 :goto_c

    .line 6675
    :cond_237
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6678
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6679
    goto/16 :goto_c

    .line 6655
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_112
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_238

    move v6, v7

    :cond_238
    move v0, v6

    .line 6656
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_239

    .line 6657
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6659
    goto/16 :goto_c

    .line 6660
    :cond_239
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6663
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6664
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6665
    goto/16 :goto_c

    .line 6641
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_113
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23a

    move v6, v7

    :cond_23a
    move v0, v6

    .line 6642
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23b

    .line 6643
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6645
    goto/16 :goto_c

    .line 6646
    :cond_23b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6649
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6650
    goto/16 :goto_c

    .line 6627
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_114
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23c

    move v6, v7

    :cond_23c
    move v0, v6

    .line 6628
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23d

    .line 6629
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6631
    goto/16 :goto_c

    .line 6632
    :cond_23d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6635
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6636
    goto/16 :goto_c

    .line 6610
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_115
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23e

    move v6, v7

    :cond_23e
    move v0, v6

    .line 6611
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_23f

    .line 6612
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6614
    goto/16 :goto_c

    .line 6615
    :cond_23f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6618
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6619
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6620
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6621
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6622
    goto/16 :goto_c

    .line 6591
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

    .line 6592
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_241

    .line 6593
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6594
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6595
    goto/16 :goto_c

    .line 6596
    :cond_241
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6599
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6600
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6601
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6602
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6603
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6604
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6605
    goto/16 :goto_c

    .line 6573
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

    .line 6574
    .restart local v6    # "_hidl_is_oneway":Z
    :cond_242
    if-eq v6, v7, :cond_243

    .line 6575
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6577
    goto/16 :goto_c

    .line 6578
    :cond_243
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6580
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6581
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6582
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6583
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6584
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6585
    .local v11, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6586
    goto/16 :goto_c

    .line 6557
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

    .line 6558
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_245

    .line 6559
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6560
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6561
    goto/16 :goto_c

    .line 6562
    :cond_245
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6565
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6566
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6567
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6568
    goto/16 :goto_c

    .line 6543
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

    .line 6544
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_247

    .line 6545
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6546
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6547
    goto/16 :goto_c

    .line 6548
    :cond_247
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6551
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->acceptCall(I)V

    .line 6552
    goto/16 :goto_c

    .line 6527
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_248

    move v6, v7

    :cond_248
    move v0, v6

    .line 6528
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_249

    .line 6529
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6530
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6531
    goto/16 :goto_c

    .line 6532
    :cond_249
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6535
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6536
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6537
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6538
    goto/16 :goto_c

    .line 6511
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

    .line 6512
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24b

    .line 6513
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6514
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6515
    goto/16 :goto_c

    .line 6516
    :cond_24b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6519
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6520
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6521
    .local v3, "serviceClass":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6522
    goto/16 :goto_c

    .line 6496
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

    .line 6497
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24d

    .line 6498
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6499
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6500
    goto/16 :goto_c

    .line 6501
    :cond_24d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6503
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6504
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6505
    .local v2, "serviceClass":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getCallWaiting(II)V

    .line 6506
    goto/16 :goto_c

    .line 6480
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_11d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24e

    move v6, v7

    :cond_24e
    move v0, v6

    .line 6481
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_24f

    .line 6482
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6483
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6484
    goto/16 :goto_c

    .line 6485
    :cond_24f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6488
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6489
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6490
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6491
    goto/16 :goto_c

    .line 6464
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_250

    move v6, v7

    :cond_250
    move v0, v6

    .line 6465
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_251

    .line 6466
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6468
    goto/16 :goto_c

    .line 6469
    :cond_251
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6472
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6473
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6474
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6475
    goto/16 :goto_c

    .line 6449
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_252

    move v6, v7

    :cond_252
    move v0, v6

    .line 6450
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_253

    .line 6451
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6452
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6453
    goto/16 :goto_c

    .line 6454
    :cond_253
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6457
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6458
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setClir(II)V

    .line 6459
    goto/16 :goto_c

    .line 6435
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_120
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_254

    move v6, v7

    :cond_254
    move v0, v6

    .line 6436
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_255

    .line 6437
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6438
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6439
    goto/16 :goto_c

    .line 6440
    :cond_255
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6443
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getClir(I)V

    .line 6444
    goto/16 :goto_c

    .line 6421
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_121
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_256

    move v6, v7

    :cond_256
    move v0, v6

    .line 6422
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_257

    .line 6423
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6425
    goto/16 :goto_c

    .line 6426
    :cond_257
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6429
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6430
    goto/16 :goto_c

    .line 6406
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_122
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_258

    move v6, v7

    :cond_258
    move v0, v6

    .line 6407
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_259

    .line 6408
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6410
    goto/16 :goto_c

    .line 6411
    :cond_259
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6414
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6415
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6416
    goto/16 :goto_c

    .line 6390
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_123
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25a

    move v6, v7

    :cond_25a
    move v0, v6

    .line 6391
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25b

    .line 6392
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6393
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6394
    goto/16 :goto_c

    .line 6395
    :cond_25b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6398
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6399
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6400
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6401
    goto/16 :goto_c

    .line 6370
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_124
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25c

    move v6, v7

    :cond_25c
    move v8, v6

    .line 6371
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v7, :cond_25d

    .line 6372
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6374
    goto/16 :goto_c

    .line 6375
    :cond_25d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6378
    .restart local v7    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6379
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6380
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6382
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6383
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6384
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6385
    goto/16 :goto_c

    .line 6354
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

    .line 6355
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_25f

    .line 6356
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6358
    goto/16 :goto_c

    .line 6359
    :cond_25f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6362
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6363
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6364
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6365
    goto/16 :goto_c

    .line 6338
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_126
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_260

    move v6, v7

    :cond_260
    move v0, v6

    .line 6339
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_261

    .line 6340
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6341
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6342
    goto/16 :goto_c

    .line 6343
    :cond_261
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6346
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6347
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6348
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6349
    goto/16 :goto_c

    .line 6323
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_127
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_262

    move v6, v7

    :cond_262
    move v0, v6

    .line 6324
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_263

    .line 6325
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6326
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6327
    goto/16 :goto_c

    .line 6328
    :cond_263
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6330
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6331
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6332
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6333
    goto/16 :goto_c

    .line 6308
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_128
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_264

    move v6, v7

    :cond_264
    move v0, v6

    .line 6309
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_265

    .line 6310
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6311
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6312
    goto/16 :goto_c

    .line 6313
    :cond_265
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6316
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6317
    .local v2, "on":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setRadioPower(IZ)V

    .line 6318
    goto/16 :goto_c

    .line 6294
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_129
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_266

    move v6, v7

    :cond_266
    move v0, v6

    .line 6295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_267

    .line 6296
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6298
    goto/16 :goto_c

    .line 6299
    :cond_267
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6302
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getOperator(I)V

    .line 6303
    goto/16 :goto_c

    .line 6280
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_268

    move v6, v7

    :cond_268
    move v0, v6

    .line 6281
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_269

    .line 6282
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6283
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6284
    goto/16 :goto_c

    .line 6285
    :cond_269
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6287
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6288
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6289
    goto/16 :goto_c

    .line 6266
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26a

    move v6, v7

    :cond_26a
    move v0, v6

    .line 6267
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26b

    .line 6268
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6270
    goto/16 :goto_c

    .line 6271
    :cond_26b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6273
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6274
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6275
    goto/16 :goto_c

    .line 6252
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26c

    move v6, v7

    :cond_26c
    move v0, v6

    .line 6253
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26d

    .line 6254
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6256
    goto/16 :goto_c

    .line 6257
    :cond_26d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6260
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getSignalStrength(I)V

    .line 6261
    goto/16 :goto_c

    .line 6238
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26e

    move v6, v7

    :cond_26e
    move v0, v6

    .line 6239
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_26f

    .line 6240
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6241
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6242
    goto/16 :goto_c

    .line 6243
    :cond_26f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6245
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6246
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6247
    goto/16 :goto_c

    .line 6224
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_270

    move v6, v7

    :cond_270
    move v0, v6

    .line 6225
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_271

    .line 6226
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6227
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6228
    goto/16 :goto_c

    .line 6229
    :cond_271
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6232
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->rejectCall(I)V

    .line 6233
    goto/16 :goto_c

    .line 6210
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_272

    move v6, v7

    :cond_272
    move v0, v6

    .line 6211
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_273

    .line 6212
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6213
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6214
    goto/16 :goto_c

    .line 6215
    :cond_273
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6217
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6218
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->conference(I)V

    .line 6219
    goto/16 :goto_c

    .line 6196
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_130
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_274

    move v6, v7

    :cond_274
    move v0, v6

    .line 6197
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_275

    .line 6198
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6200
    goto/16 :goto_c

    .line 6201
    :cond_275
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6204
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6205
    goto/16 :goto_c

    .line 6182
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_131
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_276

    move v6, v7

    :cond_276
    move v0, v6

    .line 6183
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_277

    .line 6184
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6185
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6186
    goto/16 :goto_c

    .line 6187
    :cond_277
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6189
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6190
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6191
    goto/16 :goto_c

    .line 6168
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_132
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_278

    move v6, v7

    :cond_278
    move v0, v6

    .line 6169
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_279

    .line 6170
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6172
    goto/16 :goto_c

    .line 6173
    :cond_279
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6176
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6177
    goto/16 :goto_c

    .line 6153
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_133
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27a

    move v6, v7

    :cond_27a
    move v0, v6

    .line 6154
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27b

    .line 6155
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6157
    goto/16 :goto_c

    .line 6158
    :cond_27b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6161
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6162
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->hangup(II)V

    .line 6163
    goto/16 :goto_c

    .line 6138
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_134
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27c

    move v6, v7

    :cond_27c
    move v0, v6

    .line 6139
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27d

    .line 6140
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6141
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6142
    goto/16 :goto_c

    .line 6143
    :cond_27d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6146
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6147
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6148
    goto/16 :goto_c

    .line 6122
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_135
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27e

    move v6, v7

    :cond_27e
    move v0, v6

    .line 6123
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_27f

    .line 6124
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6126
    goto/16 :goto_c

    .line 6127
    :cond_27f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6130
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6131
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6132
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6133
    goto/16 :goto_c

    .line 6108
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_136
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_280

    move v6, v7

    :cond_280
    move v0, v6

    .line 6109
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_281

    .line 6110
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6111
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6112
    goto/16 :goto_c

    .line 6113
    :cond_281
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6115
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6116
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getCurrentCalls(I)V

    .line 6117
    goto/16 :goto_c

    .line 6093
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_137
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_282

    move v6, v7

    :cond_282
    move v0, v6

    .line 6094
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_283

    .line 6095
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6097
    goto/16 :goto_c

    .line 6098
    :cond_283
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6101
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6102
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6103
    goto/16 :goto_c

    .line 6076
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_138
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_284

    move v6, v7

    :cond_284
    move v0, v6

    .line 6077
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_285

    .line 6078
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6079
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6080
    goto/16 :goto_c

    .line 6081
    :cond_285
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6083
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6084
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6085
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6086
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6087
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6088
    goto/16 :goto_c

    .line 6059
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

    .line 6060
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_287

    .line 6061
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6063
    goto/16 :goto_c

    .line 6064
    :cond_287
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6067
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6068
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6069
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6070
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6071
    goto/16 :goto_c

    .line 6042
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

    .line 6043
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_289

    .line 6044
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6045
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6046
    goto/16 :goto_c

    .line 6047
    :cond_289
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6050
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6051
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6052
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6053
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6054
    goto/16 :goto_c

    .line 6026
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

    .line 6027
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28b

    .line 6028
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6029
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6030
    goto/16 :goto_c

    .line 6031
    :cond_28b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6034
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6035
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6036
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6037
    goto/16 :goto_c

    .line 6009
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

    .line 6010
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28d

    .line 6011
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6012
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6013
    goto/16 :goto_c

    .line 6014
    :cond_28d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6017
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6018
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6019
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6020
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6021
    goto/16 :goto_c

    .line 5993
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

    .line 5994
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_28f

    .line 5995
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5997
    goto :goto_c

    .line 5998
    :cond_28f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6001
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6002
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6003
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6004
    goto :goto_c

    .line 5979
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

    .line 5980
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v7, :cond_291

    .line 5981
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5982
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5983
    goto :goto_c

    .line 5984
    :cond_291
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5987
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->getIccCardStatus(I)V

    .line 5988
    goto :goto_c

    .line 5962
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

    .line 5963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_293

    .line 5964
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5966
    goto :goto_c

    .line 5967
    :cond_293
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 5970
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 5971
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 5972
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5973
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5974
    nop

    .line 11051
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

    .line 5913
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5941
    const-string v0, "vendor.mediatek.hardware.radio@3.9::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5942
    return-object p0

    .line 5944
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

    .line 5948
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5949
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5903
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_9/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5935
    const/4 v0, 0x1

    return v0
.end method
