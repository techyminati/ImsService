.class public abstract Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2351
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2354
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

    .line 2379
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2428
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2429
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2430
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2431
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2432
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

    .line 2391
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
        0x32t
        -0x74t
        0x62t
        -0x21t
        -0x57t
        -0xct
        -0x2ft
        -0x4dt
        0x1bt
        -0x1ft
        -0x6t
        0x21t
        -0xet
        0x38t
        0x7ft
        -0x2bt
        -0xet
        0x21t
        -0x28t
        0xdt
        0x47t
        -0x2ct
        -0x7bt
        0x0t
        0x5t
        0x59t
        -0x6ct
        0x76t
        0x8t
        -0x4bt
        -0x31t
        -0x1ct
    .end array-data

    :array_1
    .array-data 1
        0x2ct
        0x9t
        0x3at
        -0x2ft
        0x30t
        0x6ct
        0x6t
        0x77t
        -0x4dt
        -0x2t
        -0xet
        0x7bt
        -0x4ft
        -0x67t
        -0x3ft
        -0x17t
        -0x1ft
        0x13t
        -0xct
        0x38t
        -0x1et
        -0x3ct
        -0x47t
        -0x1dt
        -0x28t
        0x4et
        0x39t
        0x34t
        0x74t
        0x7dt
        -0x4at
        0x1et
    .end array-data

    :array_2
    .array-data 1
        -0x65t
        0x28t
        -0x5t
        -0x1t
        -0x6at
        -0x17t
        -0x60t
        0x2t
        0x52t
        0x77t
        -0x1at
        -0x4et
        0x51t
        0x29t
        0x0t
        -0x8t
        -0x18t
        0x6et
        0x7t
        0x70t
        0x5et
        -0xat
        -0x65t
        0x18t
        0x60t
        0x2bt
        -0x2bt
        0x1ct
        -0x3ct
        -0x4bt
        0x15t
        -0x53t
    .end array-data

    :array_3
    .array-data 1
        -0x5t
        -0x58t
        0x7t
        0x62t
        -0x5ct
        0x5at
        0x6et
        0x69t
        0x45t
        0x27t
        0x71t
        -0x24t
        -0x3ft
        -0x4ft
        -0x36t
        0x54t
        -0x29t
        0x3ct
        0x1at
        -0x3ct
        -0x25t
        0xct
        -0x1t
        0x5dt
        -0x43t
        0x41t
        0x70t
        0x65t
        -0x36t
        0x27t
        0x18t
        -0x66t
    .end array-data

    :array_4
    .array-data 1
        0x48t
        0x16t
        0x5et
        0x7bt
        0x2at
        0x2dt
        -0x59t
        -0x73t
        -0x42t
        0x36t
        -0xct
        0x5t
        0x52t
        -0x56t
        -0x72t
        -0x1at
        -0x26t
        -0x32t
        -0x77t
        0x75t
        -0x73t
        0x29t
        0x58t
        -0x63t
        0x5t
        0x5t
        -0xbt
        0x65t
        0x30t
        -0x54t
        0x49t
        -0x52t
    .end array-data

    :array_5
    .array-data 1
        0xet
        -0x67t
        -0x3at
        0xbt
        0x0t
        0x6bt
        -0x48t
        -0x28t
        -0x79t
        -0x2ft
        0xat
        0x30t
        -0x4at
        -0x35t
        0x11t
        -0x2bt
        0x7et
        -0x6ft
        -0x1ct
        0x1t
        -0xat
        0x74t
        0x4bt
        -0x6et
        0x8t
        -0x4bt
        0x62t
        -0x77t
        0x0t
        0x57t
        -0x18t
        0x7at
    .end array-data

    :array_6
    .array-data 1
        0x15t
        -0x7ct
        0x7ct
        -0x2et
        0x6bt
        -0x38t
        -0x5t
        -0x1ct
        -0x6t
        -0x36t
        0x73t
        0xft
        -0x77t
        0xbt
        0x5dt
        -0x5bt
        0x76t
        0xft
        0x14t
        -0x4ft
        0x4ft
        0x45t
        -0xct
        -0x26t
        0x5at
        0x2at
        -0x11t
        0x39t
        0x74t
        0x4et
        -0x3t
        -0x59t
    .end array-data

    :array_7
    .array-data 1
        0x3bt
        -0x73t
        -0x74t
        -0x2ct
        0x35t
        -0x5ct
        0x45t
        -0x6et
        -0x1at
        0x1t
        0x45t
        -0x4ft
        -0x5et
        0x5et
        0x22t
        -0x80t
        0x21t
        -0x69t
        -0x57t
        -0x79t
        0x32t
        -0x5et
        0x71t
        -0x23t
        0x4dt
        -0x74t
        -0x15t
        -0x17t
        0x2dt
        0x6at
        0x24t
        0x19t
    .end array-data

    :array_8
    .array-data 1
        -0x34t
        0x3dt
        0x3at
        -0x2bt
        -0x6ft
        -0x7t
        -0x70t
        0xdt
        -0x13t
        -0x1dt
        -0x7at
        0x4ct
        -0x74t
        0x3t
        0x58t
        0x68t
        -0x71t
        -0x1et
        0xat
        0x6at
        -0x7et
        0x40t
        -0x2dt
        0x5ft
        -0x25t
        0x76t
        0x20t
        0x27t
        0x3ft
        -0x2et
        -0x8t
        0x2ct
    .end array-data

    :array_9
    .array-data 1
        -0x5et
        -0x49t
        -0x2ct
        0x27t
        -0x36t
        -0x3ft
        0x0t
        -0x2at
        -0x59t
        -0x4dt
        -0x57t
        -0x3ct
        -0x24t
        -0x26t
        -0x78t
        -0x2ft
        0xat
        0x63t
        0x6at
        -0x14t
        -0x59t
        -0x7dt
        -0x74t
        0x3et
        0x27t
        0x4ct
        -0x68t
        -0x11t
        -0x1dt
        -0x77t
        0x54t
        0x7ft
    .end array-data

    :array_a
    .array-data 1
        -0x33t
        -0x59t
        0x52t
        -0x52t
        -0x55t
        -0x56t
        -0x44t
        0x20t
        0x48t
        0x6at
        -0x7et
        -0x54t
        0x57t
        -0x5dt
        -0x23t
        0x10t
        0x77t
        -0x7bt
        -0x40t
        0x6t
        0x9t
        0x4at
        0x34t
        -0x65t
        -0x3bt
        -0x1et
        0x24t
        -0x18t
        -0x56t
        0x22t
        -0x5ft
        0x7ct
    .end array-data

    :array_b
    .array-data 1
        -0x4t
        -0x3bt
        -0x38t
        -0x38t
        -0x75t
        -0x7bt
        -0x57t
        -0xat
        0x3ft
        -0x46t
        0x67t
        -0x27t
        -0x1at
        0x74t
        -0x26t
        0x46t
        0x6ct
        0x72t
        -0x57t
        -0x74t
        -0x5et
        -0x79t
        -0xdt
        0x43t
        -0x5t
        0x57t
        0x21t
        -0x30t
        -0x68t
        0x71t
        0x3ft
        -0x7at
    .end array-data

    :array_c
    .array-data 1
        0x5ct
        -0x72t
        -0x5t
        -0x47t
        -0x3ct
        0x51t
        -0x5bt
        -0x69t
        0x37t
        -0x13t
        0x2ct
        0x6ct
        0x20t
        0x23t
        0xat
        -0x52t
        0x47t
        0x45t
        -0x7dt
        -0x64t
        -0x60t
        0x1dt
        -0x80t
        -0x78t
        -0x2at
        -0x24t
        -0x37t
        0x2t
        0xet
        0x52t
        -0x2et
        -0x3bt
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

    .line 2359
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.11::IRadioIndication"

    const-string v2, "vendor.mediatek.hardware.radio@3.10::IRadioIndication"

    const-string v3, "vendor.mediatek.hardware.radio@3.9::IRadioIndication"

    const-string v4, "vendor.mediatek.hardware.radio@3.8::IRadioIndication"

    const-string v5, "vendor.mediatek.hardware.radio@3.7::IRadioIndication"

    const-string v6, "vendor.mediatek.hardware.radio@3.4::IRadioIndication"

    const-string v7, "vendor.mediatek.hardware.radio@3.3::IRadioIndication"

    const-string v8, "vendor.mediatek.hardware.radio@3.2::IRadioIndication"

    const-string v9, "vendor.mediatek.hardware.radio@3.1::IRadioIndication"

    const-string v10, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    const-string v11, "android.hardware.radio@1.2::IRadioIndication"

    const-string v12, "android.hardware.radio@1.1::IRadioIndication"

    const-string v13, "android.hardware.radio@1.0::IRadioIndication"

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

    .line 2385
    const-string v0, "vendor.mediatek.hardware.radio@3.11::IRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2416
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2438
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2440
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2468
    const-string v0, "android.hardware.radio@1.1::IRadioIndication"

    const-string v1, "android.hardware.radio@1.2::IRadioIndication"

    const-string v2, "android.hardware.radio@1.0::IRadioIndication"

    const-string v3, "vendor.mediatek.hardware.radio@3.0::IRadioIndication"

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 4443
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    move v0, v5

    .line 4444
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_106

    .line 4445
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4447
    goto/16 :goto_7

    .line 4430
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    move v1, v5

    .line 4431
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_2

    .line 4432
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4433
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4434
    goto/16 :goto_7

    .line 4435
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4437
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->notifySyspropsChanged()V

    .line 4438
    goto/16 :goto_7

    .line 4414
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v1, v6

    .line 4415
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 4416
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4417
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4418
    goto/16 :goto_7

    .line 4419
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4421
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4422
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4423
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4424
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4425
    goto/16 :goto_7

    .line 4399
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

    .line 4400
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 4401
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4402
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4403
    goto/16 :goto_7

    .line 4404
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4406
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->ping()V

    .line 4407
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4408
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4409
    goto/16 :goto_7

    .line 4389
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    move v0, v5

    .line 4390
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_106

    .line 4391
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4392
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4393
    goto/16 :goto_7

    .line 4376
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    move v1, v5

    .line 4377
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_9

    .line 4378
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4379
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4380
    goto/16 :goto_7

    .line 4381
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4383
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->setHALInstrumentation()V

    .line 4384
    goto/16 :goto_7

    .line 4337
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    move v1, v6

    .line 4338
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 4339
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4340
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4341
    goto/16 :goto_7

    .line 4342
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4344
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4345
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4347
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4349
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4350
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4351
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4352
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 4353
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 4355
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 4356
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 4358
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 4362
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4363
    nop

    .line 4353
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4359
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4366
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4368
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4370
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4371
    goto/16 :goto_7

    .line 4321
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

    .line 4322
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 4323
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4324
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4325
    goto/16 :goto_7

    .line 4326
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4328
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4329
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4330
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4332
    goto/16 :goto_7

    .line 4304
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

    .line 4305
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 4306
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4307
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4308
    goto/16 :goto_7

    .line 4309
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 4312
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4313
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4314
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4315
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4316
    goto/16 :goto_7

    .line 4288
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

    .line 4289
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 4290
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4291
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4292
    goto/16 :goto_7

    .line 4293
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4296
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4297
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4298
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4299
    goto/16 :goto_7

    .line 4273
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v5, v6

    :cond_14
    move v0, v5

    .line 4274
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15

    .line 4275
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4276
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4277
    goto/16 :goto_7

    .line 4278
    :cond_15
    const-string v1, "vendor.mediatek.hardware.radio@3.9::IRadioIndication"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4280
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4281
    .local v1, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4282
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->incomingCallAdditionalInfoInd(ILjava/util/ArrayList;)V

    .line 4283
    goto/16 :goto_7

    .line 4258
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    move v0, v5

    .line 4259
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17

    .line 4260
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4261
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4262
    goto/16 :goto_7

    .line 4263
    :cond_17
    const-string v1, "vendor.mediatek.hardware.radio@3.8::IRadioIndication"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4266
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4267
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->smsInfoExtInd(ILjava/lang/String;)V

    .line 4268
    goto/16 :goto_7

    .line 4243
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "info":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v5, v6

    :cond_18
    move v0, v5

    .line 4244
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19

    .line 4245
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4246
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4247
    goto/16 :goto_7

    .line 4248
    :cond_19
    const-string v1, "vendor.mediatek.hardware.radio@3.7::IRadioIndication"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4250
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4251
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4252
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->networkBandInfoInd(ILjava/util/ArrayList;)V

    .line 4253
    goto/16 :goto_7

    .line 4228
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v5, v6

    :cond_1a
    move v0, v5

    .line 4229
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b

    .line 4230
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4232
    goto/16 :goto_7

    .line 4233
    :cond_1b
    const-string v1, "vendor.mediatek.hardware.radio@3.2::IRadioIndication"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4236
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4237
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onSimPowerChangedInd(ILjava/util/ArrayList;)V

    .line 4238
    goto/16 :goto_7

    .line 4213
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v5, v6

    :cond_1c
    move v0, v5

    .line 4214
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d

    .line 4215
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4216
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4217
    goto/16 :goto_7

    .line 4218
    :cond_1d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4221
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4222
    .restart local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V

    .line 4223
    goto/16 :goto_7

    .line 4198
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v5, v6

    :cond_1e
    move v0, v5

    .line 4199
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f

    .line 4200
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4202
    goto/16 :goto_7

    .line 4203
    :cond_1f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4206
    .local v1, "indicationType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4207
    .local v2, "dsbpState":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->dsbpStateChanged(II)V

    .line 4208
    goto/16 :goto_7

    .line 4183
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "indicationType":I
    .end local v2    # "dsbpState":I
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v5, v6

    :cond_20
    move v0, v5

    .line 4184
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21

    .line 4185
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4187
    goto/16 :goto_7

    .line 4188
    :cond_21
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4190
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4191
    .local v1, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4192
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->networkRejectCauseInd(ILjava/util/ArrayList;)V

    .line 4193
    goto/16 :goto_7

    .line 4168
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v5, v6

    :cond_22
    move v0, v5

    .line 4169
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23

    .line 4170
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4172
    goto/16 :goto_7

    .line 4173
    :cond_23
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4176
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4177
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onTxPowerStatusIndication(ILjava/util/ArrayList;)V

    .line 4178
    goto/16 :goto_7

    .line 4153
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v5, v6

    :cond_24
    move v0, v5

    .line 4154
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25

    .line 4155
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4156
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4157
    goto/16 :goto_7

    .line 4158
    :cond_25
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4160
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4161
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4162
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onMccMncChanged(ILjava/lang/String;)V

    .line 4163
    goto/16 :goto_7

    .line 4138
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "mccmnc":Ljava/lang/String;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v5, v6

    :cond_26
    move v0, v5

    .line 4139
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27

    .line 4140
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4142
    goto/16 :goto_7

    .line 4143
    :cond_27
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4146
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4147
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onPseudoCellInfoInd(ILjava/util/ArrayList;)V

    .line 4148
    goto/16 :goto_7

    .line 4123
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v5, v6

    :cond_28
    move v0, v5

    .line 4124
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_29

    .line 4125
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4126
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4127
    goto/16 :goto_7

    .line 4128
    :cond_29
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4130
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4131
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4132
    .local v2, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onTxPowerIndication(ILjava/util/ArrayList;)V

    .line 4133
    goto/16 :goto_7

    .line 4108
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v5, v6

    :cond_2a
    move v0, v5

    .line 4109
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2b

    .line 4110
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4111
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4112
    goto/16 :goto_7

    .line 4113
    :cond_2b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4115
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4116
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4117
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onLteAccessStratumStateChanged(ILjava/util/ArrayList;)V

    .line 4118
    goto/16 :goto_7

    .line 4094
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v5, v6

    :cond_2c
    move v0, v5

    .line 4095
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2d

    .line 4096
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4097
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4098
    goto/16 :goto_7

    .line 4099
    :cond_2d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4102
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onRemoveRestrictEutran(I)V

    .line 4103
    goto/16 :goto_7

    .line 4080
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v5, v6

    :cond_2e
    move v0, v5

    .line 4081
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2f

    .line 4082
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4084
    goto/16 :goto_7

    .line 4085
    :cond_2f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4088
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onMdDataRetryCountReset(I)V

    .line 4089
    goto/16 :goto_7

    .line 4065
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v5, v6

    :cond_30
    move v0, v5

    .line 4066
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_31

    .line 4067
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4068
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4069
    goto/16 :goto_7

    .line 4070
    :cond_31
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4072
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4073
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4074
    .restart local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->volteLteConnectionStatus(ILjava/util/ArrayList;)V

    .line 4075
    goto/16 :goto_7

    .line 4050
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v5, v6

    :cond_32
    move v0, v5

    .line 4051
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_33

    .line 4052
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4053
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4054
    goto/16 :goto_7

    .line 4055
    :cond_33
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4057
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4058
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4059
    .local v2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->confSRVCC(ILjava/util/ArrayList;)V

    .line 4060
    goto/16 :goto_7

    .line 4035
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v5, v6

    :cond_34
    move v0, v5

    .line 4036
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_35

    .line 4037
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4038
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4039
    goto/16 :goto_7

    .line 4040
    :cond_35
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4043
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4044
    .local v2, "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onPcoStatus(ILjava/util/ArrayList;)V

    .line 4045
    goto/16 :goto_7

    .line 4019
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pco":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v5, v6

    :cond_36
    move v0, v5

    .line 4020
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_37

    .line 4021
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4022
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4023
    goto/16 :goto_7

    .line 4024
    :cond_37
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4026
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4027
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;-><init>()V

    .line 4028
    .local v2, "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4029
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->pcoDataAfterAttached(ILvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;)V

    .line 4030
    goto/16 :goto_7

    .line 4004
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pcoData":Lvendor/mediatek/hardware/radio/V3_0/PcoDataAttachedInfo;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v5, v6

    :cond_38
    move v0, v5

    .line 4005
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_39

    .line 4006
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4007
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 4008
    goto/16 :goto_7

    .line 4009
    :cond_39
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4011
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4012
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4013
    .local v2, "apnClassType":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->mdChangedApnInd(II)V

    .line 4014
    goto/16 :goto_7

    .line 3990
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "apnClassType":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v5, v6

    :cond_3a
    move v0, v5

    .line 3991
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3b

    .line 3992
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3994
    goto/16 :goto_7

    .line 3995
    :cond_3b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3998
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->resetAttachApnInd(I)V

    .line 3999
    goto/16 :goto_7

    .line 3976
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v5, v6

    :cond_3c
    move v0, v5

    .line 3977
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3d

    .line 3978
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3979
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3980
    goto/16 :goto_7

    .line 3981
    :cond_3d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3983
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3984
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onStkMenuReset(I)V

    .line 3985
    goto/16 :goto_7

    .line 3962
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v5, v6

    :cond_3e
    move v0, v5

    .line 3963
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3f

    .line 3964
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3965
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3966
    goto/16 :goto_7

    .line 3967
    :cond_3f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3970
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->triggerOtaSP(I)V

    .line 3971
    goto/16 :goto_7

    .line 3947
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v5, v6

    :cond_40
    move v0, v5

    .line 3948
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_41

    .line 3949
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3950
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3951
    goto/16 :goto_7

    .line 3952
    :cond_41
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3955
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3956
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->bipProactiveCommand(ILjava/lang/String;)V

    .line 3957
    goto/16 :goto_7

    .line 3932
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v5, v6

    :cond_42
    move v0, v5

    .line 3933
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_43

    .line 3934
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3935
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3936
    goto/16 :goto_7

    .line 3937
    :cond_43
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3940
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3941
    .local v2, "cid":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->dedicatedBearerDeactivationInd(II)V

    .line 3942
    goto/16 :goto_7

    .line 3916
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cid":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v5, v6

    :cond_44
    move v0, v5

    .line 3917
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_45

    .line 3918
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3920
    goto/16 :goto_7

    .line 3921
    :cond_45
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3923
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3924
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 3925
    .local v2, "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3926
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->dedicatedBearerModificationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 3927
    goto/16 :goto_7

    .line 3900
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v5, v6

    :cond_46
    move v0, v5

    .line 3901
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_47

    .line 3902
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3904
    goto/16 :goto_7

    .line 3905
    :cond_47
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3908
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;-><init>()V

    .line 3909
    .restart local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3910
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->dedicatedBearerActivationInd(ILvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;)V

    .line 3911
    goto/16 :goto_7

    .line 3885
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "ddcData":Lvendor/mediatek/hardware/radio/V3_0/DedicateDataCall;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v5, v6

    :cond_48
    move v0, v5

    .line 3886
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_49

    .line 3887
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3889
    goto/16 :goto_7

    .line 3890
    :cond_49
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3893
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3894
    .local v2, "lteBand":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->responseLteNetworkInfo(II)V

    .line 3895
    goto/16 :goto_7

    .line 3869
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "lteBand":I
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v5, v6

    :cond_4a
    move v0, v5

    .line 3870
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4b

    .line 3871
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3872
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3873
    goto/16 :goto_7

    .line 3874
    :cond_4b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3877
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 3878
    .local v2, "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3879
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 3880
    goto/16 :goto_7

    .line 3854
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "signalStrength":Lvendor/mediatek/hardware/radio/V3_0/SignalStrengthWithWcdmaEcio;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v5, v6

    :cond_4c
    move v0, v5

    .line 3855
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4d

    .line 3856
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3857
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3858
    goto/16 :goto_7

    .line 3859
    :cond_4d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3861
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3862
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3863
    .local v2, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->networkInfoInd(ILjava/util/ArrayList;)V

    .line 3864
    goto/16 :goto_7

    .line 3839
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v5, v6

    :cond_4e
    move v0, v5

    .line 3840
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4f

    .line 3841
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3842
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3843
    goto/16 :goto_7

    .line 3844
    :cond_4f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3846
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3847
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3848
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->responseFemtocellInfo(ILjava/util/ArrayList;)V

    .line 3849
    goto/16 :goto_7

    .line 3824
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v5, v6

    :cond_50
    move v0, v5

    .line 3825
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_51

    .line 3826
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3828
    goto/16 :goto_7

    .line 3829
    :cond_51
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3831
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3832
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3833
    .local v2, "allowed":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->dataAllowedNotification(II)V

    .line 3834
    goto/16 :goto_7

    .line 3809
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "allowed":I
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v5, v6

    :cond_52
    move v0, v5

    .line 3810
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_53

    .line 3811
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3813
    goto/16 :goto_7

    .line 3814
    :cond_53
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3817
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3818
    .local v2, "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->responseModulationInfoInd(ILjava/util/ArrayList;)V

    .line 3819
    goto/16 :goto_7

    .line 3794
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v5, v6

    :cond_54
    move v0, v5

    .line 3795
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_55

    .line 3796
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3797
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3798
    goto/16 :goto_7

    .line 3799
    :cond_55
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3801
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3802
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3803
    .local v2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->responseNetworkEventInd(ILjava/util/ArrayList;)V

    .line 3804
    goto/16 :goto_7

    .line 3779
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v5, v6

    :cond_56
    move v0, v5

    .line 3780
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_57

    .line 3781
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3783
    goto/16 :goto_7

    .line 3784
    :cond_57
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3787
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3788
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->responseInvalidSimInd(ILjava/util/ArrayList;)V

    .line 3789
    goto/16 :goto_7

    .line 3764
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v5, v6

    :cond_58
    move v0, v5

    .line 3765
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_59

    .line 3766
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3767
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3768
    goto/16 :goto_7

    .line 3769
    :cond_59
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3772
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3773
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 3774
    goto/16 :goto_7

    .line 3749
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v5, v6

    :cond_5a
    move v0, v5

    .line 3750
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5b

    .line 3751
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3752
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3753
    goto/16 :goto_7

    .line 3754
    :cond_5b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3756
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3757
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3758
    .local v2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 3759
    goto/16 :goto_7

    .line 3734
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v5, v6

    :cond_5c
    move v0, v5

    .line 3735
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5d

    .line 3736
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3737
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3738
    goto/16 :goto_7

    .line 3739
    :cond_5d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3741
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3742
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3743
    .local v2, "esnMeid":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->esnMeidChangeInd(ILjava/lang/String;)V

    .line 3744
    goto/16 :goto_7

    .line 3719
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "esnMeid":Ljava/lang/String;
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v5, v6

    :cond_5e
    move v0, v5

    .line 3720
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5f

    .line 3721
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3723
    goto/16 :goto_7

    .line 3724
    :cond_5f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3727
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3728
    .local v2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->worldModeChangedIndication(ILjava/util/ArrayList;)V

    .line 3729
    goto/16 :goto_7

    .line 3704
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    move v0, v5

    .line 3705
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_61

    .line 3706
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3707
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3708
    goto/16 :goto_7

    .line 3709
    :cond_61
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3711
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3712
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3713
    .local v2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->gmssRatChangedIndication(ILjava/util/ArrayList;)V

    .line 3714
    goto/16 :goto_7

    .line 3689
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v5, v6

    :cond_62
    move v0, v5

    .line 3690
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_63

    .line 3691
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3692
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3693
    goto/16 :goto_7

    .line 3694
    :cond_63
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3697
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3698
    .local v2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->registrationSuspendedIndication(ILjava/util/ArrayList;)V

    .line 3699
    goto/16 :goto_7

    .line 3674
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v5, v6

    :cond_64
    move v0, v5

    .line 3675
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_65

    .line 3676
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3678
    goto/16 :goto_7

    .line 3679
    :cond_65
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3681
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3682
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3683
    .local v2, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->plmnChangedIndication(ILjava/util/ArrayList;)V

    .line 3684
    goto/16 :goto_7

    .line 3659
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v5, v6

    :cond_66
    move v0, v5

    .line 3660
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_67

    .line 3661
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3662
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3663
    goto/16 :goto_7

    .line 3664
    :cond_67
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3667
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3668
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    .line 3669
    goto/16 :goto_7

    .line 3645
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v5, v6

    :cond_68
    move v0, v5

    .line 3646
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_69

    .line 3647
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3648
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3649
    goto/16 :goto_7

    .line 3650
    :cond_69
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3652
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3653
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->smsReadyInd(I)V

    .line 3654
    goto/16 :goto_7

    .line 3631
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v5, v6

    :cond_6a
    move v0, v5

    .line 3632
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6b

    .line 3633
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3634
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3635
    goto/16 :goto_7

    .line 3636
    :cond_6b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3638
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3639
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->meSmsStorageFullInd(I)V

    .line 3640
    goto/16 :goto_7

    .line 3615
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v5, v6

    :cond_6c
    move v0, v5

    .line 3616
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6d

    .line 3617
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3619
    goto/16 :goto_7

    .line 3620
    :cond_6d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3622
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3623
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;-><init>()V

    .line 3624
    .local v2, "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3625
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->newEtwsInd(ILvendor/mediatek/hardware/radio/V3_0/EtwsNotification;)V

    .line 3626
    goto/16 :goto_7

    .line 3599
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "etws":Lvendor/mediatek/hardware/radio/V3_0/EtwsNotification;
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v5, v6

    :cond_6e
    move v0, v5

    .line 3600
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6f

    .line 3601
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3603
    goto/16 :goto_7

    .line 3604
    :cond_6f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3607
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;-><init>()V

    .line 3608
    .local v2, "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3609
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onVsimEventIndication(ILvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;)V

    .line 3610
    goto/16 :goto_7

    .line 3585
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "event":Lvendor/mediatek/hardware/radio/V3_0/VsimOperationEvent;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v5, v6

    :cond_70
    move v0, v5

    .line 3586
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_71

    .line 3587
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3589
    goto/16 :goto_7

    .line 3590
    :cond_71
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3593
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onCardDetectedInd(I)V

    .line 3594
    goto/16 :goto_7

    .line 3571
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v5, v6

    :cond_72
    move v0, v5

    .line 3572
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_73

    .line 3573
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3575
    goto/16 :goto_7

    .line 3576
    :cond_73
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3579
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onSimMeLockEvent(I)V

    .line 3580
    goto/16 :goto_7

    .line 3557
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v5, v6

    :cond_74
    move v0, v5

    .line 3558
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_75

    .line 3559
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3560
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3561
    goto/16 :goto_7

    .line 3562
    :cond_75
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3565
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onSimCommonSlotNoChanged(I)V

    .line 3566
    goto/16 :goto_7

    .line 3543
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v5, v6

    :cond_76
    move v0, v5

    .line 3544
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_77

    .line 3545
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3546
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3547
    goto/16 :goto_7

    .line 3548
    :cond_77
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3551
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onSimTrayPlugIn(I)V

    .line 3552
    goto/16 :goto_7

    .line 3528
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v5, v6

    :cond_78
    move v0, v5

    .line 3529
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_79

    .line 3530
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3532
    goto/16 :goto_7

    .line 3533
    :cond_79
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3535
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3536
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3537
    .local v2, "simInserted":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onSimRecovery(II)V

    .line 3538
    goto/16 :goto_7

    .line 3513
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "simInserted":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v5, v6

    :cond_7a
    move v0, v5

    .line 3514
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7b

    .line 3515
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3517
    goto/16 :goto_7

    .line 3518
    :cond_7b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3521
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3522
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onSimMissing(II)V

    .line 3523
    goto/16 :goto_7

    .line 3499
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "simInserted":I
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v5, v6

    :cond_7c
    move v0, v5

    .line 3500
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7d

    .line 3501
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3502
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3503
    goto/16 :goto_7

    .line 3504
    :cond_7d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3506
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3507
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onSimPlugOut(I)V

    .line 3508
    goto/16 :goto_7

    .line 3485
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v5, v6

    :cond_7e
    move v0, v5

    .line 3486
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7f

    .line 3487
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3488
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3489
    goto/16 :goto_7

    .line 3490
    :cond_7f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3492
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3493
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onSimPlugIn(I)V

    .line 3494
    goto/16 :goto_7

    .line 3471
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v5, v6

    :cond_80
    move v0, v5

    .line 3472
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_81

    .line 3473
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3474
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3475
    goto/16 :goto_7

    .line 3476
    :cond_81
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3479
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onImsiRefreshDone(I)V

    .line 3480
    goto/16 :goto_7

    .line 3457
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v5, v6

    :cond_82
    move v0, v5

    .line 3458
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_83

    .line 3459
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3460
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3461
    goto/16 :goto_7

    .line 3462
    :cond_83
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3464
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3465
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onImeiLock(I)V

    .line 3466
    goto/16 :goto_7

    .line 3442
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v5, v6

    :cond_84
    move v0, v5

    .line 3443
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_85

    .line 3444
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3445
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3446
    goto/16 :goto_7

    .line 3447
    :cond_85
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3450
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3451
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onVirtualSimOff(II)V

    .line 3452
    goto/16 :goto_7

    .line 3427
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "simInserted":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v5, v6

    :cond_86
    move v0, v5

    .line 3428
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_87

    .line 3429
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3430
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3431
    goto/16 :goto_7

    .line 3432
    :cond_87
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3435
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3436
    .restart local v2    # "simInserted":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onVirtualSimOn(II)V

    .line 3437
    goto/16 :goto_7

    .line 3411
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "simInserted":I
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v5, v6

    :cond_88
    move v0, v5

    .line 3412
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_89

    .line 3413
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3414
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3415
    goto/16 :goto_7

    .line 3416
    :cond_89
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3418
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3419
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3420
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3421
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 3422
    goto/16 :goto_7

    .line 3397
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v5, v6

    :cond_8a
    move v0, v5

    .line 3398
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8b

    .line 3399
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3400
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3401
    goto/16 :goto_7

    .line 3402
    :cond_8b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3404
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3405
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cdmaCallAccepted(I)V

    .line 3406
    goto/16 :goto_7

    .line 3382
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v5, v6

    :cond_8c
    move v0, v5

    .line 3383
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8d

    .line 3384
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3385
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3386
    goto/16 :goto_7

    .line 3387
    :cond_8d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3390
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3391
    .local v2, "info":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->speechCodecInfoIndication(II)V

    .line 3392
    goto/16 :goto_7

    .line 3366
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "info":I
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v5, v6

    :cond_8e
    move v0, v5

    .line 3367
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8f

    .line 3368
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3369
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3370
    goto/16 :goto_7

    .line 3371
    :cond_8f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3374
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;-><init>()V

    .line 3375
    .local v2, "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3376
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->crssIndication(ILvendor/mediatek/hardware/radio/V3_0/CrssNotification;)V

    .line 3377
    goto/16 :goto_7

    .line 3350
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "crssNotify":Lvendor/mediatek/hardware/radio/V3_0/CrssNotification;
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v5, v6

    :cond_90
    move v0, v5

    .line 3351
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_91

    .line 3352
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3354
    goto/16 :goto_7

    .line 3355
    :cond_91
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3358
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;-><init>()V

    .line 3359
    .local v2, "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3360
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cipherIndication(ILvendor/mediatek/hardware/radio/V3_0/CipherNotification;)V

    .line 3361
    goto/16 :goto_7

    .line 3334
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cipherNotify":Lvendor/mediatek/hardware/radio/V3_0/CipherNotification;
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v5, v6

    :cond_92
    move v0, v5

    .line 3335
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_93

    .line 3336
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3337
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3338
    goto/16 :goto_7

    .line 3339
    :cond_93
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3342
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;-><init>()V

    .line 3343
    .local v2, "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3344
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;)V

    .line 3345
    goto/16 :goto_7

    .line 3318
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "inCallNotify":Lvendor/mediatek/hardware/radio/V3_0/IncomingCallNotification;
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v5, v6

    :cond_94
    move v0, v5

    .line 3319
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_95

    .line 3320
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3321
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3322
    goto/16 :goto_7

    .line 3323
    :cond_95
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3326
    .restart local v1    # "type":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;-><init>()V

    .line 3327
    .local v2, "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    invoke-virtual {v2, p2}, Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3328
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cfuStatusNotify(ILvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;)V

    .line 3329
    goto/16 :goto_7

    .line 3303
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cfuStatus":Lvendor/mediatek/hardware/radio/V3_0/CfuStatusNotification;
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v5, v6

    :cond_96
    move v0, v5

    .line 3304
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_97

    .line 3305
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3306
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3307
    goto/16 :goto_7

    .line 3308
    :cond_97
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3311
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3312
    .local v2, "isPhbReady":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->phbReadyNotification(II)V

    .line 3313
    goto/16 :goto_7

    .line 3288
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "isPhbReady":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v5, v6

    :cond_98
    move v0, v5

    .line 3289
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_99

    .line 3290
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3291
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3292
    goto/16 :goto_7

    .line 3293
    :cond_99
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3296
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3297
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->eMBMSSessionStatusIndication(II)V

    .line 3298
    goto/16 :goto_7

    .line 3273
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "status":I
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v5, v6

    :cond_9a
    move v0, v5

    .line 3274
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9b

    .line 3275
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3276
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3277
    goto/16 :goto_7

    .line 3278
    :cond_9b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3280
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3281
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3282
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->eMBMSAtInfoIndication(ILjava/lang/String;)V

    .line 3283
    goto/16 :goto_7

    .line 3257
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "info":Ljava/lang/String;
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v5, v6

    :cond_9c
    move v0, v5

    .line 3258
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9d

    .line 3259
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3260
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3261
    goto/16 :goto_7

    .line 3262
    :cond_9d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3264
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3265
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 3266
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3267
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->currentSignalStrength_1_2(ILandroid/hardware/radio/V1_2/SignalStrength;)V

    .line 3268
    goto/16 :goto_7

    .line 3242
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v5, v6

    :cond_9e
    move v0, v5

    .line 3243
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9f

    .line 3244
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3246
    goto/16 :goto_7

    .line 3247
    :cond_9f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3249
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3250
    .restart local v1    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/PhysicalChannelConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3251
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->currentPhysicalChannelConfigs(ILjava/util/ArrayList;)V

    .line 3252
    goto/16 :goto_7

    .line 3226
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/PhysicalChannelConfig;>;"
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v5, v6

    :cond_a0
    move v0, v5

    .line 3227
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a1

    .line 3228
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3229
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3230
    goto/16 :goto_7

    .line 3231
    :cond_a1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3234
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;-><init>()V

    .line 3235
    .local v2, "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/LinkCapacityEstimate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3236
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/V1_2/LinkCapacityEstimate;)V

    .line 3237
    goto/16 :goto_7

    .line 3211
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "lce":Landroid/hardware/radio/V1_2/LinkCapacityEstimate;
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v5, v6

    :cond_a2
    move v0, v5

    .line 3212
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a3

    .line 3213
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3214
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3215
    goto/16 :goto_7

    .line 3216
    :cond_a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3219
    .restart local v1    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3220
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cellInfoList_1_2(ILjava/util/ArrayList;)V

    .line 3221
    goto/16 :goto_7

    .line 3195
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v5, v6

    :cond_a4
    move v0, v5

    .line 3196
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a5

    .line 3197
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3199
    goto/16 :goto_7

    .line 3200
    :cond_a5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3203
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanResult;-><init>()V

    .line 3204
    .local v2, "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_2/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3205
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->networkScanResult_1_2(ILandroid/hardware/radio/V1_2/NetworkScanResult;)V

    .line 3206
    goto/16 :goto_7

    .line 3179
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "result":Landroid/hardware/radio/V1_2/NetworkScanResult;
    :pswitch_49
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a6

    move v5, v6

    :cond_a6
    move v1, v5

    .line 3180
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_a7

    .line 3181
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3182
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3183
    goto/16 :goto_7

    .line 3184
    :cond_a7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3186
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3187
    .local v0, "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 3188
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3189
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->keepaliveStatus(ILandroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 3190
    goto/16 :goto_7

    .line 3163
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_4a
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a8

    move v5, v6

    :cond_a8
    move v1, v5

    .line 3164
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_a9

    .line 3165
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3166
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3167
    goto/16 :goto_7

    .line 3168
    :cond_a9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3171
    .restart local v0    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanResult;-><init>()V

    .line 3172
    .local v2, "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_1/NetworkScanResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3173
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->networkScanResult(ILandroid/hardware/radio/V1_1/NetworkScanResult;)V

    .line 3174
    goto/16 :goto_7

    .line 3149
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "result":Landroid/hardware/radio/V1_1/NetworkScanResult;
    :pswitch_4b
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_aa

    move v5, v6

    :cond_aa
    move v1, v5

    .line 3150
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_ab

    .line 3151
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3152
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3153
    goto/16 :goto_7

    .line 3154
    :cond_ab
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3157
    .local v0, "info":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 3158
    goto/16 :goto_7

    .line 3134
    .end local v0    # "info":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v5, v6

    :cond_ac
    move v0, v5

    .line 3135
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ad

    .line 3136
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3137
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3138
    goto/16 :goto_7

    .line 3139
    :cond_ad
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3141
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3142
    .local v1, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3143
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->modemReset(ILjava/lang/String;)V

    .line 3144
    goto/16 :goto_7

    .line 3118
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v5, v6

    :cond_ae
    move v0, v5

    .line 3119
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_af

    .line 3120
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3121
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3122
    goto/16 :goto_7

    .line 3123
    :cond_af
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3126
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/PcoDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/PcoDataInfo;-><init>()V

    .line 3127
    .local v2, "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/PcoDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3128
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->pcoData(ILandroid/hardware/radio/V1_0/PcoDataInfo;)V

    .line 3129
    goto/16 :goto_7

    .line 3102
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pco":Landroid/hardware/radio/V1_0/PcoDataInfo;
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v5, v6

    :cond_b0
    move v0, v5

    .line 3103
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b1

    .line 3104
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3105
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3106
    goto/16 :goto_7

    .line 3107
    :cond_b1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3109
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3110
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 3111
    .local v2, "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3112
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->lceData(ILandroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 3113
    goto/16 :goto_7

    .line 3087
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "lce":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v5, v6

    :cond_b2
    move v0, v5

    .line 3088
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b3

    .line 3089
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3091
    goto/16 :goto_7

    .line 3092
    :cond_b3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3094
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3095
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3096
    .local v2, "alpha":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 3097
    goto/16 :goto_7

    .line 3071
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "alpha":Ljava/lang/String;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v5, v6

    :cond_b4
    move v0, v5

    .line 3072
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b5

    .line 3073
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3074
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3075
    goto/16 :goto_7

    .line 3076
    :cond_b5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3078
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3079
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 3080
    .local v2, "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3081
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/V1_0/StkCcUnsolSsResult;)V

    .line 3082
    goto/16 :goto_7

    .line 3055
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "ss":Landroid/hardware/radio/V1_0/StkCcUnsolSsResult;
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v5, v6

    :cond_b6
    move v0, v5

    .line 3056
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b7

    .line 3057
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3058
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3059
    goto/16 :goto_7

    .line 3060
    :cond_b7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3063
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 3064
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3065
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->radioCapabilityIndication(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 3066
    goto/16 :goto_7

    .line 3040
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v5, v6

    :cond_b8
    move v0, v5

    .line 3041
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b9

    .line 3042
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3044
    goto/16 :goto_7

    .line 3045
    :cond_b9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3048
    .restart local v1    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3049
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->hardwareConfigChanged(ILjava/util/ArrayList;)V

    .line 3050
    goto/16 :goto_7

    .line 3025
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v5, v6

    :cond_ba
    move v0, v5

    .line 3026
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bb

    .line 3027
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3029
    goto/16 :goto_7

    .line 3030
    :cond_bb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3033
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3034
    .local v2, "state":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->srvccStateNotify(II)V

    .line 3035
    goto/16 :goto_7

    .line 3010
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":I
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v5, v6

    :cond_bc
    move v0, v5

    .line 3011
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bd

    .line 3012
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3014
    goto/16 :goto_7

    .line 3015
    :cond_bd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3017
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3018
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3019
    .local v2, "activate":Z
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 3020
    goto/16 :goto_7

    .line 2996
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "activate":Z
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v5, v6

    :cond_be
    move v0, v5

    .line 2997
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bf

    .line 2998
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2999
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3000
    goto/16 :goto_7

    .line 3001
    :cond_bf
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3003
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3004
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->imsNetworkStateChanged(I)V

    .line 3005
    goto/16 :goto_7

    .line 2981
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v5, v6

    :cond_c0
    move v0, v5

    .line 2982
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c1

    .line 2983
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2985
    goto/16 :goto_7

    .line 2986
    :cond_c1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2989
    .restart local v1    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2990
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cellInfoList(ILjava/util/ArrayList;)V

    .line 2991
    goto/16 :goto_7

    .line 2966
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v5, v6

    :cond_c2
    move v0, v5

    .line 2967
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c3

    .line 2968
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2970
    goto/16 :goto_7

    .line 2971
    :cond_c3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2973
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2974
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2975
    .local v2, "rat":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->voiceRadioTechChanged(II)V

    .line 2976
    goto/16 :goto_7

    .line 2952
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "rat":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v5, v6

    :cond_c4
    move v0, v5

    .line 2953
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c5

    .line 2954
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2955
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2956
    goto/16 :goto_7

    .line 2957
    :cond_c5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2959
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2960
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->rilConnected(I)V

    .line 2961
    goto/16 :goto_7

    .line 2938
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v5, v6

    :cond_c6
    move v0, v5

    .line 2939
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c7

    .line 2940
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2942
    goto/16 :goto_7

    .line 2943
    :cond_c7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2946
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 2947
    goto/16 :goto_7

    .line 2923
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v5, v6

    :cond_c8
    move v0, v5

    .line 2924
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c9

    .line 2925
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2927
    goto/16 :goto_7

    .line 2928
    :cond_c9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2931
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2932
    .local v2, "version":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cdmaPrlChanged(II)V

    .line 2933
    goto/16 :goto_7

    .line 2908
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "version":I
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v5, v6

    :cond_ca
    move v0, v5

    .line 2909
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cb

    .line 2910
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2912
    goto/16 :goto_7

    .line 2913
    :cond_cb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2916
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2917
    .local v2, "cdmaSource":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 2918
    goto/16 :goto_7

    .line 2894
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cdmaSource":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v5, v6

    :cond_cc
    move v0, v5

    .line 2895
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cd

    .line 2896
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2898
    goto/16 :goto_7

    .line 2899
    :cond_cd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2902
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->resendIncallMute(I)V

    .line 2903
    goto/16 :goto_7

    .line 2879
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v5, v6

    :cond_ce
    move v0, v5

    .line 2880
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cf

    .line 2881
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2882
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2883
    goto/16 :goto_7

    .line 2884
    :cond_cf
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2886
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2887
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2888
    .local v2, "start":Z
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->indicateRingbackTone(IZ)V

    .line 2889
    goto/16 :goto_7

    .line 2863
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "start":Z
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v5, v6

    :cond_d0
    move v0, v5

    .line 2864
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d1

    .line 2865
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2867
    goto/16 :goto_7

    .line 2868
    :cond_d1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2870
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2871
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaInformationRecords;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;-><init>()V

    .line 2872
    .local v2, "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaInformationRecords;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2873
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cdmaInfoRec(ILandroid/hardware/radio/V1_0/CdmaInformationRecords;)V

    .line 2874
    goto/16 :goto_7

    .line 2848
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "records":Landroid/hardware/radio/V1_0/CdmaInformationRecords;
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v5, v6

    :cond_d2
    move v0, v5

    .line 2849
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d3

    .line 2850
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2851
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2852
    goto/16 :goto_7

    .line 2853
    :cond_d3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2856
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2857
    .local v2, "status":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 2858
    goto/16 :goto_7

    .line 2832
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "status":I
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v5, v6

    :cond_d4
    move v0, v5

    .line 2833
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d5

    .line 2834
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2835
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2836
    goto/16 :goto_7

    .line 2837
    :cond_d5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2840
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaCallWaiting;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;-><init>()V

    .line 2841
    .local v2, "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaCallWaiting;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2842
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/V1_0/CdmaCallWaiting;)V

    .line 2843
    goto/16 :goto_7

    .line 2818
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "callWaitingRecord":Landroid/hardware/radio/V1_0/CdmaCallWaiting;
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v5, v6

    :cond_d6
    move v0, v5

    .line 2819
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d7

    .line 2820
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2822
    goto/16 :goto_7

    .line 2823
    :cond_d7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2826
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 2827
    goto/16 :goto_7

    .line 2803
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v5, v6

    :cond_d8
    move v0, v5

    .line 2804
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d9

    .line 2805
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2806
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2807
    goto/16 :goto_7

    .line 2808
    :cond_d9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2810
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2811
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2812
    .local v2, "state":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->restrictedStateChanged(II)V

    .line 2813
    goto/16 :goto_7

    .line 2789
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "state":I
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v5, v6

    :cond_da
    move v0, v5

    .line 2790
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_db

    .line 2791
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2793
    goto/16 :goto_7

    .line 2794
    :cond_db
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2797
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cdmaRuimSmsStorageFull(I)V

    .line 2798
    goto/16 :goto_7

    .line 2774
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v5, v6

    :cond_dc
    move v0, v5

    .line 2775
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_dd

    .line 2776
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2777
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2778
    goto/16 :goto_7

    .line 2779
    :cond_dd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2782
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2783
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->newBroadcastSms(ILjava/util/ArrayList;)V

    .line 2784
    goto/16 :goto_7

    .line 2758
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v5, v6

    :cond_de
    move v0, v5

    .line 2759
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_df

    .line 2760
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2761
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2762
    goto/16 :goto_7

    .line 2763
    :cond_df
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2766
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 2767
    .local v2, "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2768
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->cdmaNewSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 2769
    goto/16 :goto_7

    .line 2744
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v5, v6

    :cond_e0
    move v0, v5

    .line 2745
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e1

    .line 2746
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2747
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2748
    goto/16 :goto_7

    .line 2749
    :cond_e1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2752
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->simStatusChanged(I)V

    .line 2753
    goto/16 :goto_7

    .line 2727
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v5, v6

    :cond_e2
    move v0, v5

    .line 2728
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e3

    .line 2729
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2730
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2731
    goto/16 :goto_7

    .line 2732
    :cond_e3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2735
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 2736
    .local v2, "isGsm":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 2737
    .local v3, "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    invoke-virtual {v3, p2}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2738
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->callRing(IZLandroid/hardware/radio/V1_0/CdmaSignalInfoRecord;)V

    .line 2739
    goto/16 :goto_7

    .line 2711
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "isGsm":Z
    .end local v3    # "record":Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v5, v6

    :cond_e4
    move v0, v5

    .line 2712
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e5

    .line 2713
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2714
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2715
    goto/16 :goto_7

    .line 2716
    :cond_e5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2719
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimRefreshResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimRefreshResult;-><init>()V

    .line 2720
    .local v2, "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SimRefreshResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2721
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->simRefresh(ILandroid/hardware/radio/V1_0/SimRefreshResult;)V

    .line 2722
    goto/16 :goto_7

    .line 2697
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "refreshResult":Landroid/hardware/radio/V1_0/SimRefreshResult;
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v5, v6

    :cond_e6
    move v0, v5

    .line 2698
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e7

    .line 2699
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2701
    goto/16 :goto_7

    .line 2702
    :cond_e7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2705
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->simSmsStorageFull(I)V

    .line 2706
    goto/16 :goto_7

    .line 2682
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v5, v6

    :cond_e8
    move v0, v5

    .line 2683
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e9

    .line 2684
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2686
    goto/16 :goto_7

    .line 2687
    :cond_e9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2690
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2691
    .local v2, "timeout":J
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->stkCallSetup(IJ)V

    .line 2692
    goto/16 :goto_7

    .line 2667
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "timeout":J
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v5, v6

    :cond_ea
    move v0, v5

    .line 2668
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_eb

    .line 2669
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2671
    goto/16 :goto_7

    .line 2672
    :cond_eb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2675
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2676
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 2677
    goto/16 :goto_7

    .line 2652
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v5, v6

    :cond_ec
    move v0, v5

    .line 2653
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ed

    .line 2654
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2655
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2656
    goto/16 :goto_7

    .line 2657
    :cond_ed
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2659
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2660
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2661
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 2662
    goto/16 :goto_7

    .line 2638
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "cmd":Ljava/lang/String;
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v5, v6

    :cond_ee
    move v0, v5

    .line 2639
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ef

    .line 2640
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2641
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2642
    goto/16 :goto_7

    .line 2643
    :cond_ef
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2646
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->stkSessionEnd(I)V

    .line 2647
    goto/16 :goto_7

    .line 2622
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v5, v6

    :cond_f0
    move v0, v5

    .line 2623
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f1

    .line 2624
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2626
    goto/16 :goto_7

    .line 2627
    :cond_f1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2630
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2631
    .local v2, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2632
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2633
    goto/16 :goto_7

    .line 2607
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v5, v6

    :cond_f2
    move v0, v5

    .line 2608
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f3

    .line 2609
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2610
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2611
    goto/16 :goto_7

    .line 2612
    :cond_f3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2615
    .restart local v1    # "type":I
    invoke-static {p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2616
    .local v2, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->dataCallListChanged(ILjava/util/ArrayList;)V

    .line 2617
    goto/16 :goto_7

    .line 2591
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v5, v6

    :cond_f4
    move v0, v5

    .line 2592
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f5

    .line 2593
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2594
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2595
    goto/16 :goto_7

    .line 2596
    :cond_f5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2599
    .restart local v1    # "type":I
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 2600
    .local v2, "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, p2}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2601
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/V1_0/SignalStrength;)V

    .line 2602
    goto/16 :goto_7

    .line 2575
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v5, v6

    :cond_f6
    move v0, v5

    .line 2576
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f7

    .line 2577
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2578
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2579
    goto/16 :goto_7

    .line 2580
    :cond_f7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2582
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2583
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2584
    .local v2, "nitzTime":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 2585
    .local v3, "receivedTime":J
    invoke-virtual {p0, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->nitzTimeReceived(ILjava/lang/String;J)V

    .line 2586
    goto/16 :goto_7

    .line 2559
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "nitzTime":Ljava/lang/String;
    .end local v3    # "receivedTime":J
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v5, v6

    :cond_f8
    move v0, v5

    .line 2560
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f9

    .line 2561
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2563
    goto/16 :goto_7

    .line 2564
    :cond_f9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2566
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2567
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2568
    .local v2, "modeType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2569
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 2570
    goto/16 :goto_7

    .line 2544
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "modeType":I
    .end local v3    # "msg":Ljava/lang/String;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v5, v6

    :cond_fa
    move v0, v5

    .line 2545
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fb

    .line 2546
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2548
    goto/16 :goto_7

    .line 2549
    :cond_fb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2552
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2553
    .local v2, "recordNumber":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->newSmsOnSim(II)V

    .line 2554
    goto/16 :goto_7

    .line 2529
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "recordNumber":I
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v5, v6

    :cond_fc
    move v0, v5

    .line 2530
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fd

    .line 2531
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2533
    goto/16 :goto_7

    .line 2534
    :cond_fd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2537
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2538
    .local v2, "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->newSmsStatusReport(ILjava/util/ArrayList;)V

    .line 2539
    goto/16 :goto_7

    .line 2514
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v5, v6

    :cond_fe
    move v0, v5

    .line 2515
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ff

    .line 2516
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2517
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2518
    goto/16 :goto_7

    .line 2519
    :cond_ff
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2522
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2523
    .restart local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->newSms(ILjava/util/ArrayList;)V

    .line 2524
    goto :goto_7

    .line 2500
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "pdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v5, v6

    :cond_100
    move v0, v5

    .line 2501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_101

    .line 2502
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2503
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2504
    goto :goto_7

    .line 2505
    :cond_101
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2508
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->networkStateChanged(I)V

    .line 2509
    goto :goto_7

    .line 2486
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v5, v6

    :cond_102
    move v0, v5

    .line 2487
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_103

    .line 2488
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2490
    goto :goto_7

    .line 2491
    :cond_103
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2494
    .restart local v1    # "type":I
    invoke-virtual {p0, v1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->callStateChanged(I)V

    .line 2495
    goto :goto_7

    .line 2471
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v5, v6

    :cond_104
    move v0, v5

    .line 2472
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_105

    .line 2473
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2474
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2475
    goto :goto_7

    .line 2476
    :cond_105
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2479
    .restart local v1    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2480
    .local v2, "radioState":I
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->radioStateChanged(II)V

    .line 2481
    nop

    .line 4452
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "type":I
    .end local v2    # "radioState":I
    :cond_106
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2422
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2450
    const-string v0, "vendor.mediatek.hardware.radio@3.11::IRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2451
    return-object p0

    .line 2453
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

    .line 2457
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2458
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2412
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_11/IRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2444
    const/4 v0, 0x1

    return v0
.end method
