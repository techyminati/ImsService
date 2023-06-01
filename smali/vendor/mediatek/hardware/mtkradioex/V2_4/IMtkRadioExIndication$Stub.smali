.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioExIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1613
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1616
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
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

    .line 1630
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1668
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1669
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1670
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1671
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1672
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1642
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_28

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3c

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_50

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_28
    .array-data 1
        0x4at
        0x10t
        -0x31t
        0x5bt
        -0x40t
        0x20t
        -0x43t
        0x71t
        0x7at
        -0x3t
        0x33t
        0x0t
        -0x40t
        0x48t
        -0x62t
        0x16t
        0x71t
        -0x4t
        0x55t
        -0x34t
        0x57t
        -0x79t
        0x59t
        0x52t
        0x55t
        0x7dt
        -0x2t
        0x74t
        0x1t
        0x73t
        0x17t
        -0x1bt
    .end array-data

    :array_3c
    .array-data 1
        0x12t
        0x5bt
        0x55t
        -0x30t
        0x5t
        0x22t
        -0x1t
        0xft
        -0x10t
        0x7dt
        0x46t
        -0x55t
        -0x75t
        -0xct
        -0x7t
        0x15t
        -0x74t
        -0x74t
        0x5ct
        -0x4bt
        -0x4at
        0x2ct
        -0x26t
        0x78t
        0x27t
        0x29t
        0x66t
        -0x6bt
        0x32t
        0x64t
        0xct
        0xet
    .end array-data

    :array_50
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1621
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExIndication"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExIndication"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1636
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1656
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1678
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1680
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1708
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExIndication"

    const/4 v1, 0x0

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExIndication"

    sparse-switch p1, :sswitch_data_544

    goto/16 :goto_542

    .line 2520
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2522
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->notifySyspropsChanged()V

    .line 2523
    goto/16 :goto_542

    .line 2509
    :sswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2511
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2512
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2513
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2514
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2515
    goto/16 :goto_542

    .line 2499
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_26
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->ping()V

    .line 2502
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2503
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2504
    goto/16 :goto_542

    .line 2494
    :sswitch_34
    goto/16 :goto_542

    .line 2486
    :sswitch_36
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->setHALInstrumentation()V

    .line 2489
    goto/16 :goto_542

    .line 2452
    :sswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2455
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2457
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2459
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2460
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2461
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2462
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2463
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_65
    if-ge v4, v3, :cond_86

    .line 2465
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2466
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2468
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7e

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7e

    .line 2472
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2473
    nop

    .line 2463
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 2469
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2476
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_86
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2478
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2480
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2481
    goto/16 :goto_542

    .line 2441
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_93
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2443
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2444
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2445
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2447
    goto/16 :goto_542

    .line 2429
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2431
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2432
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2433
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2434
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2435
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2436
    goto/16 :goto_542

    .line 2418
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2421
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2422
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2423
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2424
    goto/16 :goto_542

    .line 2407
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2410
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2411
    .local v1, "sib16Time":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 2412
    .local v2, "receivedTime":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->sib16TimeInfoInd(ILjava/lang/String;J)V

    .line 2413
    goto/16 :goto_542

    .line 2395
    .end local v0    # "type":I
    .end local v1    # "sib16Time":Ljava/lang/String;
    .end local v2    # "receivedTime":J
    :sswitch_e1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2398
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2399
    .local v1, "longName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2400
    .local v2, "shortName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2401
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->toeInfoInd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    goto/16 :goto_542

    .line 2384
    .end local v0    # "type":I
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "shortName":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :sswitch_f9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2387
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2388
    .local v1, "eventId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2389
    .local v2, "eventString":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onRsuEvent(IILjava/lang/String;)V

    .line 2390
    goto/16 :goto_542

    .line 2373
    .end local v0    # "type":I
    .end local v1    # "eventId":I
    .end local v2    # "eventString":Ljava/lang/String;
    :sswitch_10d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2376
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;-><init>()V

    .line 2377
    .local v1, "plmnMvnoInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2378
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onPlmnDataInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;)V

    .line 2379
    goto/16 :goto_542

    .line 2363
    .end local v0    # "type":I
    .end local v1    # "plmnMvnoInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;
    :sswitch_121
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2365
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2366
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2367
    .local v1, "iccid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->iccidChanged(ILjava/lang/String;)V

    .line 2368
    goto/16 :goto_542

    .line 2353
    .end local v0    # "type":I
    .end local v1    # "iccid":Ljava/lang/String;
    :sswitch_131
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2356
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2357
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onNwLimitInd(ILjava/util/ArrayList;)V

    .line 2358
    goto/16 :goto_542

    .line 2343
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_141
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2345
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2346
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2347
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->mobileDataUsageInd(ILjava/util/ArrayList;)V

    .line 2348
    goto/16 :goto_542

    .line 2333
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_151
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2336
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2337
    .local v1, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onCellularQualityChangedInd(ILjava/util/ArrayList;)V

    .line 2338
    goto/16 :goto_542

    .line 2323
    .end local v0    # "type":I
    .end local v1    # "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_161
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2326
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2327
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->qualifiedNetworkTypesChangedInd(ILjava/util/ArrayList;)V

    .line 2328
    goto/16 :goto_542

    .line 2313
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_171
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2316
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2317
    .local v1, "mode":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onDsdaChangedInd(II)V

    .line 2318
    goto/16 :goto_542

    .line 2303
    .end local v0    # "type":I
    .end local v1    # "mode":I
    :sswitch_181
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2306
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2307
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->smsInfoExtInd(ILjava/lang/String;)V

    .line 2308
    goto/16 :goto_542

    .line 2293
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/lang/String;
    :sswitch_191
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2296
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2297
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->networkBandInfoInd(ILjava/util/ArrayList;)V

    .line 2298
    goto/16 :goto_542

    .line 2283
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1a1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2286
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2287
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onSimPowerChangedInd(ILjava/util/ArrayList;)V

    .line 2288
    goto/16 :goto_542

    .line 2273
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1b1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2276
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2277
    .restart local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V

    .line 2278
    goto/16 :goto_542

    .line 2263
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1c1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2266
    .local v0, "indicationType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2267
    .local v1, "dsbpState":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->dsbpStateChanged(II)V

    .line 2268
    goto/16 :goto_542

    .line 2253
    .end local v0    # "indicationType":I
    .end local v1    # "dsbpState":I
    :sswitch_1d1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2256
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2257
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->networkRejectCauseInd(ILjava/util/ArrayList;)V

    .line 2258
    goto/16 :goto_542

    .line 2243
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1e1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2246
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2247
    .local v1, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onTxPowerStatusIndication(ILjava/util/ArrayList;)V

    .line 2248
    goto/16 :goto_542

    .line 2233
    .end local v0    # "type":I
    .end local v1    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1f1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2236
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2237
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onMccMncChanged(ILjava/lang/String;)V

    .line 2238
    goto/16 :goto_542

    .line 2223
    .end local v0    # "type":I
    .end local v1    # "mccmnc":Ljava/lang/String;
    :sswitch_201
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2226
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2227
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onPseudoCellInfoInd(ILjava/util/ArrayList;)V

    .line 2228
    goto/16 :goto_542

    .line 2213
    .end local v0    # "type":I
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_211
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2215
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2216
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2217
    .local v1, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onTxPowerIndication(ILjava/util/ArrayList;)V

    .line 2218
    goto/16 :goto_542

    .line 2204
    .end local v0    # "type":I
    .end local v1    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_221
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2207
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onRemoveRestrictEutran(I)V

    .line 2208
    goto/16 :goto_542

    .line 2195
    .end local v0    # "type":I
    :sswitch_22d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2198
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onMdDataRetryCountReset(I)V

    .line 2199
    goto/16 :goto_542

    .line 2185
    .end local v0    # "type":I
    :sswitch_239
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2188
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2189
    .local v1, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->confSRVCC(ILjava/util/ArrayList;)V

    .line 2190
    goto/16 :goto_542

    .line 2174
    .end local v0    # "type":I
    .end local v1    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_249
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2177
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;-><init>()V

    .line 2178
    .local v1, "pcoData":Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2179
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->pcoDataAfterAttached(ILvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;)V

    .line 2180
    goto/16 :goto_542

    .line 2164
    .end local v0    # "type":I
    .end local v1    # "pcoData":Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;
    :sswitch_25d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2167
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2168
    .local v1, "apnClassType":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->mdChangedApnInd(II)V

    .line 2169
    goto/16 :goto_542

    .line 2155
    .end local v0    # "type":I
    .end local v1    # "apnClassType":I
    :sswitch_26d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2158
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->resetAttachApnInd(I)V

    .line 2159
    goto/16 :goto_542

    .line 2146
    .end local v0    # "type":I
    :sswitch_279
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2149
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onStkMenuReset(I)V

    .line 2150
    goto/16 :goto_542

    .line 2137
    .end local v0    # "type":I
    :sswitch_285
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2140
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->triggerOtaSP(I)V

    .line 2141
    goto/16 :goto_542

    .line 2127
    .end local v0    # "type":I
    :sswitch_291
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2130
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2131
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->bipProactiveCommand(ILjava/lang/String;)V

    .line 2132
    goto/16 :goto_542

    .line 2117
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_2a1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2120
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2121
    .local v1, "cid":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->dedicatedBearerDeactivationInd(II)V

    .line 2122
    goto/16 :goto_542

    .line 2106
    .end local v0    # "type":I
    .end local v1    # "cid":I
    :sswitch_2b1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2109
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;-><init>()V

    .line 2110
    .local v1, "ddcData":Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2111
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->dedicatedBearerModificationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V

    .line 2112
    goto/16 :goto_542

    .line 2095
    .end local v0    # "type":I
    .end local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;
    :sswitch_2c5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2098
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;-><init>()V

    .line 2099
    .restart local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2100
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->dedicatedBearerActivationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V

    .line 2101
    goto/16 :goto_542

    .line 2085
    .end local v0    # "type":I
    .end local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;
    :sswitch_2d9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2088
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2089
    .local v1, "lteBand":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->responseLteNetworkInfo(II)V

    .line 2090
    goto/16 :goto_542

    .line 2074
    .end local v0    # "type":I
    .end local v1    # "lteBand":I
    :sswitch_2e9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2077
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 2078
    .local v1, "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2079
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V

    .line 2080
    goto/16 :goto_542

    .line 2064
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;
    :sswitch_2fd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2067
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2068
    .local v1, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->networkInfoInd(ILjava/util/ArrayList;)V

    .line 2069
    goto/16 :goto_542

    .line 2054
    .end local v0    # "type":I
    .end local v1    # "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_30d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2057
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2058
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->responseFemtocellInfo(ILjava/util/ArrayList;)V

    .line 2059
    goto/16 :goto_542

    .line 2044
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_31d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2047
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2048
    .local v1, "allowed":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->dataAllowedNotification(II)V

    .line 2049
    goto/16 :goto_542

    .line 2034
    .end local v0    # "type":I
    .end local v1    # "allowed":I
    :sswitch_32d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2037
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2038
    .local v1, "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->responseModulationInfoInd(ILjava/util/ArrayList;)V

    .line 2039
    goto/16 :goto_542

    .line 2024
    .end local v0    # "type":I
    .end local v1    # "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_33d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2027
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2028
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->responseNetworkEventInd(ILjava/util/ArrayList;)V

    .line 2029
    goto/16 :goto_542

    .line 2014
    .end local v0    # "type":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_34d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2017
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2018
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->responseInvalidSimInd(ILjava/util/ArrayList;)V

    .line 2019
    goto/16 :goto_542

    .line 2004
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_35d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2007
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2008
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 2009
    goto/16 :goto_542

    .line 1994
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_36d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1997
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1998
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 1999
    goto/16 :goto_542

    .line 1984
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_37d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1987
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1988
    .local v1, "esnMeid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->esnMeidChangeInd(ILjava/lang/String;)V

    .line 1989
    goto/16 :goto_542

    .line 1974
    .end local v0    # "type":I
    .end local v1    # "esnMeid":Ljava/lang/String;
    :sswitch_38d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1977
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1978
    .local v1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->worldModeChangedIndication(ILjava/util/ArrayList;)V

    .line 1979
    goto/16 :goto_542

    .line 1964
    .end local v0    # "type":I
    .end local v1    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_39d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1967
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1968
    .local v1, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->gmssRatChangedIndication(ILjava/util/ArrayList;)V

    .line 1969
    goto/16 :goto_542

    .line 1954
    .end local v0    # "type":I
    .end local v1    # "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_3ad
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1957
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1958
    .local v1, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->registrationSuspendedIndication(ILjava/util/ArrayList;)V

    .line 1959
    goto/16 :goto_542

    .line 1944
    .end local v0    # "type":I
    .end local v1    # "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_3bd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1947
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1948
    .local v1, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->plmnChangedIndication(ILjava/util/ArrayList;)V

    .line 1949
    goto/16 :goto_542

    .line 1934
    .end local v0    # "type":I
    .end local v1    # "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_3cd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1937
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1938
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    .line 1939
    goto/16 :goto_542

    .line 1925
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3dd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1928
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->smsReadyInd(I)V

    .line 1929
    goto/16 :goto_542

    .line 1916
    .end local v0    # "type":I
    :sswitch_3e9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1919
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->meSmsStorageFullInd(I)V

    .line 1920
    goto/16 :goto_542

    .line 1905
    .end local v0    # "type":I
    :sswitch_3f5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1908
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;-><init>()V

    .line 1909
    .local v1, "etws":Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1910
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->newEtwsInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;)V

    .line 1911
    goto/16 :goto_542

    .line 1894
    .end local v0    # "type":I
    .end local v1    # "etws":Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;
    :sswitch_409
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1897
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;-><init>()V

    .line 1898
    .local v1, "event":Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1899
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onVsimEventIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;)V

    .line 1900
    goto/16 :goto_542

    .line 1885
    .end local v0    # "type":I
    .end local v1    # "event":Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;
    :sswitch_41d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1888
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onCardDetectedInd(I)V

    .line 1889
    goto/16 :goto_542

    .line 1875
    .end local v0    # "type":I
    :sswitch_429
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1878
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1879
    .local v1, "eventId":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onRsuSimLockEvent(II)V

    .line 1880
    goto/16 :goto_542

    .line 1866
    .end local v0    # "type":I
    .end local v1    # "eventId":I
    :sswitch_439
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1869
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onSimMeLockEvent(I)V

    .line 1870
    goto/16 :goto_542

    .line 1855
    .end local v0    # "type":I
    :sswitch_445
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1858
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1859
    .local v1, "event":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1860
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onSimHotSwapInd(IILjava/lang/String;)V

    .line 1861
    goto/16 :goto_542

    .line 1846
    .end local v0    # "type":I
    .end local v1    # "event":I
    .end local v2    # "info":Ljava/lang/String;
    :sswitch_459
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1849
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onImsiRefreshDone(I)V

    .line 1850
    goto/16 :goto_542

    .line 1837
    .end local v0    # "type":I
    :sswitch_465
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1840
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onImeiLock(I)V

    .line 1841
    goto/16 :goto_542

    .line 1827
    .end local v0    # "type":I
    :sswitch_471
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1830
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1831
    .local v1, "simInserted":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->onVirtualSimStatusChanged(II)V

    .line 1832
    goto/16 :goto_542

    .line 1816
    .end local v0    # "type":I
    .end local v1    # "simInserted":I
    :sswitch_481
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1819
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1820
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1821
    .local v2, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 1822
    goto/16 :goto_542

    .line 1807
    .end local v0    # "type":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "ecc_list_no_card":Ljava/lang/String;
    :sswitch_495
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1810
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->cdmaCallAccepted(I)V

    .line 1811
    goto/16 :goto_542

    .line 1796
    .end local v0    # "type":I
    :sswitch_4a1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1799
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;-><init>()V

    .line 1800
    .local v1, "crssNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1801
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->crssIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;)V

    .line 1802
    goto/16 :goto_542

    .line 1785
    .end local v0    # "type":I
    .end local v1    # "crssNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;
    :sswitch_4b5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1788
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 1789
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1790
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->suppSvcNotifyEx(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 1791
    goto/16 :goto_542

    .line 1774
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_4c9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1777
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;-><init>()V

    .line 1778
    .local v1, "cipherNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1779
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->cipherIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;)V

    .line 1780
    goto :goto_542

    .line 1763
    .end local v0    # "type":I
    .end local v1    # "cipherNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;
    :sswitch_4dc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1766
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1767
    .local v1, "ciType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1768
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->callAdditionalInfoInd(IILjava/util/ArrayList;)V

    .line 1769
    goto :goto_542

    .line 1752
    .end local v0    # "type":I
    .end local v1    # "ciType":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4ef
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1755
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;-><init>()V

    .line 1756
    .local v1, "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1757
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;)V

    .line 1758
    goto :goto_542

    .line 1741
    .end local v0    # "type":I
    .end local v1    # "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;
    :sswitch_502
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1744
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;-><init>()V

    .line 1745
    .local v1, "cfuStatus":Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1746
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;)V

    .line 1747
    goto :goto_542

    .line 1731
    .end local v0    # "type":I
    .end local v1    # "cfuStatus":Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;
    :sswitch_515
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1734
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1735
    .local v1, "isPhbReady":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->phbReadyNotification(II)V

    .line 1736
    goto :goto_542

    .line 1721
    .end local v0    # "type":I
    .end local v1    # "isPhbReady":I
    :sswitch_524
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1724
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1725
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->eMBMSSessionStatusIndication(II)V

    .line 1726
    goto :goto_542

    .line 1711
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_533
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1714
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1715
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->eMBMSAtInfoIndication(ILjava/lang/String;)V

    .line 1716
    nop

    .line 2532
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/lang/String;
    :goto_542
    return-void

    nop

    :sswitch_data_544
    .sparse-switch
        0x1 -> :sswitch_533
        0x2 -> :sswitch_524
        0x3 -> :sswitch_515
        0x4 -> :sswitch_502
        0x5 -> :sswitch_4ef
        0x6 -> :sswitch_4dc
        0x7 -> :sswitch_4c9
        0x8 -> :sswitch_4b5
        0x9 -> :sswitch_4a1
        0xa -> :sswitch_495
        0xb -> :sswitch_481
        0xc -> :sswitch_471
        0xd -> :sswitch_465
        0xe -> :sswitch_459
        0xf -> :sswitch_445
        0x10 -> :sswitch_439
        0x11 -> :sswitch_429
        0x12 -> :sswitch_41d
        0x13 -> :sswitch_409
        0x14 -> :sswitch_3f5
        0x15 -> :sswitch_3e9
        0x16 -> :sswitch_3dd
        0x17 -> :sswitch_3cd
        0x18 -> :sswitch_3bd
        0x19 -> :sswitch_3ad
        0x1a -> :sswitch_39d
        0x1b -> :sswitch_38d
        0x1c -> :sswitch_37d
        0x1d -> :sswitch_36d
        0x1e -> :sswitch_35d
        0x1f -> :sswitch_34d
        0x20 -> :sswitch_33d
        0x21 -> :sswitch_32d
        0x22 -> :sswitch_31d
        0x23 -> :sswitch_30d
        0x24 -> :sswitch_2fd
        0x25 -> :sswitch_2e9
        0x26 -> :sswitch_2d9
        0x27 -> :sswitch_2c5
        0x28 -> :sswitch_2b1
        0x29 -> :sswitch_2a1
        0x2a -> :sswitch_291
        0x2b -> :sswitch_285
        0x2c -> :sswitch_279
        0x2d -> :sswitch_26d
        0x2e -> :sswitch_25d
        0x2f -> :sswitch_249
        0x30 -> :sswitch_239
        0x31 -> :sswitch_22d
        0x32 -> :sswitch_221
        0x33 -> :sswitch_211
        0x34 -> :sswitch_201
        0x35 -> :sswitch_1f1
        0x36 -> :sswitch_1e1
        0x37 -> :sswitch_1d1
        0x38 -> :sswitch_1c1
        0x39 -> :sswitch_1b1
        0x3a -> :sswitch_1a1
        0x3b -> :sswitch_191
        0x3c -> :sswitch_181
        0x3d -> :sswitch_171
        0x3e -> :sswitch_161
        0x3f -> :sswitch_151
        0x40 -> :sswitch_141
        0x41 -> :sswitch_131
        0x42 -> :sswitch_121
        0x43 -> :sswitch_10d
        0x44 -> :sswitch_f9
        0x45 -> :sswitch_e1
        0x46 -> :sswitch_cd
        0xf43484e -> :sswitch_bb
        0xf444247 -> :sswitch_a5
        0xf445343 -> :sswitch_93
        0xf485348 -> :sswitch_3e
        0xf494e54 -> :sswitch_36
        0xf4c5444 -> :sswitch_34
        0xf504e47 -> :sswitch_26
        0xf524546 -> :sswitch_14
        0xf535953 -> :sswitch_c
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 1662
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1690
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1691
    return-object p0

    .line 1693
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1697
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1698
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 1652
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1684
    const/4 v0, 0x1

    return v0
.end method
