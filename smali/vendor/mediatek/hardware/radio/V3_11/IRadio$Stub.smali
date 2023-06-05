.class public abstract Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_11/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_11/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5885
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 5888
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

    .line 5913
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 5962
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 5963
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 5964
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 5965
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 5966
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

    .line 5925
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xe

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

    new-array v3, v2, [B

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        -0x28t
        -0x5dt
        0x3t
        -0x16t
        0x58t
        0x63t
        0x7t
        0x42t
        0x53t
        -0xdt
        -0x2et
        -0x52t
        0x3at
        -0x19t
        -0x34t
        0x75t
        0x57t
        -0x55t
        0x5dt
        0x8t
        -0x3dt
        0x7bt
        0x56t
        -0x6et
        -0x74t
        0x3dt
        0xat
        0x30t
        -0x30t
        0x58t
        0x51t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x1bt
        0x7et
        -0x1bt
        0x56t
        0x48t
        0x19t
        -0x4dt
        -0x13t
        0x2t
        0x48t
        -0x13t
        -0x7dt
        -0x79t
        -0x7et
        0x77t
        -0x57t
        -0x20t
        0x56t
        0x60t
        0x12t
        0x76t
        -0x5ct
        -0x1bt
        -0x2t
        -0x52t
        0x70t
        -0x4et
        -0x7et
        -0x5t
        0x72t
        0x4ct
        -0x26t
    .end array-data

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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

    :array_9
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

    :array_a
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

    :array_b
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

    :array_c
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

    :array_d
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
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5893
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.11::IRadio"

    const-string v2, "vendor.mediatek.hardware.radio@3.10::IRadio"

    const-string v3, "vendor.mediatek.hardware.radio@3.9::IRadio"

    const-string v4, "vendor.mediatek.hardware.radio@3.8::IRadio"

    const-string v5, "vendor.mediatek.hardware.radio@3.7::IRadio"

    const-string v6, "vendor.mediatek.hardware.radio@3.6::IRadio"

    const-string v7, "vendor.mediatek.hardware.radio@3.5::IRadio"

    const-string v8, "vendor.mediatek.hardware.radio@3.4::IRadio"

    const-string v9, "vendor.mediatek.hardware.radio@3.3::IRadio"

    const-string v10, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v11, "android.hardware.radio@1.2::IRadio"

    const-string v12, "android.hardware.radio@1.1::IRadio"

    const-string v13, "android.hardware.radio@1.0::IRadio"

    const-string v14, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 5919
    const-string v0, "vendor.mediatek.hardware.radio@3.11::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 5950
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 5972
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 5974
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

    .line 6002
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v0, "vendor.mediatek.hardware.radio@3.10::IRadio"

    const-string v1, "vendor.mediatek.hardware.radio@3.5::IRadio"

    const-string v2, "android.hardware.radio@1.2::IRadio"

    const-string v3, "android.hardware.radio@1.1::IRadio"

    const-string v4, "android.hardware.radio@1.0::IRadio"

    const-string v5, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_c

    .line 11119
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v7, v8

    :cond_0
    move v0, v7

    .line 11120
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_298

    .line 11121
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11123
    goto/16 :goto_c

    .line 11106
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v7, v8

    :cond_1
    move v1, v7

    .line 11107
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v8, :cond_2

    .line 11108
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11110
    goto/16 :goto_c

    .line 11111
    :cond_2
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11113
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->notifySyspropsChanged()V

    .line 11114
    goto/16 :goto_c

    .line 11090
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v8, v7

    :goto_0
    move v1, v8

    .line 11091
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 11092
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11093
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11094
    goto/16 :goto_c

    .line 11095
    :cond_4
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11097
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 11098
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11099
    invoke-virtual {v0, v15}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 11100
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11101
    goto/16 :goto_c

    .line 11075
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v8, v7

    :goto_1
    move v1, v8

    .line 11076
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 11077
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11078
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11079
    goto/16 :goto_c

    .line 11080
    :cond_6
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11082
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->ping()V

    .line 11083
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11085
    goto/16 :goto_c

    .line 11065
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v7, v8

    :cond_7
    move v0, v7

    .line 11066
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_298

    .line 11067
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11068
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11069
    goto/16 :goto_c

    .line 11052
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v7, v8

    :cond_8
    move v1, v7

    .line 11053
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v8, :cond_9

    .line 11054
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11056
    goto/16 :goto_c

    .line 11057
    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11059
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setHALInstrumentation()V

    .line 11060
    goto/16 :goto_c

    .line 11013
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v8, v7

    :goto_2
    move v1, v8

    .line 11014
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 11015
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11017
    goto/16 :goto_c

    .line 11018
    :cond_b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11020
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 11021
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11023
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 11025
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11026
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 11027
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 11028
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 11029
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 11031
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 11032
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 11034
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 11038
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 11039
    nop

    .line 11029
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 11035
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 11042
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 11044
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 11046
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11047
    goto/16 :goto_c

    .line 10997
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move v8, v7

    :goto_4
    move v1, v8

    .line 10998
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 10999
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11000
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11001
    goto/16 :goto_c

    .line 11002
    :cond_f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11004
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 11005
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11006
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 11007
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11008
    goto/16 :goto_c

    .line 10980
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v8, v7

    :goto_5
    move v1, v8

    .line 10981
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 10982
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10984
    goto/16 :goto_c

    .line 10985
    :cond_11
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 10988
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10989
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 10990
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10991
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10992
    goto/16 :goto_c

    .line 10964
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move v8, v7

    :goto_6
    move v1, v8

    .line 10965
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 10966
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10968
    goto/16 :goto_c

    .line 10969
    :cond_13
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10971
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 10972
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10973
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 10974
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10975
    goto/16 :goto_c

    .line 10948
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_14

    move v7, v8

    :cond_14
    move v1, v7

    .line 10949
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v8, :cond_15

    .line 10950
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10952
    goto/16 :goto_c

    .line 10953
    :cond_15
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 10956
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10957
    .local v2, "gsmIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10958
    .local v3, "cause":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->hangupWithCause(III)V

    .line 10959
    goto/16 :goto_c

    .line 10930
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    .end local v3    # "cause":I
    :pswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_16

    move v7, v8

    .line 10931
    .local v7, "_hidl_is_oneway":Z
    :cond_16
    if-eq v7, v8, :cond_17

    .line 10932
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10933
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10934
    goto/16 :goto_c

    .line 10935
    :cond_17
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 10938
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10939
    .local v8, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10940
    .local v9, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10941
    .local v10, "seqNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10942
    .local v11, "cause":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCallIndicationWithCause(IIIII)V

    .line 10943
    goto/16 :goto_c

    .line 10914
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "mode":I
    .end local v9    # "callId":I
    .end local v10    # "seqNumber":I
    .end local v11    # "cause":I
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v7, v8

    :cond_18
    move v0, v7

    .line 10915
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_19

    .line 10916
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10918
    goto/16 :goto_c

    .line 10919
    :cond_19
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10922
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10923
    .local v2, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 10924
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 10925
    goto/16 :goto_c

    .line 10899
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reqType":I
    .end local v3    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v7, v8

    :cond_1a
    move v0, v7

    .line 10900
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1b

    .line 10901
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10903
    goto/16 :goto_c

    .line 10904
    :cond_1b
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;

    move-result-object v1

    .line 10907
    .local v1, "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;

    move-result-object v2

    .line 10908
    .local v2, "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;)V

    .line 10909
    goto/16 :goto_c

    .line 10883
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "sublockResp":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockResponse;
    .end local v2    # "sublockInd":Lvendor/mediatek/hardware/radio/V3_5/ISubsidyLockIndication;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v7, v8

    :cond_1c
    move v0, v7

    .line 10884
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1d

    .line 10885
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10886
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10887
    goto/16 :goto_c

    .line 10888
    :cond_1d
    const-string v1, "vendor.mediatek.hardware.radio@3.4::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10891
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10892
    .local v2, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10893
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->hangupWithReason(III)V

    .line 10894
    goto/16 :goto_c

    .line 10868
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    .end local v3    # "reason":I
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v7, v8

    :cond_1e
    move v0, v7

    .line 10869
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1f

    .line 10870
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10872
    goto/16 :goto_c

    .line 10873
    :cond_1f
    const-string v1, "vendor.mediatek.hardware.radio@3.3::IRadio"

    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10875
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10876
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10877
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->notifyEPDGScreenState(II)V

    .line 10878
    goto/16 :goto_c

    .line 10853
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v7, v8

    :cond_20
    move v0, v7

    .line 10854
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_21

    .line 10855
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10857
    goto/16 :goto_c

    .line 10858
    :cond_21
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10861
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10862
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 10863
    goto/16 :goto_c

    .line 10838
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v7, v8

    :cond_22
    move v0, v7

    .line 10839
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_23

    .line 10840
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10842
    goto/16 :goto_c

    .line 10843
    :cond_23
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10846
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10847
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 10848
    goto/16 :goto_c

    .line 10822
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v7, v8

    :cond_24
    move v0, v7

    .line 10823
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_25

    .line 10824
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10825
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10826
    goto/16 :goto_c

    .line 10827
    :cond_25
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10830
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10831
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10832
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 10833
    goto/16 :goto_c

    .line 10806
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v7, v8

    :cond_26
    move v0, v7

    .line 10807
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_27

    .line 10808
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10810
    goto/16 :goto_c

    .line 10811
    :cond_27
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10814
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10815
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10816
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 10817
    goto/16 :goto_c

    .line 10791
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v7, v8

    :cond_28
    move v0, v7

    .line 10792
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_29

    .line 10793
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10795
    goto/16 :goto_c

    .line 10796
    :cond_29
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10799
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10800
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 10801
    goto/16 :goto_c

    .line 10776
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v7, v8

    :cond_2a
    move v0, v7

    .line 10777
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_2b

    .line 10778
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10780
    goto/16 :goto_c

    .line 10781
    :cond_2b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10784
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10785
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setTxPowerStatus(II)V

    .line 10786
    goto/16 :goto_c

    .line 10761
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v7, v8

    :cond_2c
    move v0, v7

    .line 10762
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_2d

    .line 10763
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10765
    goto/16 :goto_c

    .line 10766
    :cond_2d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10769
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10770
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSilentReboot(II)V

    .line 10771
    goto/16 :goto_c

    .line 10746
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v7, v8

    :cond_2e
    move v0, v7

    .line 10747
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_2f

    .line 10748
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10750
    goto/16 :goto_c

    .line 10751
    :cond_2f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10754
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10755
    .local v2, "simMode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->reportSimMode(II)V

    .line 10756
    goto/16 :goto_c

    .line 10731
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simMode":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v7, v8

    :cond_30
    move v0, v7

    .line 10732
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_31

    .line 10733
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10735
    goto/16 :goto_c

    .line 10736
    :cond_31
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10739
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10740
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->reportAirplaneMode(II)V

    .line 10741
    goto/16 :goto_c

    .line 10717
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v7, v8

    :cond_32
    move v0, v7

    .line 10718
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_33

    .line 10719
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10721
    goto/16 :goto_c

    .line 10722
    :cond_33
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10725
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 10726
    goto/16 :goto_c

    .line 10702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v7, v8

    :cond_34
    move v0, v7

    .line 10703
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_35

    .line 10704
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10706
    goto/16 :goto_c

    .line 10707
    :cond_35
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10710
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10711
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 10712
    goto/16 :goto_c

    .line 10688
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v7, v8

    :cond_36
    move v0, v7

    .line 10689
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_37

    .line 10690
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10692
    goto/16 :goto_c

    .line 10693
    :cond_37
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10696
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->resetAllConnections(I)V

    .line 10697
    goto/16 :goto_c

    .line 10673
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v7, v8

    :cond_38
    move v0, v7

    .line 10674
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_39

    .line 10675
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10676
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10677
    goto/16 :goto_c

    .line 10678
    :cond_39
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10680
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10681
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10682
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->dataConnectionDetach(II)V

    .line 10683
    goto/16 :goto_c

    .line 10658
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v7, v8

    :cond_3a
    move v0, v7

    .line 10659
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_3b

    .line 10660
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10662
    goto/16 :goto_c

    .line 10663
    :cond_3b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10666
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10667
    .restart local v2    # "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->dataConnectionAttach(II)V

    .line 10668
    goto/16 :goto_c

    .line 10643
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v7, v8

    :cond_3c
    move v0, v7

    .line 10644
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_3d

    .line 10645
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10647
    goto/16 :goto_c

    .line 10648
    :cond_3d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10651
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10652
    .local v2, "featureId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 10653
    goto/16 :goto_c

    .line 10627
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v7, v8

    :cond_3e
    move v0, v7

    .line 10628
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_3f

    .line 10629
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10631
    goto/16 :goto_c

    .line 10632
    :cond_3f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10635
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10636
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10637
    .local v3, "value":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 10638
    goto/16 :goto_c

    .line 10612
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v7, v8

    :cond_40
    move v0, v7

    .line 10613
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_41

    .line 10614
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10615
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10616
    goto/16 :goto_c

    .line 10617
    :cond_41
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10619
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10620
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10621
    .local v2, "configId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 10622
    goto/16 :goto_c

    .line 10596
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v7, v8

    :cond_42
    move v0, v7

    .line 10597
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_43

    .line 10598
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10600
    goto/16 :goto_c

    .line 10601
    :cond_43
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10603
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10604
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10605
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10606
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 10607
    goto/16 :goto_c

    .line 10580
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v7, v8

    :cond_44
    move v0, v7

    .line 10581
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_45

    .line 10582
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10583
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10584
    goto/16 :goto_c

    .line 10585
    :cond_45
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10588
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10589
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10590
    .local v3, "network":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 10591
    goto/16 :goto_c

    .line 10562
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v7, v8

    .line 10563
    .restart local v7    # "_hidl_is_oneway":Z
    :cond_46
    if-eq v7, v8, :cond_47

    .line 10564
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10566
    goto/16 :goto_c

    .line 10567
    :cond_47
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 10570
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10571
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10572
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10573
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10574
    .local v11, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 10575
    goto/16 :goto_c

    .line 10547
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v7, v8

    :cond_48
    move v0, v7

    .line 10548
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_49

    .line 10549
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10551
    goto/16 :goto_c

    .line 10552
    :cond_49
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10555
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10556
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImsBearerNotification(II)V

    .line 10557
    goto/16 :goto_c

    .line 10533
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v7, v8

    :cond_4a
    move v0, v7

    .line 10534
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_4b

    .line 10535
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10537
    goto/16 :goto_c

    .line 10538
    :cond_4b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10541
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getApcInfo(I)V

    .line 10542
    goto/16 :goto_c

    .line 10516
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v7, v8

    :cond_4c
    move v0, v7

    .line 10517
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_4d

    .line 10518
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10520
    goto/16 :goto_c

    .line 10521
    :cond_4d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10523
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10524
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10525
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10526
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10527
    .local v4, "interval":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setApcMode(IIII)V

    .line 10528
    goto/16 :goto_c

    .line 10499
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v7, v8

    :cond_4e
    move v0, v7

    .line 10500
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_4f

    .line 10501
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10503
    goto/16 :goto_c

    .line 10504
    :cond_4f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10507
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10508
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10509
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10510
    .local v4, "pktloss":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 10511
    goto/16 :goto_c

    .line 10479
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rat":I
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v7, v8

    :cond_50
    move v9, v7

    .line 10480
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v8, :cond_51

    .line 10481
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10483
    goto/16 :goto_c

    .line 10484
    :cond_51
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10487
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10488
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 10489
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10490
    .local v12, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10491
    .local v16, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10492
    .local v17, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 10493
    .local v18, "dstPort":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 10494
    goto/16 :goto_c

    .line 10464
    .end local v8    # "serial":I
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v12    # "srcIp":Ljava/lang/String;
    .end local v16    # "srcPort":I
    .end local v17    # "dstIp":Ljava/lang/String;
    .end local v18    # "dstPort":I
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v7, v8

    :cond_52
    move v0, v7

    .line 10465
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_53

    .line 10466
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10468
    goto/16 :goto_c

    .line 10469
    :cond_53
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10472
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10473
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 10474
    goto/16 :goto_c

    .line 10439
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v7, v8

    :cond_54
    move v12, v7

    .line 10440
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v8, :cond_55

    .line 10441
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10442
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10443
    goto/16 :goto_c

    .line 10444
    :cond_55
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10447
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10448
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10449
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 10450
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 10451
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 10452
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 10453
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 10454
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 10455
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 10456
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 10457
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 10458
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10459
    goto/16 :goto_c

    .line 10422
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
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v7, v8

    :cond_56
    move v0, v7

    .line 10423
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_57

    .line 10424
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10426
    goto/16 :goto_c

    .line 10427
    :cond_57
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10430
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10431
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10432
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 10433
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10434
    goto/16 :goto_c

    .line 10406
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "ipv4Addr":Ljava/lang/String;
    .end local v4    # "ipv6Addr":Ljava/lang/String;
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v7, v8

    :cond_58
    move v0, v7

    .line 10407
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_59

    .line 10408
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10410
    goto/16 :goto_c

    .line 10411
    :cond_59
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10414
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10415
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10416
    .local v3, "snr":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 10417
    goto/16 :goto_c

    .line 10388
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v7, v8

    .line 10389
    .restart local v7    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v7, v8, :cond_5b

    .line 10390
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10392
    goto/16 :goto_c

    .line 10393
    :cond_5b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 10396
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10397
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10398
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10399
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10400
    .local v11, "apMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10401
    goto/16 :goto_c

    .line 10371
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v7, v8

    :cond_5c
    move v0, v7

    .line 10372
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_5d

    .line 10373
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10374
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10375
    goto/16 :goto_c

    .line 10376
    :cond_5d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10379
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10380
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10381
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10382
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 10383
    goto/16 :goto_c

    .line 10356
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v7, v8

    :cond_5e
    move v0, v7

    .line 10357
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_5f

    .line 10358
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10360
    goto/16 :goto_c

    .line 10361
    :cond_5f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10364
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10365
    .local v2, "vdp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 10366
    goto/16 :goto_c

    .line 10341
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "vdp":I
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v7, v8

    :cond_60
    move v0, v7

    .line 10342
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_61

    .line 10343
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10344
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10345
    goto/16 :goto_c

    .line 10346
    :cond_61
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10348
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10349
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10350
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setE911State(II)V

    .line 10351
    goto/16 :goto_c

    .line 10325
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v7, v8

    :cond_62
    move v0, v7

    .line 10326
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_63

    .line 10327
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10328
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10329
    goto/16 :goto_c

    .line 10330
    :cond_63
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10333
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10334
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10335
    .local v3, "interfaceId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 10336
    goto/16 :goto_c

    .line 10310
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    .end local v3    # "interfaceId":I
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v7, v8

    :cond_64
    move v0, v7

    .line 10311
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_65

    .line 10312
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10314
    goto/16 :goto_c

    .line 10315
    :cond_65
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10318
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10319
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 10320
    goto/16 :goto_c

    .line 10295
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v7, v8

    :cond_66
    move v0, v7

    .line 10296
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_67

    .line 10297
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10298
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10299
    goto/16 :goto_c

    .line 10300
    :cond_67
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10303
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10304
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 10305
    goto/16 :goto_c

    .line 10280
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v7, v8

    :cond_68
    move v0, v7

    .line 10281
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_69

    .line 10282
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10283
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10284
    goto/16 :goto_c

    .line 10285
    :cond_69
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10287
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10288
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10289
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 10290
    goto/16 :goto_c

    .line 10265
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v7, v8

    :cond_6a
    move v0, v7

    .line 10266
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_6b

    .line 10267
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10268
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10269
    goto/16 :goto_c

    .line 10270
    :cond_6b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10273
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10274
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 10275
    goto/16 :goto_c

    .line 10251
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v7, v8

    :cond_6c
    move v0, v7

    .line 10252
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_6d

    .line 10253
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10254
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10255
    goto/16 :goto_c

    .line 10256
    :cond_6d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10259
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->restartRILD(I)V

    .line 10260
    goto/16 :goto_c

    .line 10237
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v7, v8

    :cond_6e
    move v0, v7

    .line 10238
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_6f

    .line 10239
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10240
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10241
    goto/16 :goto_c

    .line 10242
    :cond_6f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10245
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->resetRadio(I)V

    .line 10246
    goto/16 :goto_c

    .line 10222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v7, v8

    :cond_70
    move v0, v7

    .line 10223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_71

    .line 10224
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10226
    goto/16 :goto_c

    .line 10227
    :cond_71
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10230
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10231
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 10232
    goto/16 :goto_c

    .line 10207
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v7, v8

    :cond_72
    move v0, v7

    .line 10208
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_73

    .line 10209
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10210
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10211
    goto/16 :goto_c

    .line 10212
    :cond_73
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10214
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v1

    .line 10215
    .local v1, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 10216
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 10217
    goto/16 :goto_c

    .line 10192
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v7, v8

    :cond_74
    move v0, v7

    .line 10193
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_75

    .line 10194
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10196
    goto/16 :goto_c

    .line 10197
    :cond_75
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10200
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10201
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 10202
    goto/16 :goto_c

    .line 10177
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v7, v8

    :cond_76
    move v0, v7

    .line 10178
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_77

    .line 10179
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10181
    goto/16 :goto_c

    .line 10182
    :cond_77
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10185
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10186
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 10187
    goto/16 :goto_c

    .line 10162
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v7, v8

    :cond_78
    move v0, v7

    .line 10163
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_79

    .line 10164
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10166
    goto/16 :goto_c

    .line 10167
    :cond_79
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10170
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10171
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 10172
    goto/16 :goto_c

    .line 10147
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v7, v8

    :cond_7a
    move v0, v7

    .line 10148
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_7b

    .line 10149
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10150
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10151
    goto/16 :goto_c

    .line 10152
    :cond_7b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10154
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10155
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10156
    .local v2, "resultCode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 10157
    goto/16 :goto_c

    .line 10132
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resultCode":I
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v7, v8

    :cond_7c
    move v0, v7

    .line 10133
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_7d

    .line 10134
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10135
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10136
    goto/16 :goto_c

    .line 10137
    :cond_7d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10140
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10141
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setTrm(II)V

    .line 10142
    goto/16 :goto_c

    .line 10115
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v7, v8

    :cond_7e
    move v0, v7

    .line 10116
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_7f

    .line 10117
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10119
    goto/16 :goto_c

    .line 10120
    :cond_7f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10123
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10124
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10125
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10126
    .local v4, "param2":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setFdMode(IIII)V

    .line 10127
    goto/16 :goto_c

    .line 10098
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v7, v8

    :cond_80
    move v0, v7

    .line 10099
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_81

    .line 10100
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10101
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10102
    goto/16 :goto_c

    .line 10103
    :cond_81
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10106
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10107
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10108
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10109
    .local v4, "nAct":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 10110
    goto/16 :goto_c

    .line 10084
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v7, v8

    :cond_82
    move v0, v7

    .line 10085
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_83

    .line 10086
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10088
    goto/16 :goto_c

    .line 10089
    :cond_83
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10092
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getCurrentPOLList(I)V

    .line 10093
    goto/16 :goto_c

    .line 10070
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v7, v8

    :cond_84
    move v0, v7

    .line 10071
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_85

    .line 10072
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10074
    goto/16 :goto_c

    .line 10075
    :cond_85
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10078
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getPOLCapability(I)V

    .line 10079
    goto/16 :goto_c

    .line 10055
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v7, v8

    :cond_86
    move v0, v7

    .line 10056
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_87

    .line 10057
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10059
    goto/16 :goto_c

    .line 10060
    :cond_87
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10063
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10064
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getRxTestResult(II)V

    .line 10065
    goto/16 :goto_c

    .line 10040
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v7, v8

    :cond_88
    move v0, v7

    .line 10041
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_89

    .line 10042
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10044
    goto/16 :goto_c

    .line 10045
    :cond_89
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10048
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10049
    .local v2, "antType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setRxTestConfig(II)V

    .line 10050
    goto/16 :goto_c

    .line 10020
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "antType":I
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v7, v8

    :cond_8a
    move v9, v7

    .line 10021
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v8, :cond_8b

    .line 10022
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10023
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10024
    goto/16 :goto_c

    .line 10025
    :cond_8b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 10028
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10029
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10030
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 10031
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 10032
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 10033
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 10034
    .local v18, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 10035
    goto/16 :goto_c

    .line 10005
    .end local v8    # "serial":I
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v7, v8

    :cond_8c
    move v0, v7

    .line 10006
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_8d

    .line 10007
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10009
    goto/16 :goto_c

    .line 10010
    :cond_8d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10013
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10014
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 10015
    goto/16 :goto_c

    .line 9991
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v7, v8

    :cond_8e
    move v0, v7

    .line 9992
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_8f

    .line 9993
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9994
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9995
    goto/16 :goto_c

    .line 9996
    :cond_8f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9999
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 10000
    goto/16 :goto_c

    .line 9974
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v7, v8

    :cond_90
    move v0, v7

    .line 9975
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_91

    .line 9976
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9977
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9978
    goto/16 :goto_c

    .line 9979
    :cond_91
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9982
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9983
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9984
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9985
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9986
    goto/16 :goto_c

    .line 9960
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v7, v8

    :cond_92
    move v0, v7

    .line 9961
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_93

    .line 9962
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9964
    goto/16 :goto_c

    .line 9965
    :cond_93
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9968
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->abortFemtocellList(I)V

    .line 9969
    goto/16 :goto_c

    .line 9946
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v7, v8

    :cond_94
    move v0, v7

    .line 9947
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_95

    .line 9948
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9950
    goto/16 :goto_c

    .line 9951
    :cond_95
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9954
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getFemtocellList(I)V

    .line 9955
    goto/16 :goto_c

    .line 9932
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v7, v8

    :cond_96
    move v0, v7

    .line 9933
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_97

    .line 9934
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9936
    goto/16 :goto_c

    .line 9937
    :cond_97
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9940
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 9941
    goto/16 :goto_c

    .line 9918
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v7, v8

    :cond_98
    move v0, v7

    .line 9919
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_99

    .line 9920
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9921
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9922
    goto/16 :goto_c

    .line 9923
    :cond_99
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9926
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 9927
    goto/16 :goto_c

    .line 9904
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v7, v8

    :cond_9a
    move v0, v7

    .line 9905
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_9b

    .line 9906
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9908
    goto/16 :goto_c

    .line 9909
    :cond_9b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9912
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 9913
    goto/16 :goto_c

    .line 9887
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v7, v8

    :cond_9c
    move v0, v7

    .line 9888
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_9d

    .line 9889
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9891
    goto/16 :goto_c

    .line 9892
    :cond_9d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9895
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9896
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9897
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9898
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9899
    goto/16 :goto_c

    .line 9873
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v7, v8

    :cond_9e
    move v0, v7

    .line 9874
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_9f

    .line 9875
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9877
    goto/16 :goto_c

    .line 9878
    :cond_9f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9881
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 9882
    goto/16 :goto_c

    .line 9858
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v7, v8

    :cond_a0
    move v0, v7

    .line 9859
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_a1

    .line 9860
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9861
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9862
    goto/16 :goto_c

    .line 9863
    :cond_a1
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9865
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9866
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9867
    .local v2, "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->reloadModemType(II)V

    .line 9868
    goto/16 :goto_c

    .line 9843
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v7, v8

    :cond_a2
    move v0, v7

    .line 9844
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_a3

    .line 9845
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9846
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9847
    goto/16 :goto_c

    .line 9848
    :cond_a3
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9851
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9852
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->storeModemType(II)V

    .line 9853
    goto/16 :goto_c

    .line 9828
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v7, v8

    :cond_a4
    move v0, v7

    .line 9829
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_a5

    .line 9830
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9832
    goto/16 :goto_c

    .line 9833
    :cond_a5
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9836
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9837
    .local v2, "sessionId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setResumeRegistration(II)V

    .line 9838
    goto/16 :goto_c

    .line 9813
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionId":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v7, v8

    :cond_a6
    move v0, v7

    .line 9814
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_a7

    .line 9815
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9817
    goto/16 :goto_c

    .line 9818
    :cond_a7
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9821
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9822
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 9823
    goto/16 :goto_c

    .line 9798
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v7, v8

    :cond_a8
    move v0, v7

    .line 9799
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_a9

    .line 9800
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9801
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9802
    goto/16 :goto_c

    .line 9803
    :cond_a9
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9806
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9807
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 9808
    goto/16 :goto_c

    .line 9782
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v7, v8

    :cond_aa
    move v0, v7

    .line 9783
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_ab

    .line 9784
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9786
    goto/16 :goto_c

    .line 9787
    :cond_ab
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9790
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 9791
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9792
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 9793
    goto/16 :goto_c

    .line 9766
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v7, v8

    :cond_ac
    move v0, v7

    .line 9767
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_ad

    .line 9768
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9769
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9770
    goto/16 :goto_c

    .line 9771
    :cond_ad
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9773
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9774
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9775
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9776
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 9777
    goto/16 :goto_c

    .line 9752
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v7, v8

    :cond_ae
    move v0, v7

    .line 9753
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_af

    .line 9754
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9755
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9756
    goto/16 :goto_c

    .line 9757
    :cond_af
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9759
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9760
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSmsFwkReady(I)V

    .line 9761
    goto/16 :goto_c

    .line 9736
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v7, v8

    :cond_b0
    move v0, v7

    .line 9737
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_b1

    .line 9738
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9740
    goto/16 :goto_c

    .line 9741
    :cond_b1
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9744
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 9745
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9746
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 9747
    goto/16 :goto_c

    .line 9722
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v7, v8

    :cond_b2
    move v0, v7

    .line 9723
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_b3

    .line 9724
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9725
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9726
    goto/16 :goto_c

    .line 9727
    :cond_b3
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9729
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9730
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 9731
    goto/16 :goto_c

    .line 9708
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v7, v8

    :cond_b4
    move v0, v7

    .line 9709
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_b5

    .line 9710
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9711
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9712
    goto/16 :goto_c

    .line 9713
    :cond_b5
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9716
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 9717
    goto/16 :goto_c

    .line 9693
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v7, v8

    :cond_b6
    move v0, v7

    .line 9694
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_b7

    .line 9695
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9697
    goto/16 :goto_c

    .line 9698
    :cond_b7
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9700
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9701
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9702
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 9703
    goto/16 :goto_c

    .line 9677
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v7, v8

    :cond_b8
    move v0, v7

    .line 9678
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_b9

    .line 9679
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9681
    goto/16 :goto_c

    .line 9682
    :cond_b9
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9685
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9686
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9687
    .local v3, "serialId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->removeCbMsg(III)V

    .line 9688
    goto/16 :goto_c

    .line 9662
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    .end local v3    # "serialId":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v7, v8

    :cond_ba
    move v0, v7

    .line 9663
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_bb

    .line 9664
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9666
    goto/16 :goto_c

    .line 9667
    :cond_bb
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9669
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9670
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9671
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setEtws(II)V

    .line 9672
    goto/16 :goto_c

    .line 9648
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v7, v8

    :cond_bc
    move v0, v7

    .line 9649
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_bd

    .line 9650
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9652
    goto/16 :goto_c

    .line 9653
    :cond_bd
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9656
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getSmsMemStatus(I)V

    .line 9657
    goto/16 :goto_c

    .line 9632
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v7, v8

    :cond_be
    move v0, v7

    .line 9633
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_bf

    .line 9634
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9636
    goto/16 :goto_c

    .line 9637
    :cond_bf
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9640
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 9641
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9642
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 9643
    goto/16 :goto_c

    .line 9618
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v7, v8

    :cond_c0
    move v0, v7

    .line 9619
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_c1

    .line 9620
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9622
    goto/16 :goto_c

    .line 9623
    :cond_c1
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9626
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getSmsParameters(I)V

    .line 9627
    goto/16 :goto_c

    .line 9599
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v7, v8

    .line 9600
    .restart local v7    # "_hidl_is_oneway":Z
    :cond_c2
    if-eq v7, v8, :cond_c3

    .line 9601
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9603
    goto/16 :goto_c

    .line 9604
    :cond_c3
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9607
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9608
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9609
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9610
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9611
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9612
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 9613
    goto/16 :goto_c

    .line 9582
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v7, v8

    :cond_c4
    move v0, v7

    .line 9583
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_c5

    .line 9584
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9585
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9586
    goto/16 :goto_c

    .line 9587
    :cond_c5
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9589
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9590
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9591
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9592
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9593
    .local v4, "simType":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 9594
    goto/16 :goto_c

    .line 9566
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "transactionId":I
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v7, v8

    :cond_c6
    move v0, v7

    .line 9567
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_c7

    .line 9568
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9570
    goto/16 :goto_c

    .line 9571
    :cond_c7
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9574
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9575
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9576
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 9577
    goto/16 :goto_c

    .line 9546
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v7, v8

    :cond_c8
    move v9, v7

    .line 9547
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v8, :cond_c9

    .line 9548
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9549
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9550
    goto/16 :goto_c

    .line 9551
    :cond_c9
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9553
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9554
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9555
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9556
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 9557
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 9558
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 9559
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 9560
    .local v18, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9561
    goto/16 :goto_c

    .line 9531
    .end local v8    # "serial":I
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v7, v8

    :cond_ca
    move v0, v7

    .line 9532
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_cb

    .line 9533
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9535
    goto/16 :goto_c

    .line 9536
    :cond_cb
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9539
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9540
    .local v2, "category":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->queryNetworkLock(II)V

    .line 9541
    goto/16 :goto_c

    .line 9515
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "category":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v7, v8

    :cond_cc
    move v0, v7

    .line 9516
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_cd

    .line 9517
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9519
    goto/16 :goto_c

    .line 9520
    :cond_cd
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9523
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 9524
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9525
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 9526
    goto/16 :goto_c

    .line 9500
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v7, v8

    :cond_ce
    move v0, v7

    .line 9501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_cf

    .line 9502
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9504
    goto/16 :goto_c

    .line 9505
    :cond_cf
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9508
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9509
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSimPower(II)V

    .line 9510
    goto/16 :goto_c

    .line 9486
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v7, v8

    :cond_d0
    move v0, v7

    .line 9487
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_d1

    .line 9488
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9489
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9490
    goto/16 :goto_c

    .line 9491
    :cond_d1
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9494
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getIccid(I)V

    .line 9495
    goto/16 :goto_c

    .line 9472
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v7, v8

    :cond_d2
    move v0, v7

    .line 9473
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_d3

    .line 9474
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9475
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9476
    goto/16 :goto_c

    .line 9477
    :cond_d3
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9479
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9480
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getATR(I)V

    .line 9481
    goto/16 :goto_c

    .line 9457
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v7, v8

    :cond_d4
    move v0, v7

    .line 9458
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_d5

    .line 9459
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9460
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9461
    goto/16 :goto_c

    .line 9462
    :cond_d5
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9465
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9466
    .restart local v2    # "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 9467
    goto/16 :goto_c

    .line 9442
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v7, v8

    :cond_d6
    move v0, v7

    .line 9443
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_d7

    .line 9444
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9445
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9446
    goto/16 :goto_c

    .line 9447
    :cond_d7
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9449
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9450
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9451
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setModemPower(IZ)V

    .line 9452
    goto/16 :goto_c

    .line 9427
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v7, v8

    :cond_d8
    move v0, v7

    .line 9428
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_d9

    .line 9429
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9430
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9431
    goto/16 :goto_c

    .line 9432
    :cond_d9
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9435
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9436
    .local v2, "ready":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setPhonebookReady(II)V

    .line 9437
    goto/16 :goto_c

    .line 9411
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ready":I
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v7, v8

    :cond_da
    move v0, v7

    .line 9412
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_db

    .line 9413
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9414
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9415
    goto/16 :goto_c

    .line 9416
    :cond_db
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9419
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9420
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9421
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->readUPBAasList(III)V

    .line 9422
    goto/16 :goto_c

    .line 9395
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v7, v8

    :cond_dc
    move v0, v7

    .line 9396
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_dd

    .line 9397
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9398
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9399
    goto/16 :goto_c

    .line 9400
    :cond_dd
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9403
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9404
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9405
    .local v3, "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 9406
    goto/16 :goto_c

    .line 9379
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v7, v8

    :cond_de
    move v0, v7

    .line 9380
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_df

    .line 9381
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9382
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9383
    goto/16 :goto_c

    .line 9384
    :cond_df
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9387
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9388
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9389
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->readUPBSneEntry(III)V

    .line 9390
    goto/16 :goto_c

    .line 9363
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v7, v8

    :cond_e0
    move v0, v7

    .line 9364
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_e1

    .line 9365
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9367
    goto/16 :goto_c

    .line 9368
    :cond_e1
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9371
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9372
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9373
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 9374
    goto/16 :goto_c

    .line 9347
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v7, v8

    :cond_e2
    move v0, v7

    .line 9348
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_e3

    .line 9349
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9350
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9351
    goto/16 :goto_c

    .line 9352
    :cond_e3
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9355
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9356
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9357
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->queryUPBAvailable(III)V

    .line 9358
    goto/16 :goto_c

    .line 9331
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "eftype":I
    .end local v3    # "fileIndex":I
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v7, v8

    :cond_e4
    move v0, v7

    .line 9332
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_e5

    .line 9333
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9334
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9335
    goto/16 :goto_c

    .line 9336
    :cond_e5
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9338
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9339
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 9340
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9341
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 9342
    goto/16 :goto_c

    .line 9315
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v7, v8

    :cond_e6
    move v0, v7

    .line 9316
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_e7

    .line 9317
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9318
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9319
    goto/16 :goto_c

    .line 9320
    :cond_e7
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9323
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9324
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9325
    .local v3, "index2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 9326
    goto/16 :goto_c

    .line 9299
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v7, v8

    :cond_e8
    move v0, v7

    .line 9300
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_e9

    .line 9301
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9302
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9303
    goto/16 :goto_c

    .line 9304
    :cond_e9
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9307
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9308
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9309
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 9310
    goto/16 :goto_c

    .line 9285
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v7, v8

    :cond_ea
    move v0, v7

    .line 9286
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_eb

    .line 9287
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9288
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9289
    goto/16 :goto_c

    .line 9290
    :cond_eb
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9293
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 9294
    goto/16 :goto_c

    .line 9271
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v7, v8

    :cond_ec
    move v0, v7

    .line 9272
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_ed

    .line 9273
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9275
    goto/16 :goto_c

    .line 9276
    :cond_ed
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9279
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 9280
    goto/16 :goto_c

    .line 9255
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v7, v8

    :cond_ee
    move v0, v7

    .line 9256
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_ef

    .line 9257
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9258
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9259
    goto/16 :goto_c

    .line 9260
    :cond_ef
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9263
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9264
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 9265
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 9266
    goto/16 :goto_c

    .line 9240
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v7, v8

    :cond_f0
    move v0, v7

    .line 9241
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_f1

    .line 9242
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9243
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9244
    goto/16 :goto_c

    .line 9245
    :cond_f1
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9247
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9248
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9249
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 9250
    goto/16 :goto_c

    .line 9224
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v7, v8

    :cond_f2
    move v0, v7

    .line 9225
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_f3

    .line 9226
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9227
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9228
    goto/16 :goto_c

    .line 9229
    :cond_f3
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9232
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9233
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9234
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->readUPBGasList(III)V

    .line 9235
    goto/16 :goto_c

    .line 9207
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v7, v8

    :cond_f4
    move v0, v7

    .line 9208
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_f5

    .line 9209
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9210
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9211
    goto/16 :goto_c

    .line 9212
    :cond_f5
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9214
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9215
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9216
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9217
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9218
    .local v4, "entryIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 9219
    goto/16 :goto_c

    .line 9192
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "entryType":I
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v7, v8

    :cond_f6
    move v0, v7

    .line 9193
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_f7

    .line 9194
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9196
    goto/16 :goto_c

    .line 9197
    :cond_f7
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9200
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9201
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 9202
    goto/16 :goto_c

    .line 9178
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v7, v8

    :cond_f8
    move v0, v7

    .line 9179
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_f9

    .line 9180
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9181
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9182
    goto/16 :goto_c

    .line 9183
    :cond_f9
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9186
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->queryUPBCapability(I)V

    .line 9187
    goto/16 :goto_c

    .line 9161
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v7, v8

    :cond_fa
    move v0, v7

    .line 9162
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_fb

    .line 9163
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9165
    goto/16 :goto_c

    .line 9166
    :cond_fb
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9169
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9170
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9171
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9172
    .local v4, "eIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->readPhbEntry(IIII)V

    .line 9173
    goto/16 :goto_c

    .line 9145
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v7, v8

    :cond_fc
    move v0, v7

    .line 9146
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_fd

    .line 9147
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9149
    goto/16 :goto_c

    .line 9150
    :cond_fd
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9153
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 9154
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9155
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 9156
    goto/16 :goto_c

    .line 9130
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v7, v8

    :cond_fe
    move v0, v7

    .line 9131
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_ff

    .line 9132
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9134
    goto/16 :goto_c

    .line 9135
    :cond_ff
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9138
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9139
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 9140
    goto/16 :goto_c

    .line 9116
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v7, v8

    :cond_100
    move v0, v7

    .line 9117
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_101

    .line 9118
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9119
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9120
    goto/16 :goto_c

    .line 9121
    :cond_101
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9124
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getEccNum(I)V

    .line 9125
    goto/16 :goto_c

    .line 9100
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v7, v8

    :cond_102
    move v0, v7

    .line 9101
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_103

    .line 9102
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9103
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9104
    goto/16 :goto_c

    .line 9105
    :cond_103
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9108
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9109
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9110
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 9111
    goto/16 :goto_c

    .line 9085
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v7, v8

    :cond_104
    move v0, v7

    .line 9086
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_105

    .line 9087
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9089
    goto/16 :goto_c

    .line 9090
    :cond_105
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9093
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9094
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 9095
    goto/16 :goto_c

    .line 9070
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v7, v8

    :cond_106
    move v0, v7

    .line 9071
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_107

    .line 9072
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9074
    goto/16 :goto_c

    .line 9075
    :cond_107
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9078
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9079
    .local v2, "phoneType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->eccPreferredRat(II)V

    .line 9080
    goto/16 :goto_c

    .line 9054
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneType":I
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v7, v8

    :cond_108
    move v0, v7

    .line 9055
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_109

    .line 9056
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9057
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9058
    goto/16 :goto_c

    .line 9059
    :cond_109
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9061
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9062
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9063
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9064
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->currentStatus(III)V

    .line 9065
    goto/16 :goto_c

    .line 9038
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "emcSessionId":I
    .end local v3    # "airplaneMode":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v7, v8

    :cond_10a
    move v0, v7

    .line 9039
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_10b

    .line 9040
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9042
    goto/16 :goto_c

    .line 9043
    :cond_10b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9045
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9046
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9047
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9048
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 9049
    goto/16 :goto_c

    .line 9023
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "list1":Ljava/lang/String;
    .end local v3    # "list2":Ljava/lang/String;
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v7, v8

    :cond_10c
    move v0, v7

    .line 9024
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_10d

    .line 9025
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9027
    goto/16 :goto_c

    .line 9028
    :cond_10d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9031
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9032
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setEccServiceCategory(II)V

    .line 9033
    goto/16 :goto_c

    .line 9007
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceCategory":I
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v7, v8

    :cond_10e
    move v0, v7

    .line 9008
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_10f

    .line 9009
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9011
    goto/16 :goto_c

    .line 9012
    :cond_10f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9015
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 9016
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9017
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 9018
    goto/16 :goto_c

    .line 8990
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v7, v8

    :cond_110
    move v0, v7

    .line 8991
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_111

    .line 8992
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8993
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8994
    goto/16 :goto_c

    .line 8995
    :cond_111
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8997
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8998
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8999
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9000
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9001
    .local v4, "seqNumber":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCallIndication(IIII)V

    .line 9002
    goto/16 :goto_c

    .line 8976
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "callId":I
    .end local v4    # "seqNumber":I
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v7, v8

    :cond_112
    move v0, v7

    .line 8977
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_113

    .line 8978
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8980
    goto/16 :goto_c

    .line 8981
    :cond_113
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8984
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->hangupAll(I)V

    .line 8985
    goto/16 :goto_c

    .line 8961
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v7, v8

    :cond_114
    move v0, v7

    .line 8962
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_115

    .line 8963
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8965
    goto/16 :goto_c

    .line 8966
    :cond_115
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8969
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8970
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 8971
    goto/16 :goto_c

    .line 8947
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v7, v8

    :cond_116
    move v0, v7

    .line 8948
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_117

    .line 8949
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8951
    goto/16 :goto_c

    .line 8952
    :cond_117
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8955
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->resetSuppServ(I)V

    .line 8956
    goto/16 :goto_c

    .line 8933
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v7, v8

    :cond_118
    move v0, v7

    .line 8934
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_119

    .line 8935
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8936
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8937
    goto/16 :goto_c

    .line 8938
    :cond_119
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8941
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getXcapStatus(I)V

    .line 8942
    goto/16 :goto_c

    .line 8919
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v7, v8

    :cond_11a
    move v0, v7

    .line 8920
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_11b

    .line 8921
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8923
    goto/16 :goto_c

    .line 8924
    :cond_11b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8926
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8927
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->cancelUssi(I)V

    .line 8928
    goto/16 :goto_c

    .line 8903
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v7, v8

    :cond_11c
    move v0, v7

    .line 8904
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_11d

    .line 8905
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8907
    goto/16 :goto_c

    .line 8908
    :cond_11d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8911
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8912
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8913
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 8914
    goto/16 :goto_c

    .line 8885
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v7, v8

    .line 8886
    .restart local v7    # "_hidl_is_oneway":Z
    :cond_11e
    if-eq v7, v8, :cond_11f

    .line 8887
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8889
    goto/16 :goto_c

    .line 8890
    :cond_11f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8893
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8894
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8895
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8896
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8897
    .local v11, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 8898
    goto/16 :goto_c

    .line 8869
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v7, v8

    :cond_120
    move v0, v7

    .line 8870
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_121

    .line 8871
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8873
    goto/16 :goto_c

    .line 8874
    :cond_121
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8877
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8878
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8879
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8880
    goto/16 :goto_c

    .line 8853
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v7, v8

    :cond_122
    move v0, v7

    .line 8854
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_123

    .line 8855
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8856
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8857
    goto/16 :goto_c

    .line 8858
    :cond_123
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8861
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 8862
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8863
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 8864
    goto/16 :goto_c

    .line 8838
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v7, v8

    :cond_124
    move v0, v7

    .line 8839
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_125

    .line 8840
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8841
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8842
    goto/16 :goto_c

    .line 8843
    :cond_125
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8846
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8847
    .local v2, "colrEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setColr(II)V

    .line 8848
    goto/16 :goto_c

    .line 8823
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colrEnable":I
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v7, v8

    :cond_126
    move v0, v7

    .line 8824
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_127

    .line 8825
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8827
    goto/16 :goto_c

    .line 8828
    :cond_127
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8830
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8831
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8832
    .local v2, "colpEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setColp(II)V

    .line 8833
    goto/16 :goto_c

    .line 8808
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colpEnable":I
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v7, v8

    :cond_128
    move v0, v7

    .line 8809
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_129

    .line 8810
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8811
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8812
    goto/16 :goto_c

    .line 8813
    :cond_129
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8816
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8817
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 8818
    goto/16 :goto_c

    .line 8794
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v7, v8

    :cond_12a
    move v0, v7

    .line 8795
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_12b

    .line 8796
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8797
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8798
    goto/16 :goto_c

    .line 8799
    :cond_12b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8802
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getColr(I)V

    .line 8803
    goto/16 :goto_c

    .line 8780
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v7, v8

    :cond_12c
    move v0, v7

    .line 8781
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_12d

    .line 8782
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8784
    goto/16 :goto_c

    .line 8785
    :cond_12d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8787
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8788
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getColp(I)V

    .line 8789
    goto/16 :goto_c

    .line 8765
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v7, v8

    :cond_12e
    move v0, v7

    .line 8766
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_12f

    .line 8767
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8769
    goto/16 :goto_c

    .line 8770
    :cond_12f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8773
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8774
    .local v2, "clipEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setClip(II)V

    .line 8775
    goto/16 :goto_c

    .line 8747
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "clipEnable":I
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v7, v8

    .line 8748
    .restart local v7    # "_hidl_is_oneway":Z
    :cond_130
    if-eq v7, v8, :cond_131

    .line 8749
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8750
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8751
    goto/16 :goto_c

    .line 8752
    :cond_131
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8755
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8756
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8757
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8758
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8759
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8760
    goto/16 :goto_c

    .line 8732
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v7, v8

    :cond_132
    move v0, v7

    .line 8733
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_133

    .line 8734
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8735
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8736
    goto/16 :goto_c

    .line 8737
    :cond_133
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8739
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8740
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8741
    .local v2, "phoneId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getRoamingEnable(II)V

    .line 8742
    goto/16 :goto_c

    .line 8717
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneId":I
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v7, v8

    :cond_134
    move v0, v7

    .line 8718
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_135

    .line 8719
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8721
    goto/16 :goto_c

    .line 8722
    :cond_135
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8725
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8726
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 8727
    goto/16 :goto_c

    .line 8702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_91
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_136

    move v7, v8

    :cond_136
    move v0, v7

    .line 8703
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_137

    .line 8704
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8706
    goto/16 :goto_c

    .line 8707
    :cond_137
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8710
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8711
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 8712
    goto/16 :goto_c

    .line 8688
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_92
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_138

    move v7, v8

    :cond_138
    move v0, v7

    .line 8689
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_139

    .line 8690
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8692
    goto/16 :goto_c

    .line 8693
    :cond_139
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8696
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 8697
    goto/16 :goto_c

    .line 8672
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v7, v8

    :cond_13a
    move v0, v7

    .line 8673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_13b

    .line 8674
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8676
    goto/16 :goto_c

    .line 8677
    :cond_13b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8679
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8680
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8681
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8682
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 8683
    goto/16 :goto_c

    .line 8655
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "isVideoCall":Z
    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v7, v8

    :cond_13c
    move v0, v7

    .line 8656
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_13d

    .line 8657
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8659
    goto/16 :goto_c

    .line 8660
    :cond_13d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8663
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8664
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8665
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8666
    .local v4, "timer":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 8667
    goto/16 :goto_c

    .line 8639
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnId":I
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v7, v8

    :cond_13e
    move v0, v7

    .line 8640
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_13f

    .line 8641
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8643
    goto/16 :goto_c

    .line 8644
    :cond_13f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8647
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8648
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8649
    .local v3, "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 8650
    goto/16 :goto_c

    .line 8623
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v7, v8

    :cond_140
    move v0, v7

    .line 8624
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_141

    .line 8625
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8626
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8627
    goto/16 :goto_c

    .line 8628
    :cond_141
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8631
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8632
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8633
    .restart local v3    # "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 8634
    goto/16 :goto_c

    .line 8608
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v7, v8

    :cond_142
    move v0, v7

    .line 8609
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_143

    .line 8610
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8611
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8612
    goto/16 :goto_c

    .line 8613
    :cond_143
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8616
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8617
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->forceReleaseCall(II)V

    .line 8618
    goto/16 :goto_c

    .line 8592
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v7, v8

    :cond_144
    move v0, v7

    .line 8593
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_145

    .line 8594
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8596
    goto/16 :goto_c

    .line 8597
    :cond_145
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8600
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 8601
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8602
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 8603
    goto/16 :goto_c

    .line 8577
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v7, v8

    :cond_146
    move v0, v7

    .line 8578
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_147

    .line 8579
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8581
    goto/16 :goto_c

    .line 8582
    :cond_147
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8585
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8586
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 8587
    goto/16 :goto_c

    .line 8562
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    move v7, v8

    :cond_148
    move v0, v7

    .line 8563
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_149

    .line 8564
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8566
    goto/16 :goto_c

    .line 8567
    :cond_149
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8570
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8571
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 8572
    goto/16 :goto_c

    .line 8545
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v7, v8

    :cond_14a
    move v0, v7

    .line 8546
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_14b

    .line 8547
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8548
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8549
    goto/16 :goto_c

    .line 8550
    :cond_14b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8552
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8553
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8554
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8555
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8556
    .local v4, "type":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 8557
    goto/16 :goto_c

    .line 8529
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v7, v8

    :cond_14c
    move v0, v7

    .line 8530
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_14d

    .line 8531
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8533
    goto/16 :goto_c

    .line 8534
    :cond_14d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8537
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 8538
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8539
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 8540
    goto/16 :goto_c

    .line 8514
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_9d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14e

    move v7, v8

    :cond_14e
    move v0, v7

    .line 8515
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_14f

    .line 8516
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8518
    goto/16 :goto_c

    .line 8519
    :cond_14f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8522
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8523
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setWfcProfile(II)V

    .line 8524
    goto/16 :goto_c

    .line 8497
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "wfcPreference":I
    :pswitch_9e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_150

    move v7, v8

    :cond_150
    move v0, v7

    .line 8498
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_151

    .line 8499
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8500
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8501
    goto/16 :goto_c

    .line 8502
    :cond_151
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8505
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8506
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8507
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8508
    .local v4, "callToRemove":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8509
    goto/16 :goto_c

    .line 8480
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToRemove":I
    :pswitch_9f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_152

    move v7, v8

    :cond_152
    move v0, v7

    .line 8481
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_153

    .line 8482
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8483
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8484
    goto/16 :goto_c

    .line 8485
    :cond_153
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8488
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8489
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8490
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8491
    .local v4, "callToAdd":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 8492
    goto/16 :goto_c

    .line 8464
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToAdd":I
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v7, v8

    :cond_154
    move v0, v7

    .line 8465
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_155

    .line 8466
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8468
    goto/16 :goto_c

    .line 8469
    :cond_155
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8472
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8473
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8474
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 8475
    goto/16 :goto_c

    .line 8449
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_a1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_156

    move v7, v8

    :cond_156
    move v0, v7

    .line 8450
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_157

    .line 8451
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8452
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8453
    goto/16 :goto_c

    .line 8454
    :cond_157
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8457
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8458
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 8459
    goto/16 :goto_c

    .line 8429
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v7, v8

    :cond_158
    move v9, v7

    .line 8430
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v8, :cond_159

    .line 8431
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8433
    goto/16 :goto_c

    .line 8434
    :cond_159
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8437
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8438
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 8439
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 8440
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8441
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8442
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8443
    .local v18, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 8444
    goto/16 :goto_c

    .line 8414
    .end local v8    # "serial":I
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v7, v8

    :cond_15a
    move v0, v7

    .line 8415
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_15b

    .line 8416
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8418
    goto/16 :goto_c

    .line 8419
    :cond_15b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8421
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8422
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8423
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 8424
    goto/16 :goto_c

    .line 8399
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v7, v8

    :cond_15c
    move v0, v7

    .line 8400
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_15d

    .line 8401
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8403
    goto/16 :goto_c

    .line 8404
    :cond_15d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8407
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8408
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 8409
    goto/16 :goto_c

    .line 8384
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v7, v8

    :cond_15e
    move v0, v7

    .line 8385
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_15f

    .line 8386
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8387
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8388
    goto/16 :goto_c

    .line 8389
    :cond_15f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8392
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8393
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 8394
    goto/16 :goto_c

    .line 8369
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v7, v8

    :cond_160
    move v0, v7

    .line 8370
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_161

    .line 8371
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8372
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8373
    goto/16 :goto_c

    .line 8374
    :cond_161
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8377
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8378
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 8379
    goto/16 :goto_c

    .line 8354
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v7, v8

    :cond_162
    move v0, v7

    .line 8355
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_163

    .line 8356
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8358
    goto/16 :goto_c

    .line 8359
    :cond_163
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8362
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8363
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setVilteEnable(IZ)V

    .line 8364
    goto/16 :goto_c

    .line 8339
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v7, v8

    :cond_164
    move v0, v7

    .line 8340
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_165

    .line 8341
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8343
    goto/16 :goto_c

    .line 8344
    :cond_165
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8347
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8348
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setWfcEnable(IZ)V

    .line 8349
    goto/16 :goto_c

    .line 8324
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_166

    move v7, v8

    :cond_166
    move v0, v7

    .line 8325
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_167

    .line 8326
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8328
    goto/16 :goto_c

    .line 8329
    :cond_167
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8332
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8333
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setVolteEnable(IZ)V

    .line 8334
    goto/16 :goto_c

    .line 8309
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v7, v8

    :cond_168
    move v0, v7

    .line 8310
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_169

    .line 8311
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8313
    goto/16 :goto_c

    .line 8314
    :cond_169
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8317
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8318
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setImsEnable(IZ)V

    .line 8319
    goto/16 :goto_c

    .line 8294
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    move v7, v8

    :cond_16a
    move v0, v7

    .line 8295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_16b

    .line 8296
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8298
    goto/16 :goto_c

    .line 8299
    :cond_16b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8302
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8303
    .local v2, "cause":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->imsDeregNotification(II)V

    .line 8304
    goto/16 :goto_c

    .line 8279
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cause":I
    :pswitch_ac
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16c

    move v7, v8

    :cond_16c
    move v0, v7

    .line 8280
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_16d

    .line 8281
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8283
    goto/16 :goto_c

    .line 8284
    :cond_16d
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8287
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8288
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->resumeCall(II)V

    .line 8289
    goto/16 :goto_c

    .line 8264
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ad
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16e

    move v7, v8

    :cond_16e
    move v0, v7

    .line 8265
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_16f

    .line 8266
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8268
    goto/16 :goto_c

    .line 8269
    :cond_16f
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8272
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8273
    .restart local v2    # "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->holdCall(II)V

    .line 8274
    goto/16 :goto_c

    .line 8248
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_ae
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_170

    move v7, v8

    :cond_170
    move v0, v7

    .line 8249
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_171

    .line 8250
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8252
    goto/16 :goto_c

    .line 8253
    :cond_171
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8256
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8257
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8258
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 8259
    goto/16 :goto_c

    .line 8232
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_af
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_172

    move v7, v8

    :cond_172
    move v0, v7

    .line 8233
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_173

    .line 8234
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8236
    goto/16 :goto_c

    .line 8237
    :cond_173
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8240
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8241
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8242
    .local v3, "callId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->videoCallAccept(III)V

    .line 8243
    goto/16 :goto_c

    .line 8215
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "videoMode":I
    .end local v3    # "callId":I
    :pswitch_b0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_174

    goto :goto_7

    :cond_174
    move v8, v7

    :goto_7
    move v0, v8

    .line 8216
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_175

    .line 8217
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8219
    goto/16 :goto_c

    .line 8220
    :cond_175
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v1

    .line 8223
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v2

    .line 8224
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 8225
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8226
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8227
    goto/16 :goto_c

    .line 8198
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    :pswitch_b1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_176

    goto :goto_8

    :cond_176
    move v8, v7

    :goto_8
    move v0, v8

    .line 8199
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_177

    .line 8200
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8201
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8202
    goto/16 :goto_c

    .line 8203
    :cond_177
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v1

    .line 8206
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 8207
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 8208
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8210
    goto/16 :goto_c

    .line 8181
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    :pswitch_b2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_178

    goto :goto_9

    :cond_178
    move v8, v7

    :goto_9
    move v0, v8

    .line 8182
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_179

    .line 8183
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8185
    goto/16 :goto_c

    .line 8186
    :cond_179
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v1

    .line 8189
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 8190
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 8191
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8193
    goto/16 :goto_c

    .line 8164
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    :pswitch_b3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17a

    goto :goto_a

    :cond_17a
    move v8, v7

    :goto_a
    move v0, v8

    .line 8165
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_17b

    .line 8166
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8167
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8168
    goto/16 :goto_c

    .line 8169
    :cond_17b
    invoke-virtual {v14, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v1

    .line 8172
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v2

    .line 8173
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 8174
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8175
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8176
    goto/16 :goto_c

    .line 8148
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_b4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17c

    move v7, v8

    :cond_17c
    move v0, v7

    .line 8149
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_17d

    .line 8150
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8151
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8152
    goto/16 :goto_c

    .line 8153
    :cond_17d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8155
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8156
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8157
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8158
    .local v3, "reason":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 8159
    goto/16 :goto_c

    .line 8125
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_b5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17e

    move v7, v8

    :cond_17e
    move v10, v7

    .line 8126
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v8, :cond_17f

    .line 8127
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8129
    goto/16 :goto_c

    .line 8130
    :cond_17f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8133
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8134
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 8135
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 8137
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 8138
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 8139
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8140
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 8141
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 8142
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

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8143
    goto/16 :goto_c

    .line 8105
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
    :pswitch_b6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_180

    move v7, v8

    :cond_180
    move v9, v7

    .line 8106
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v8, :cond_181

    .line 8107
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8109
    goto/16 :goto_c

    .line 8110
    :cond_181
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8113
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8114
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8115
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8116
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 8117
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 8118
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8119
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 8120
    goto/16 :goto_c

    .line 8087
    .end local v8    # "serial":I
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "hysteresisMs":I
    .end local v11    # "hysteresisDlKbps":I
    .end local v12    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v7, v8

    .line 8088
    .restart local v7    # "_hidl_is_oneway":Z
    :cond_182
    if-eq v7, v8, :cond_183

    .line 8089
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8091
    goto/16 :goto_c

    .line 8092
    :cond_183
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8095
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8096
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8097
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 8098
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8099
    .local v11, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 8100
    goto/16 :goto_c

    .line 8072
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v10    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "accessNetwork":I
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v7, v8

    :cond_184
    move v0, v7

    .line 8073
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_185

    .line 8074
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8075
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8076
    goto/16 :goto_c

    .line 8077
    :cond_185
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8079
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8080
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8081
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 8082
    goto/16 :goto_c

    .line 8056
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v7, v8

    :cond_186
    move v0, v7

    .line 8057
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_187

    .line 8058
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8059
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8060
    goto/16 :goto_c

    .line 8061
    :cond_187
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8063
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8064
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 8065
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8066
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 8067
    goto/16 :goto_c

    .line 8041
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v7, v8

    :cond_188
    move v0, v7

    .line 8042
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_189

    .line 8043
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8044
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8045
    goto/16 :goto_c

    .line 8046
    :cond_189
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8049
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8050
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->stopKeepalive(II)V

    .line 8051
    goto/16 :goto_c

    .line 8025
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v7, v8

    :cond_18a
    move v0, v7

    .line 8026
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_18b

    .line 8027
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8029
    goto/16 :goto_c

    .line 8030
    :cond_18b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8033
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 8034
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8035
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 8036
    goto/16 :goto_c

    .line 8011
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v7, v8

    :cond_18c
    move v0, v7

    .line 8012
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_18d

    .line 8013
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8015
    goto/16 :goto_c

    .line 8016
    :cond_18d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8019
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->stopNetworkScan(I)V

    .line 8020
    goto/16 :goto_c

    .line 7995
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v7, v8

    :cond_18e
    move v0, v7

    .line 7996
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_18f

    .line 7997
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7998
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7999
    goto/16 :goto_c

    .line 8000
    :cond_18f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8003
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 8004
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8005
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 8006
    goto/16 :goto_c

    .line 7980
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v7, v8

    :cond_190
    move v0, v7

    .line 7981
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_191

    .line 7982
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7983
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7984
    goto/16 :goto_c

    .line 7985
    :cond_191
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7988
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7989
    .local v2, "powerUp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 7990
    goto/16 :goto_c

    .line 7964
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v7, v8

    :cond_192
    move v0, v7

    .line 7965
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_193

    .line 7966
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7968
    goto/16 :goto_c

    .line 7969
    :cond_193
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7972
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 7973
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7974
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 7975
    goto/16 :goto_c

    .line 7951
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v7, v8

    :cond_194
    move v0, v7

    .line 7952
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_195

    .line 7953
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7954
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7955
    goto/16 :goto_c

    .line 7956
    :cond_195
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7958
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->responseAcknowledgement()V

    .line 7959
    goto/16 :goto_c

    .line 7936
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v7, v8

    :cond_196
    move v0, v7

    .line 7937
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_197

    .line 7938
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7940
    goto/16 :goto_c

    .line 7941
    :cond_197
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7944
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7945
    .local v2, "powerUp":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSimCardPower(IZ)V

    .line 7946
    goto/16 :goto_c

    .line 7921
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_c2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_198

    move v7, v8

    :cond_198
    move v0, v7

    .line 7922
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_199

    .line 7923
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7924
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7925
    goto/16 :goto_c

    .line 7926
    :cond_199
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7929
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7930
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setIndicationFilter(II)V

    .line 7931
    goto/16 :goto_c

    .line 7905
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v7, v8

    :cond_19a
    move v0, v7

    .line 7906
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_19b

    .line 7907
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7908
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7909
    goto/16 :goto_c

    .line 7910
    :cond_19b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7912
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7913
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7914
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7915
    .local v3, "state":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 7916
    goto/16 :goto_c

    .line 7891
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_c4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19c

    move v7, v8

    :cond_19c
    move v0, v7

    .line 7892
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_19d

    .line 7893
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7895
    goto/16 :goto_c

    .line 7896
    :cond_19d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7898
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7899
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getAllowedCarriers(I)V

    .line 7900
    goto/16 :goto_c

    .line 7874
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v7, v8

    :cond_19e
    move v0, v7

    .line 7875
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_19f

    .line 7876
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7877
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7878
    goto/16 :goto_c

    .line 7879
    :cond_19f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7882
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7883
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 7884
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v14}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7885
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 7886
    goto/16 :goto_c

    .line 7860
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v7, v8

    :cond_1a0
    move v0, v7

    .line 7861
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1a1

    .line 7862
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7864
    goto/16 :goto_c

    .line 7865
    :cond_1a1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7868
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getModemActivityInfo(I)V

    .line 7869
    goto/16 :goto_c

    .line 7846
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v7, v8

    :cond_1a2
    move v0, v7

    .line 7847
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1a3

    .line 7848
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7850
    goto/16 :goto_c

    .line 7851
    :cond_1a3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7853
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7854
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->pullLceData(I)V

    .line 7855
    goto/16 :goto_c

    .line 7832
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a4

    move v7, v8

    :cond_1a4
    move v0, v7

    .line 7833
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1a5

    .line 7834
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7835
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7836
    goto/16 :goto_c

    .line 7837
    :cond_1a5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7840
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->stopLceService(I)V

    .line 7841
    goto/16 :goto_c

    .line 7816
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v7, v8

    :cond_1a6
    move v0, v7

    .line 7817
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1a7

    .line 7818
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7819
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7820
    goto/16 :goto_c

    .line 7821
    :cond_1a7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7824
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7825
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7826
    .local v3, "pullMode":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->startLceService(IIZ)V

    .line 7827
    goto/16 :goto_c

    .line 7800
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v7, v8

    :cond_1a8
    move v0, v7

    .line 7801
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1a9

    .line 7802
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7804
    goto/16 :goto_c

    .line 7805
    :cond_1a9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7808
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 7809
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7810
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 7811
    goto/16 :goto_c

    .line 7786
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v7, v8

    :cond_1aa
    move v0, v7

    .line 7787
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1ab

    .line 7788
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7790
    goto/16 :goto_c

    .line 7791
    :cond_1ab
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7794
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getRadioCapability(I)V

    .line 7795
    goto/16 :goto_c

    .line 7772
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_cc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ac

    move v7, v8

    :cond_1ac
    move v0, v7

    .line 7773
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1ad

    .line 7774
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7776
    goto/16 :goto_c

    .line 7777
    :cond_1ad
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7780
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->requestShutdown(I)V

    .line 7781
    goto/16 :goto_c

    .line 7756
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_cd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ae

    move v7, v8

    :cond_1ae
    move v0, v7

    .line 7757
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1af

    .line 7758
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7759
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7760
    goto/16 :goto_c

    .line 7761
    :cond_1af
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7764
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7765
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7766
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 7767
    goto/16 :goto_c

    .line 7739
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v7, v8

    :cond_1b0
    move v0, v7

    .line 7740
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1b1

    .line 7741
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7743
    goto/16 :goto_c

    .line 7744
    :cond_1b1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7747
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7748
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7749
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7750
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 7751
    goto/16 :goto_c

    .line 7725
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v7, v8

    :cond_1b2
    move v0, v7

    .line 7726
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1b3

    .line 7727
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7729
    goto/16 :goto_c

    .line 7730
    :cond_1b3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7733
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getHardwareConfig(I)V

    .line 7734
    goto/16 :goto_c

    .line 7710
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v7, v8

    :cond_1b4
    move v0, v7

    .line 7711
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1b5

    .line 7712
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7713
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7714
    goto/16 :goto_c

    .line 7715
    :cond_1b5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7718
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7719
    .local v2, "allow":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setDataAllowed(IZ)V

    .line 7720
    goto/16 :goto_c

    .line 7694
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v7, v8

    :cond_1b6
    move v0, v7

    .line 7695
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1b7

    .line 7696
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7697
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7698
    goto/16 :goto_c

    .line 7699
    :cond_1b7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7702
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 7703
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7704
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 7705
    goto/16 :goto_c

    .line 7679
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v7, v8

    :cond_1b8
    move v0, v7

    .line 7680
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1b9

    .line 7681
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7683
    goto/16 :goto_c

    .line 7684
    :cond_1b9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7687
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7688
    .local v2, "resetType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->nvResetConfig(II)V

    .line 7689
    goto/16 :goto_c

    .line 7664
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v7, v8

    :cond_1ba
    move v0, v7

    .line 7665
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1bb

    .line 7666
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7668
    goto/16 :goto_c

    .line 7669
    :cond_1bb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7672
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7673
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 7674
    goto/16 :goto_c

    .line 7648
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v7, v8

    :cond_1bc
    move v0, v7

    .line 7649
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1bd

    .line 7650
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7652
    goto/16 :goto_c

    .line 7653
    :cond_1bd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7655
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7656
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 7657
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7658
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 7659
    goto/16 :goto_c

    .line 7633
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v7, v8

    :cond_1be
    move v0, v7

    .line 7634
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1bf

    .line 7635
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7637
    goto/16 :goto_c

    .line 7638
    :cond_1bf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7640
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7641
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7642
    .local v2, "itemId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->nvReadItem(II)V

    .line 7643
    goto/16 :goto_c

    .line 7617
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v7, v8

    :cond_1c0
    move v0, v7

    .line 7618
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1c1

    .line 7619
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7621
    goto/16 :goto_c

    .line 7622
    :cond_1c1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7625
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 7626
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7627
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7628
    goto/16 :goto_c

    .line 7602
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c2

    move v7, v8

    :cond_1c2
    move v0, v7

    .line 7603
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1c3

    .line 7604
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7605
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7606
    goto/16 :goto_c

    .line 7607
    :cond_1c3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7609
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7610
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7611
    .local v2, "channelId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 7612
    goto/16 :goto_c

    .line 7586
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v7, v8

    :cond_1c4
    move v0, v7

    .line 7587
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1c5

    .line 7588
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7590
    goto/16 :goto_c

    .line 7591
    :cond_1c5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7594
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7595
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7596
    .local v3, "p2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 7597
    goto/16 :goto_c

    .line 7570
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v7, v8

    :cond_1c6
    move v0, v7

    .line 7571
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1c7

    .line 7572
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7574
    goto/16 :goto_c

    .line 7575
    :cond_1c7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

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
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 7581
    goto/16 :goto_c

    .line 7554
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v7, v8

    :cond_1c8
    move v0, v7

    .line 7555
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1c9

    .line 7556
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7557
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7558
    goto/16 :goto_c

    .line 7559
    :cond_1c9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7562
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7563
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7564
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7565
    goto/16 :goto_c

    .line 7540
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_db
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ca

    move v7, v8

    :cond_1ca
    move v0, v7

    .line 7541
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1cb

    .line 7542
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7544
    goto/16 :goto_c

    .line 7545
    :cond_1cb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7548
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getImsRegistrationState(I)V

    .line 7549
    goto/16 :goto_c

    .line 7522
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v7, v8

    :cond_1cc
    move v0, v7

    .line 7523
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1cd

    .line 7524
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7526
    goto/16 :goto_c

    .line 7527
    :cond_1cd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7529
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7530
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 7531
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 7533
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 7534
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 7535
    goto/16 :goto_c

    .line 7507
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v7, v8

    :cond_1ce
    move v0, v7

    .line 7508
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1cf

    .line 7509
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7511
    goto/16 :goto_c

    .line 7512
    :cond_1cf
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7515
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7516
    .local v2, "rate":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCellInfoListRate(II)V

    .line 7517
    goto/16 :goto_c

    .line 7493
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_de
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d0

    move v7, v8

    :cond_1d0
    move v0, v7

    .line 7494
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1d1

    .line 7495
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7497
    goto/16 :goto_c

    .line 7498
    :cond_1d1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7501
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getCellInfoList(I)V

    .line 7502
    goto/16 :goto_c

    .line 7479
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v7, v8

    :cond_1d2
    move v0, v7

    .line 7480
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1d3

    .line 7481
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7483
    goto/16 :goto_c

    .line 7484
    :cond_1d3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7487
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 7488
    goto/16 :goto_c

    .line 7464
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d4

    move v7, v8

    :cond_1d4
    move v0, v7

    .line 7465
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1d5

    .line 7466
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7468
    goto/16 :goto_c

    .line 7469
    :cond_1d5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7472
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7473
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 7474
    goto/16 :goto_c

    .line 7448
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v7, v8

    :cond_1d6
    move v0, v7

    .line 7449
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1d7

    .line 7450
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7452
    goto/16 :goto_c

    .line 7453
    :cond_1d7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7456
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7457
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7458
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 7459
    goto/16 :goto_c

    .line 7433
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_e2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d8

    move v7, v8

    :cond_1d8
    move v0, v7

    .line 7434
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1d9

    .line 7435
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7437
    goto/16 :goto_c

    .line 7438
    :cond_1d9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7441
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7442
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 7443
    goto/16 :goto_c

    .line 7419
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v7, v8

    :cond_1da
    move v0, v7

    .line 7420
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1db

    .line 7421
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7422
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7423
    goto/16 :goto_c

    .line 7424
    :cond_1db
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7427
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 7428
    goto/16 :goto_c

    .line 7405
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v7, v8

    :cond_1dc
    move v0, v7

    .line 7406
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1dd

    .line 7407
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7408
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7409
    goto/16 :goto_c

    .line 7410
    :cond_1dd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7412
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7413
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 7414
    goto/16 :goto_c

    .line 7390
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v7, v8

    :cond_1de
    move v0, v7

    .line 7391
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1df

    .line 7392
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7393
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7394
    goto/16 :goto_c

    .line 7395
    :cond_1df
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7398
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7399
    .local v2, "available":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 7400
    goto/16 :goto_c

    .line 7375
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v7, v8

    :cond_1e0
    move v0, v7

    .line 7376
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1e1

    .line 7377
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7378
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7379
    goto/16 :goto_c

    .line 7380
    :cond_1e1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7383
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7384
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 7385
    goto/16 :goto_c

    .line 7361
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v7, v8

    :cond_1e2
    move v0, v7

    .line 7362
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1e3

    .line 7363
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7365
    goto/16 :goto_c

    .line 7366
    :cond_1e3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7369
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getSmscAddress(I)V

    .line 7370
    goto/16 :goto_c

    .line 7347
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v7, v8

    :cond_1e4
    move v0, v7

    .line 7348
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1e5

    .line 7349
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7350
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7351
    goto/16 :goto_c

    .line 7352
    :cond_1e5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7355
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 7356
    goto/16 :goto_c

    .line 7333
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v7, v8

    :cond_1e6
    move v0, v7

    .line 7334
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1e7

    .line 7335
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7336
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7337
    goto/16 :goto_c

    .line 7338
    :cond_1e7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7340
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7341
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getDeviceIdentity(I)V

    .line 7342
    goto/16 :goto_c

    .line 7318
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v7, v8

    :cond_1e8
    move v0, v7

    .line 7319
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1e9

    .line 7320
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7322
    goto/16 :goto_c

    .line 7323
    :cond_1e9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7326
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7327
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 7328
    goto/16 :goto_c

    .line 7302
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_eb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ea

    move v7, v8

    :cond_1ea
    move v0, v7

    .line 7303
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1eb

    .line 7304
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7305
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7306
    goto/16 :goto_c

    .line 7307
    :cond_1eb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7310
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 7311
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7312
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 7313
    goto/16 :goto_c

    .line 7288
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v7, v8

    :cond_1ec
    move v0, v7

    .line 7289
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1ed

    .line 7290
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7292
    goto/16 :goto_c

    .line 7293
    :cond_1ed
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7296
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getCDMASubscription(I)V

    .line 7297
    goto/16 :goto_c

    .line 7273
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v7, v8

    :cond_1ee
    move v0, v7

    .line 7274
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1ef

    .line 7275
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7276
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7277
    goto/16 :goto_c

    .line 7278
    :cond_1ef
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7280
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7281
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7282
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 7283
    goto/16 :goto_c

    .line 7258
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v7, v8

    :cond_1f0
    move v0, v7

    .line 7259
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1f1

    .line 7260
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7262
    goto/16 :goto_c

    .line 7263
    :cond_1f1
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7266
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7267
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7268
    goto/16 :goto_c

    .line 7244
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v7, v8

    :cond_1f2
    move v0, v7

    .line 7245
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1f3

    .line 7246
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7248
    goto/16 :goto_c

    .line 7249
    :cond_1f3
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7252
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 7253
    goto/16 :goto_c

    .line 7229
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v7, v8

    :cond_1f4
    move v0, v7

    .line 7230
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1f5

    .line 7231
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7233
    goto/16 :goto_c

    .line 7234
    :cond_1f5
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7236
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7237
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7238
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 7239
    goto/16 :goto_c

    .line 7214
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v7, v8

    :cond_1f6
    move v0, v7

    .line 7215
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1f7

    .line 7216
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7217
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7218
    goto/16 :goto_c

    .line 7219
    :cond_1f7
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7221
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7222
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 7223
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 7224
    goto/16 :goto_c

    .line 7200
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v7, v8

    :cond_1f8
    move v0, v7

    .line 7201
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1f9

    .line 7202
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7203
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7204
    goto/16 :goto_c

    .line 7205
    :cond_1f9
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7207
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7208
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 7209
    goto/16 :goto_c

    .line 7184
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v7, v8

    :cond_1fa
    move v0, v7

    .line 7185
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1fb

    .line 7186
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7187
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7188
    goto/16 :goto_c

    .line 7189
    :cond_1fb
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7192
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7193
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7194
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7195
    goto/16 :goto_c

    .line 7168
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_f4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fc

    move v7, v8

    :cond_1fc
    move v0, v7

    .line 7169
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1fd

    .line 7170
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7172
    goto/16 :goto_c

    .line 7173
    :cond_1fd
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7176
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 7177
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7178
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 7179
    goto/16 :goto_c

    .line 7151
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v7, v8

    :cond_1fe
    move v0, v7

    .line 7152
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_1ff

    .line 7153
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7155
    goto/16 :goto_c

    .line 7156
    :cond_1ff
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7159
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7160
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7161
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 7162
    .local v4, "off":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 7163
    goto/16 :goto_c

    .line 7136
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v7, v8

    :cond_200
    move v0, v7

    .line 7137
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_201

    .line 7138
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7140
    goto/16 :goto_c

    .line 7141
    :cond_201
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7144
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7145
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 7146
    goto/16 :goto_c

    .line 7122
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v7, v8

    :cond_202
    move v0, v7

    .line 7123
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_203

    .line 7124
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7126
    goto/16 :goto_c

    .line 7127
    :cond_203
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7130
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 7131
    goto/16 :goto_c

    .line 7107
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v7, v8

    :cond_204
    move v0, v7

    .line 7108
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_205

    .line 7109
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7110
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7111
    goto/16 :goto_c

    .line 7112
    :cond_205
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7115
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7116
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 7117
    goto/16 :goto_c

    .line 7093
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v7, v8

    :cond_206
    move v0, v7

    .line 7094
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_207

    .line 7095
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7096
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7097
    goto/16 :goto_c

    .line 7098
    :cond_207
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7101
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getTTYMode(I)V

    .line 7102
    goto/16 :goto_c

    .line 7078
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v7, v8

    :cond_208
    move v0, v7

    .line 7079
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_209

    .line 7080
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7082
    goto/16 :goto_c

    .line 7083
    :cond_209
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7086
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7087
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setTTYMode(II)V

    .line 7088
    goto/16 :goto_c

    .line 7064
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v7, v8

    :cond_20a
    move v0, v7

    .line 7065
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_20b

    .line 7066
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7068
    goto/16 :goto_c

    .line 7069
    :cond_20b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7072
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 7073
    goto/16 :goto_c

    .line 7049
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v7, v8

    :cond_20c
    move v0, v7

    .line 7050
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_20d

    .line 7051
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7053
    goto/16 :goto_c

    .line 7054
    :cond_20d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7057
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7058
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 7059
    goto/16 :goto_c

    .line 7034
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v7, v8

    :cond_20e
    move v0, v7

    .line 7035
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_20f

    .line 7036
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7037
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7038
    goto/16 :goto_c

    .line 7039
    :cond_20f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7042
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7043
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 7044
    goto/16 :goto_c

    .line 7019
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v7, v8

    :cond_210
    move v0, v7

    .line 7020
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_211

    .line 7021
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7022
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7023
    goto/16 :goto_c

    .line 7024
    :cond_211
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7027
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7028
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 7029
    goto/16 :goto_c

    .line 7005
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v7, v8

    :cond_212
    move v0, v7

    .line 7006
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_213

    .line 7007
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7009
    goto/16 :goto_c

    .line 7010
    :cond_213
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7013
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getNeighboringCids(I)V

    .line 7014
    goto/16 :goto_c

    .line 6991
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_100
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_214

    move v7, v8

    :cond_214
    move v0, v7

    .line 6992
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_215

    .line 6993
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6994
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6995
    goto/16 :goto_c

    .line 6996
    :cond_215
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6999
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 7000
    goto/16 :goto_c

    .line 6976
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_101
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_216

    move v7, v8

    :cond_216
    move v0, v7

    .line 6977
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_217

    .line 6978
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6980
    goto/16 :goto_c

    .line 6981
    :cond_217
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6984
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6985
    .local v2, "nwType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 6986
    goto/16 :goto_c

    .line 6962
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_102
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_218

    move v7, v8

    :cond_218
    move v0, v7

    .line 6963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_219

    .line 6964
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6966
    goto/16 :goto_c

    .line 6967
    :cond_219
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6970
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->explicitCallTransfer(I)V

    .line 6971
    goto/16 :goto_c

    .line 6947
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_103
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21a

    move v7, v8

    :cond_21a
    move v0, v7

    .line 6948
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_21b

    .line 6949
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6951
    goto/16 :goto_c

    .line 6952
    :cond_21b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6955
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6956
    .local v2, "accept":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 6957
    goto/16 :goto_c

    .line 6932
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_104
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21c

    move v7, v8

    :cond_21c
    move v0, v7

    .line 6933
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_21d

    .line 6934
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6935
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6936
    goto/16 :goto_c

    .line 6937
    :cond_21d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6940
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6941
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 6942
    goto/16 :goto_c

    .line 6917
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_105
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21e

    move v7, v8

    :cond_21e
    move v0, v7

    .line 6918
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_21f

    .line 6919
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6920
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6921
    goto/16 :goto_c

    .line 6922
    :cond_21f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6925
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6926
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 6927
    goto/16 :goto_c

    .line 6903
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_106
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_220

    move v7, v8

    :cond_220
    move v0, v7

    .line 6904
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_221

    .line 6905
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6906
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6907
    goto/16 :goto_c

    .line 6908
    :cond_221
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6911
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getAvailableBandModes(I)V

    .line 6912
    goto/16 :goto_c

    .line 6888
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_107
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_222

    move v7, v8

    :cond_222
    move v0, v7

    .line 6889
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_223

    .line 6890
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6892
    goto/16 :goto_c

    .line 6893
    :cond_223
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6896
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6897
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setBandMode(II)V

    .line 6898
    goto/16 :goto_c

    .line 6873
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_108
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_224

    move v7, v8

    :cond_224
    move v0, v7

    .line 6874
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_225

    .line 6875
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6876
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6877
    goto/16 :goto_c

    .line 6878
    :cond_225
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6880
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6881
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6882
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 6883
    goto/16 :goto_c

    .line 6857
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_109
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_226

    move v7, v8

    :cond_226
    move v0, v7

    .line 6858
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_227

    .line 6859
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6860
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6861
    goto/16 :goto_c

    .line 6862
    :cond_227
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6864
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6865
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 6866
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6867
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 6868
    goto/16 :goto_c

    .line 6842
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_10a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_228

    move v7, v8

    :cond_228
    move v0, v7

    .line 6843
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_229

    .line 6844
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6845
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6846
    goto/16 :goto_c

    .line 6847
    :cond_229
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6850
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6851
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 6852
    goto/16 :goto_c

    .line 6828
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_10b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22a

    move v7, v8

    :cond_22a
    move v0, v7

    .line 6829
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_22b

    .line 6830
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6832
    goto/16 :goto_c

    .line 6833
    :cond_22b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6836
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getDataCallList(I)V

    .line 6837
    goto/16 :goto_c

    .line 6814
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22c

    move v7, v8

    :cond_22c
    move v0, v7

    .line 6815
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_22d

    .line 6816
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6818
    goto/16 :goto_c

    .line 6819
    :cond_22d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6822
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getClip(I)V

    .line 6823
    goto/16 :goto_c

    .line 6800
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22e

    move v7, v8

    :cond_22e
    move v0, v7

    .line 6801
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_22f

    .line 6802
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6803
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6804
    goto/16 :goto_c

    .line 6805
    :cond_22f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6808
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getMute(I)V

    .line 6809
    goto/16 :goto_c

    .line 6785
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_230

    move v7, v8

    :cond_230
    move v0, v7

    .line 6786
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_231

    .line 6787
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6788
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6789
    goto/16 :goto_c

    .line 6790
    :cond_231
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6793
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6794
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setMute(IZ)V

    .line 6795
    goto/16 :goto_c

    .line 6770
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_10f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_232

    move v7, v8

    :cond_232
    move v0, v7

    .line 6771
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_233

    .line 6772
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6774
    goto/16 :goto_c

    .line 6775
    :cond_233
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6778
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6779
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->separateConnection(II)V

    .line 6780
    goto/16 :goto_c

    .line 6756
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_110
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_234

    move v7, v8

    :cond_234
    move v0, v7

    .line 6757
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_235

    .line 6758
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6759
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6760
    goto/16 :goto_c

    .line 6761
    :cond_235
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6764
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getBasebandVersion(I)V

    .line 6765
    goto/16 :goto_c

    .line 6742
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_111
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_236

    move v7, v8

    :cond_236
    move v0, v7

    .line 6743
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_237

    .line 6744
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6746
    goto/16 :goto_c

    .line 6747
    :cond_237
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6749
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6750
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->stopDtmf(I)V

    .line 6751
    goto/16 :goto_c

    .line 6727
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_112
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_238

    move v7, v8

    :cond_238
    move v0, v7

    .line 6728
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_239

    .line 6729
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6730
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6731
    goto/16 :goto_c

    .line 6732
    :cond_239
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6735
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6736
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 6737
    goto/16 :goto_c

    .line 6713
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_113
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23a

    move v7, v8

    :cond_23a
    move v0, v7

    .line 6714
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_23b

    .line 6715
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6717
    goto/16 :goto_c

    .line 6718
    :cond_23b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6721
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getAvailableNetworks(I)V

    .line 6722
    goto/16 :goto_c

    .line 6698
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_114
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23c

    move v7, v8

    :cond_23c
    move v0, v7

    .line 6699
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_23d

    .line 6700
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6701
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6702
    goto/16 :goto_c

    .line 6703
    :cond_23d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6706
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6707
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 6708
    goto/16 :goto_c

    .line 6684
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_115
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23e

    move v7, v8

    :cond_23e
    move v0, v7

    .line 6685
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_23f

    .line 6686
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6687
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6688
    goto/16 :goto_c

    .line 6689
    :cond_23f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6691
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6692
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 6693
    goto/16 :goto_c

    .line 6670
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_116
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_240

    move v7, v8

    :cond_240
    move v0, v7

    .line 6671
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_241

    .line 6672
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6674
    goto/16 :goto_c

    .line 6675
    :cond_241
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6678
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 6679
    goto/16 :goto_c

    .line 6653
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_117
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_242

    move v7, v8

    :cond_242
    move v0, v7

    .line 6654
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_243

    .line 6655
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6657
    goto/16 :goto_c

    .line 6658
    :cond_243
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6661
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6662
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6663
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6664
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6665
    goto/16 :goto_c

    .line 6634
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_118
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_244

    move v7, v8

    .line 6635
    .restart local v7    # "_hidl_is_oneway":Z
    :cond_244
    if-eq v7, v8, :cond_245

    .line 6636
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6638
    goto/16 :goto_c

    .line 6639
    :cond_245
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6642
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6643
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6644
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6645
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6646
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6647
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 6648
    goto/16 :goto_c

    .line 6616
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v10    # "lockState":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_119
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_246

    move v7, v8

    .line 6617
    .restart local v7    # "_hidl_is_oneway":Z
    :cond_246
    if-eq v7, v8, :cond_247

    .line 6618
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6619
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6620
    goto/16 :goto_c

    .line 6621
    :cond_247
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6623
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6624
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6625
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6626
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6627
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6628
    .local v11, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6629
    goto/16 :goto_c

    .line 6600
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "serviceClass":I
    .end local v11    # "appId":Ljava/lang/String;
    :pswitch_11a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_248

    move v7, v8

    :cond_248
    move v0, v7

    .line 6601
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_249

    .line 6602
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6604
    goto/16 :goto_c

    .line 6605
    :cond_249
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6608
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6609
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 6610
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 6611
    goto/16 :goto_c

    .line 6586
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_11b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24a

    move v7, v8

    :cond_24a
    move v0, v7

    .line 6587
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_24b

    .line 6588
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6590
    goto/16 :goto_c

    .line 6591
    :cond_24b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6593
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6594
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->acceptCall(I)V

    .line 6595
    goto/16 :goto_c

    .line 6570
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24c

    move v7, v8

    :cond_24c
    move v0, v7

    .line 6571
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_24d

    .line 6572
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6574
    goto/16 :goto_c

    .line 6575
    :cond_24d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6578
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6579
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6580
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 6581
    goto/16 :goto_c

    .line 6554
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_11d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24e

    move v7, v8

    :cond_24e
    move v0, v7

    .line 6555
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_24f

    .line 6556
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6557
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6558
    goto/16 :goto_c

    .line 6559
    :cond_24f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6562
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6563
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6564
    .local v3, "serviceClass":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCallWaiting(IZI)V

    .line 6565
    goto/16 :goto_c

    .line 6539
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_11e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_250

    move v7, v8

    :cond_250
    move v0, v7

    .line 6540
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_251

    .line 6541
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6543
    goto/16 :goto_c

    .line 6544
    :cond_251
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6547
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6548
    .local v2, "serviceClass":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getCallWaiting(II)V

    .line 6549
    goto/16 :goto_c

    .line 6523
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_11f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_252

    move v7, v8

    :cond_252
    move v0, v7

    .line 6524
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_253

    .line 6525
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6527
    goto/16 :goto_c

    .line 6528
    :cond_253
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6531
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6532
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6533
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6534
    goto/16 :goto_c

    .line 6507
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_120
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_254

    move v7, v8

    :cond_254
    move v0, v7

    .line 6508
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_255

    .line 6509
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6511
    goto/16 :goto_c

    .line 6512
    :cond_255
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6515
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 6516
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6517
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 6518
    goto/16 :goto_c

    .line 6492
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_121
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_256

    move v7, v8

    :cond_256
    move v0, v7

    .line 6493
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_257

    .line 6494
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6495
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6496
    goto/16 :goto_c

    .line 6497
    :cond_257
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6500
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6501
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setClir(II)V

    .line 6502
    goto/16 :goto_c

    .line 6478
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_122
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_258

    move v7, v8

    :cond_258
    move v0, v7

    .line 6479
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_259

    .line 6480
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6481
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6482
    goto/16 :goto_c

    .line 6483
    :cond_259
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6485
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6486
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getClir(I)V

    .line 6487
    goto/16 :goto_c

    .line 6464
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_123
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25a

    move v7, v8

    :cond_25a
    move v0, v7

    .line 6465
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_25b

    .line 6466
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6468
    goto/16 :goto_c

    .line 6469
    :cond_25b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6472
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->cancelPendingUssd(I)V

    .line 6473
    goto/16 :goto_c

    .line 6449
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_124
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25c

    move v7, v8

    :cond_25c
    move v0, v7

    .line 6450
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_25d

    .line 6451
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6452
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6453
    goto/16 :goto_c

    .line 6454
    :cond_25d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6457
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6458
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 6459
    goto/16 :goto_c

    .line 6433
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_125
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25e

    move v7, v8

    :cond_25e
    move v0, v7

    .line 6434
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_25f

    .line 6435
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6437
    goto/16 :goto_c

    .line 6438
    :cond_25f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6441
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 6442
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6443
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 6444
    goto/16 :goto_c

    .line 6413
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_126
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_260

    move v7, v8

    .line 6414
    .restart local v7    # "_hidl_is_oneway":Z
    :cond_260
    if-eq v7, v8, :cond_261

    .line 6415
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6417
    goto/16 :goto_c

    .line 6418
    :cond_261
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6420
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6421
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6422
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 6423
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6425
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6426
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6427
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 6428
    goto/16 :goto_c

    .line 6397
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v10    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v11    # "modemCognitive":Z
    .end local v12    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_127
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_262

    move v7, v8

    :cond_262
    move v0, v7

    .line 6398
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_263

    .line 6399
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6400
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6401
    goto/16 :goto_c

    .line 6402
    :cond_263
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6405
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6406
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6407
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6408
    goto/16 :goto_c

    .line 6381
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_128
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_264

    move v7, v8

    :cond_264
    move v0, v7

    .line 6382
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_265

    .line 6383
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6384
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6385
    goto/16 :goto_c

    .line 6386
    :cond_265
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6389
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 6390
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6391
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 6392
    goto/16 :goto_c

    .line 6366
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_129
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_266

    move v7, v8

    :cond_266
    move v0, v7

    .line 6367
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_267

    .line 6368
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6369
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6370
    goto/16 :goto_c

    .line 6371
    :cond_267
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6373
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6374
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6375
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 6376
    goto/16 :goto_c

    .line 6351
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_12a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_268

    move v7, v8

    :cond_268
    move v0, v7

    .line 6352
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_269

    .line 6353
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6354
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6355
    goto/16 :goto_c

    .line 6356
    :cond_269
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6358
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6359
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6360
    .local v2, "on":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setRadioPower(IZ)V

    .line 6361
    goto/16 :goto_c

    .line 6337
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_12b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26a

    move v7, v8

    :cond_26a
    move v0, v7

    .line 6338
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_26b

    .line 6339
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6340
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6341
    goto/16 :goto_c

    .line 6342
    :cond_26b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6345
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getOperator(I)V

    .line 6346
    goto/16 :goto_c

    .line 6323
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26c

    move v7, v8

    :cond_26c
    move v0, v7

    .line 6324
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_26d

    .line 6325
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6326
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6327
    goto/16 :goto_c

    .line 6328
    :cond_26d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6330
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6331
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getDataRegistrationState(I)V

    .line 6332
    goto/16 :goto_c

    .line 6309
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26e

    move v7, v8

    :cond_26e
    move v0, v7

    .line 6310
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_26f

    .line 6311
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6313
    goto/16 :goto_c

    .line 6314
    :cond_26f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6317
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 6318
    goto/16 :goto_c

    .line 6295
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_270

    move v7, v8

    :cond_270
    move v0, v7

    .line 6296
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_271

    .line 6297
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6298
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6299
    goto/16 :goto_c

    .line 6300
    :cond_271
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6303
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getSignalStrength(I)V

    .line 6304
    goto/16 :goto_c

    .line 6281
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_272

    move v7, v8

    :cond_272
    move v0, v7

    .line 6282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_273

    .line 6283
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6285
    goto/16 :goto_c

    .line 6286
    :cond_273
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6289
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getLastCallFailCause(I)V

    .line 6290
    goto/16 :goto_c

    .line 6267
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_130
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_274

    move v7, v8

    :cond_274
    move v0, v7

    .line 6268
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_275

    .line 6269
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6271
    goto/16 :goto_c

    .line 6272
    :cond_275
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6274
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6275
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->rejectCall(I)V

    .line 6276
    goto/16 :goto_c

    .line 6253
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_131
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_276

    move v7, v8

    :cond_276
    move v0, v7

    .line 6254
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_277

    .line 6255
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6256
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6257
    goto/16 :goto_c

    .line 6258
    :cond_277
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6261
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->conference(I)V

    .line 6262
    goto/16 :goto_c

    .line 6239
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_132
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_278

    move v7, v8

    :cond_278
    move v0, v7

    .line 6240
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_279

    .line 6241
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6243
    goto/16 :goto_c

    .line 6244
    :cond_279
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6247
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 6248
    goto/16 :goto_c

    .line 6225
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_133
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27a

    move v7, v8

    :cond_27a
    move v0, v7

    .line 6226
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_27b

    .line 6227
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6228
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6229
    goto/16 :goto_c

    .line 6230
    :cond_27b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6233
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 6234
    goto/16 :goto_c

    .line 6211
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_134
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27c

    move v7, v8

    :cond_27c
    move v0, v7

    .line 6212
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_27d

    .line 6213
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6214
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6215
    goto/16 :goto_c

    .line 6216
    :cond_27d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6218
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6219
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 6220
    goto/16 :goto_c

    .line 6196
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_135
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27e

    move v7, v8

    :cond_27e
    move v0, v7

    .line 6197
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_27f

    .line 6198
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6200
    goto/16 :goto_c

    .line 6201
    :cond_27f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6204
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6205
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->hangup(II)V

    .line 6206
    goto/16 :goto_c

    .line 6181
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_136
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_280

    move v7, v8

    :cond_280
    move v0, v7

    .line 6182
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_281

    .line 6183
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6185
    goto/16 :goto_c

    .line 6186
    :cond_281
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6189
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6190
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 6191
    goto/16 :goto_c

    .line 6165
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_137
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_282

    move v7, v8

    :cond_282
    move v0, v7

    .line 6166
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_283

    .line 6167
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6169
    goto/16 :goto_c

    .line 6170
    :cond_283
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6173
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6174
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6175
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6176
    goto/16 :goto_c

    .line 6151
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_138
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_284

    move v7, v8

    :cond_284
    move v0, v7

    .line 6152
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_285

    .line 6153
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6155
    goto/16 :goto_c

    .line 6156
    :cond_285
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6159
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getCurrentCalls(I)V

    .line 6160
    goto/16 :goto_c

    .line 6136
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_139
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_286

    move v7, v8

    :cond_286
    move v0, v7

    .line 6137
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_287

    .line 6138
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6139
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6140
    goto/16 :goto_c

    .line 6141
    :cond_287
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6144
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6145
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 6146
    goto/16 :goto_c

    .line 6119
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_13a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_288

    move v7, v8

    :cond_288
    move v0, v7

    .line 6120
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_289

    .line 6121
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6123
    goto/16 :goto_c

    .line 6124
    :cond_289
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6126
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6127
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6128
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6129
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6130
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6131
    goto/16 :goto_c

    .line 6102
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28a

    move v7, v8

    :cond_28a
    move v0, v7

    .line 6103
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_28b

    .line 6104
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6106
    goto/16 :goto_c

    .line 6107
    :cond_28b
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6110
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6111
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6112
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6113
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6114
    goto/16 :goto_c

    .line 6085
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28c

    move v7, v8

    :cond_28c
    move v0, v7

    .line 6086
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_28d

    .line 6087
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6088
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6089
    goto/16 :goto_c

    .line 6090
    :cond_28d
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6093
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6094
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6095
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6096
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6097
    goto/16 :goto_c

    .line 6069
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28e

    move v7, v8

    :cond_28e
    move v0, v7

    .line 6070
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_28f

    .line 6071
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6073
    goto/16 :goto_c

    .line 6074
    :cond_28f
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6077
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6078
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6079
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6080
    goto/16 :goto_c

    .line 6052
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_290

    move v7, v8

    :cond_290
    move v0, v7

    .line 6053
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_291

    .line 6054
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6056
    goto/16 :goto_c

    .line 6057
    :cond_291
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6060
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6061
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6062
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 6063
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6064
    goto/16 :goto_c

    .line 6036
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_13f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_292

    move v7, v8

    :cond_292
    move v0, v7

    .line 6037
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_293

    .line 6038
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6040
    goto :goto_c

    .line 6041
    :cond_293
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6044
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6045
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6046
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 6047
    goto :goto_c

    .line 6022
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_140
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_294

    move v7, v8

    :cond_294
    move v0, v7

    .line 6023
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v8, :cond_295

    .line 6024
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6025
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6026
    goto :goto_c

    .line 6027
    :cond_295
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6030
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->getIccCardStatus(I)V

    .line 6031
    goto :goto_c

    .line 6005
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_141
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_296

    goto :goto_b

    :cond_296
    move v8, v7

    :goto_b
    move v0, v8

    .line 6006
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_297

    .line 6007
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6008
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6009
    goto :goto_c

    .line 6010
    :cond_297
    invoke-virtual {v14, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6012
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 6013
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 6014
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 6015
    invoke-virtual {v15, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6017
    nop

    .line 11128
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_298
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_141
        :pswitch_140
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

    .line 5956
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 5984
    const-string v0, "vendor.mediatek.hardware.radio@3.11::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5985
    return-object p0

    .line 5987
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

    .line 5991
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 5992
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 5946
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 5996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 5978
    const/4 v0, 0x1

    return v0
.end method
