.class public abstract Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_0/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_0/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7310
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 7313
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

    .line 7329
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 7369
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 7370
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 7371
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 7372
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 7373
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

    .line 7341
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

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

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7318
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.0::IRadio"

    const-string v2, "android.hardware.radio@1.2::IRadio"

    const-string v3, "android.hardware.radio@1.1::IRadio"

    const-string v4, "android.hardware.radio@1.0::IRadio"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 7335
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 7357
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 7379
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 7381
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

    .line 7409
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

    .line 12430
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    move v0, v5

    .line 12431
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_28c

    .line 12432
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12434
    goto/16 :goto_c

    .line 12417
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    move v1, v5

    .line 12418
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_2

    .line 12419
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12421
    goto/16 :goto_c

    .line 12422
    :cond_2
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12424
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->notifySyspropsChanged()V

    .line 12425
    goto/16 :goto_c

    .line 12401
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v1, v6

    .line 12402
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 12403
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12405
    goto/16 :goto_c

    .line 12406
    :cond_4
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12408
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 12409
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12410
    invoke-virtual {v0, v15}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 12411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12412
    goto/16 :goto_c

    .line 12386
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

    .line 12387
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 12388
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12389
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12390
    goto/16 :goto_c

    .line 12391
    :cond_6
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12393
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->ping()V

    .line 12394
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12396
    goto/16 :goto_c

    .line 12376
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    move v0, v5

    .line 12377
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_28c

    .line 12378
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12380
    goto/16 :goto_c

    .line 12363
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    move v1, v5

    .line 12364
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_9

    .line 12365
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12367
    goto/16 :goto_c

    .line 12368
    :cond_9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12370
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setHALInstrumentation()V

    .line 12371
    goto/16 :goto_c

    .line 12324
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    move v1, v6

    .line 12325
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 12326
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12328
    goto/16 :goto_c

    .line 12329
    :cond_b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12331
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 12332
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12334
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 12336
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 12337
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 12338
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 12339
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 12340
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 12342
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 12343
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 12345
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 12349
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 12350
    nop

    .line 12340
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 12346
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 12353
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 12355
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 12357
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12358
    goto/16 :goto_c

    .line 12308
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

    .line 12309
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 12310
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12311
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12312
    goto/16 :goto_c

    .line 12313
    :cond_f
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12315
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 12316
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12317
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 12318
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12319
    goto/16 :goto_c

    .line 12291
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

    .line 12292
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 12293
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12295
    goto/16 :goto_c

    .line 12296
    :cond_11
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 12299
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 12300
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 12301
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12302
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12303
    goto/16 :goto_c

    .line 12275
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

    .line 12276
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 12277
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12278
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12279
    goto/16 :goto_c

    .line 12280
    :cond_13
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12282
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 12283
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12284
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 12285
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12286
    goto/16 :goto_c

    .line 12260
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v5, v6

    :cond_14
    move v0, v5

    .line 12261
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15

    .line 12262
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12264
    goto/16 :goto_c

    .line 12265
    :cond_15
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12268
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12269
    .local v2, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 12270
    goto/16 :goto_c

    .line 12245
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pwd":Ljava/lang/String;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v5, v6

    :cond_16
    move v0, v5

    .line 12246
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17

    .line 12247
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12248
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12249
    goto/16 :goto_c

    .line 12250
    :cond_17
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12253
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12254
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSuppServProperty(ILjava/lang/String;)V

    .line 12255
    goto/16 :goto_c

    .line 12229
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v5, v6

    :cond_18
    move v0, v5

    .line 12230
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19

    .line 12231
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12233
    goto/16 :goto_c

    .line 12234
    :cond_19
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12236
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12237
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12238
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 12239
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 12240
    goto/16 :goto_c

    .line 12213
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v5, v6

    :cond_1a
    move v0, v5

    .line 12214
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b

    .line 12215
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12217
    goto/16 :goto_c

    .line 12218
    :cond_1b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12221
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12222
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 12223
    .local v3, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setOperatorConfiguration(IILjava/lang/String;)V

    .line 12224
    goto/16 :goto_c

    .line 12198
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v5, v6

    :cond_1c
    move v0, v5

    .line 12199
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d

    .line 12200
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12201
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12202
    goto/16 :goto_c

    .line 12203
    :cond_1d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12206
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12207
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPropImsHandover(ILjava/lang/String;)V

    .line 12208
    goto/16 :goto_c

    .line 12183
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "value":Ljava/lang/String;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v5, v6

    :cond_1e
    move v0, v5

    .line 12184
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f

    .line 12185
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12187
    goto/16 :goto_c

    .line 12188
    :cond_1f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12191
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12192
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setTxPowerStatus(II)V

    .line 12193
    goto/16 :goto_c

    .line 12168
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v5, v6

    :cond_20
    move v0, v5

    .line 12169
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21

    .line 12170
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12172
    goto/16 :goto_c

    .line 12173
    :cond_21
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12175
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12176
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12177
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSilentReboot(II)V

    .line 12178
    goto/16 :goto_c

    .line 12153
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v5, v6

    :cond_22
    move v0, v5

    .line 12154
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23

    .line 12155
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12157
    goto/16 :goto_c

    .line 12158
    :cond_23
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12161
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12162
    .local v2, "simMode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reportSimMode(II)V

    .line 12163
    goto/16 :goto_c

    .line 12138
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simMode":I
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v5, v6

    :cond_24
    move v0, v5

    .line 12139
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25

    .line 12140
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12141
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12142
    goto/16 :goto_c

    .line 12143
    :cond_25
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12145
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12146
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12147
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reportAirplaneMode(II)V

    .line 12148
    goto/16 :goto_c

    .line 12124
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v5, v6

    :cond_26
    move v0, v5

    .line 12125
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27

    .line 12126
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12127
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12128
    goto/16 :goto_c

    .line 12129
    :cond_27
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12132
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getLteReleaseVersion(I)V

    .line 12133
    goto/16 :goto_c

    .line 12109
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v5, v6

    :cond_28
    move v0, v5

    .line 12110
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_29

    .line 12111
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12112
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12113
    goto/16 :goto_c

    .line 12114
    :cond_29
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12116
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12117
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12118
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLteReleaseVersion(II)V

    .line 12119
    goto/16 :goto_c

    .line 12095
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v5, v6

    :cond_2a
    move v0, v5

    .line 12096
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2b

    .line 12097
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12099
    goto/16 :goto_c

    .line 12100
    :cond_2b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12103
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resetAllConnections(I)V

    .line 12104
    goto/16 :goto_c

    .line 12080
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v5, v6

    :cond_2c
    move v0, v5

    .line 12081
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2d

    .line 12082
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12083
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12084
    goto/16 :goto_c

    .line 12085
    :cond_2d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12088
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12089
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->dataConnectionDetach(II)V

    .line 12090
    goto/16 :goto_c

    .line 12065
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v5, v6

    :cond_2e
    move v0, v5

    .line 12066
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2f

    .line 12067
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12068
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12069
    goto/16 :goto_c

    .line 12070
    :cond_2f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12072
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12073
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12074
    .restart local v2    # "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->dataConnectionAttach(II)V

    .line 12075
    goto/16 :goto_c

    .line 12050
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v5, v6

    :cond_30
    move v0, v5

    .line 12051
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_31

    .line 12052
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12053
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12054
    goto/16 :goto_c

    .line 12055
    :cond_31
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12057
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12058
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12059
    .local v2, "featureId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsCfgResourceCapValue(II)V

    .line 12060
    goto/16 :goto_c

    .line 12034
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v5, v6

    :cond_32
    move v0, v5

    .line 12035
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_33

    .line 12036
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12037
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12038
    goto/16 :goto_c

    .line 12039
    :cond_33
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12042
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12043
    .restart local v2    # "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 12044
    .local v3, "value":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsCfgResourceCapValue(III)V

    .line 12045
    goto/16 :goto_c

    .line 12019
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "value":I
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v5, v6

    :cond_34
    move v0, v5

    .line 12020
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_35

    .line 12021
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12022
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12023
    goto/16 :goto_c

    .line 12024
    :cond_35
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12026
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12027
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12028
    .local v2, "configId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsCfgProvisionValue(II)V

    .line 12029
    goto/16 :goto_c

    .line 12003
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v5, v6

    :cond_36
    move v0, v5

    .line 12004
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_37

    .line 12005
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 12006
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 12007
    goto/16 :goto_c

    .line 12008
    :cond_37
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 12010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 12011
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 12012
    .restart local v2    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 12013
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 12014
    goto/16 :goto_c

    .line 11987
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configId":I
    .end local v3    # "value":Ljava/lang/String;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v5, v6

    :cond_38
    move v0, v5

    .line 11988
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_39

    .line 11989
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11991
    goto/16 :goto_c

    .line 11992
    :cond_39
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11995
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11996
    .local v2, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11997
    .local v3, "network":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsCfgFeatureValue(III)V

    .line 11998
    goto/16 :goto_c

    .line 11969
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureId":I
    .end local v3    # "network":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v5, v6

    :cond_3a
    move v7, v5

    .line 11970
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_3b

    .line 11971
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11973
    goto/16 :goto_c

    .line 11974
    :cond_3b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 11977
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 11978
    .local v8, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 11979
    .local v9, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 11980
    .local v10, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 11981
    .local v11, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 11982
    goto/16 :goto_c

    .line 11954
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "featureId":I
    .end local v9    # "network":I
    .end local v10    # "value":I
    .end local v11    # "isLast":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v5, v6

    :cond_3c
    move v0, v5

    .line 11955
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3d

    .line 11956
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11957
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11958
    goto/16 :goto_c

    .line 11959
    :cond_3d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11962
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11963
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsBearerNotification(II)V

    .line 11964
    goto/16 :goto_c

    .line 11940
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v5, v6

    :cond_3e
    move v0, v5

    .line 11941
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3f

    .line 11942
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11943
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11944
    goto/16 :goto_c

    .line 11945
    :cond_3f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11947
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11948
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getApcInfo(I)V

    .line 11949
    goto/16 :goto_c

    .line 11923
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v5, v6

    :cond_40
    move v0, v5

    .line 11924
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_41

    .line 11925
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11926
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11927
    goto/16 :goto_c

    .line 11928
    :cond_41
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11931
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11932
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11933
    .local v3, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11934
    .local v4, "interval":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setApcMode(IIII)V

    .line 11935
    goto/16 :goto_c

    .line 11906
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "reportMode":I
    .end local v4    # "interval":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v5, v6

    :cond_42
    move v0, v5

    .line 11907
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_43

    .line 11908
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11910
    goto/16 :goto_c

    .line 11911
    :cond_43
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11914
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11915
    .local v2, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11916
    .local v3, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11917
    .local v4, "pktloss":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiPingResult(IIII)V

    .line 11918
    goto/16 :goto_c

    .line 11886
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rat":I
    .end local v3    # "latency":I
    .end local v4    # "pktloss":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v5, v6

    :cond_44
    move v8, v5

    .line 11887
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_45

    .line 11888
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11889
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11890
    goto/16 :goto_c

    .line 11891
    :cond_45
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 11894
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11895
    .local v10, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 11896
    .local v11, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 11897
    .local v12, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 11898
    .local v16, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11899
    .local v17, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 11900
    .local v18, "dstPort":I
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 11901
    goto/16 :goto_c

    .line 11871
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "ifName":Ljava/lang/String;
    .end local v11    # "enable":Z
    .end local v12    # "srcIp":Ljava/lang/String;
    .end local v16    # "srcPort":I
    .end local v17    # "dstIp":Ljava/lang/String;
    .end local v18    # "dstPort":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v5, v6

    :cond_46
    move v0, v5

    .line 11872
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_47

    .line 11873
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11875
    goto/16 :goto_c

    .line 11876
    :cond_47
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11879
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11880
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 11881
    goto/16 :goto_c

    .line 11846
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v5, v6

    :cond_48
    move v12, v5

    .line 11847
    .local v12, "_hidl_is_oneway":Z
    if-eq v12, v6, :cond_49

    .line 11848
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11849
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11850
    goto/16 :goto_c

    .line 11851
    :cond_49
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11853
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 11854
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11855
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 11856
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 11857
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 11858
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 11859
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 11860
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 11861
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 11862
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 11863
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 11864
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 11865
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11866
    goto/16 :goto_c

    .line 11829
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
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v5, v6

    :cond_4a
    move v0, v5

    .line 11830
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4b

    .line 11831
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11832
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11833
    goto/16 :goto_c

    .line 11834
    :cond_4b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11836
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11837
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11838
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11839
    .local v3, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 11840
    .local v4, "ipv6Addr":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11841
    goto/16 :goto_c

    .line 11813
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "ipv4Addr":Ljava/lang/String;
    .end local v4    # "ipv6Addr":Ljava/lang/String;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v5, v6

    :cond_4c
    move v0, v5

    .line 11814
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4d

    .line 11815
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11816
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11817
    goto/16 :goto_c

    .line 11818
    :cond_4d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11821
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11822
    .local v2, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11823
    .local v3, "snr":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiSignalLevel(III)V

    .line 11824
    goto/16 :goto_c

    .line 11795
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rssi":I
    .end local v3    # "snr":I
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v5, v6

    :cond_4e
    move v7, v5

    .line 11796
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_4f

    .line 11797
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11799
    goto/16 :goto_c

    .line 11800
    :cond_4f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 11803
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 11804
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 11805
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11806
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11807
    .local v11, "apMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11808
    goto/16 :goto_c

    .line 11778
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v5, v6

    :cond_50
    move v0, v5

    .line 11779
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_51

    .line 11780
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11781
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11782
    goto/16 :goto_c

    .line 11783
    :cond_51
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11786
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11787
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11788
    .local v3, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11789
    .local v4, "isFlightModeOn":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 11790
    goto/16 :goto_c

    .line 11763
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "isWifiEnabled":I
    .end local v4    # "isFlightModeOn":I
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v5, v6

    :cond_52
    move v0, v5

    .line 11764
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_53

    .line 11765
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11767
    goto/16 :goto_c

    .line 11768
    :cond_53
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11770
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11771
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11772
    .local v2, "vdp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setVoiceDomainPreference(II)V

    .line 11773
    goto/16 :goto_c

    .line 11748
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "vdp":I
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v5, v6

    :cond_54
    move v0, v5

    .line 11749
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_55

    .line 11750
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11751
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11752
    goto/16 :goto_c

    .line 11753
    :cond_55
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11755
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11756
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11757
    .local v2, "state":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setE911State(II)V

    .line 11758
    goto/16 :goto_c

    .line 11732
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v5, v6

    :cond_56
    move v0, v5

    .line 11733
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_57

    .line 11734
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11735
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11736
    goto/16 :goto_c

    .line 11737
    :cond_57
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11739
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11740
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11741
    .restart local v2    # "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11742
    .local v3, "interfaceId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLteUplinkDataTransfer(III)V

    .line 11743
    goto/16 :goto_c

    .line 11717
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "state":I
    .end local v3    # "interfaceId":I
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v5, v6

    :cond_58
    move v0, v5

    .line 11718
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_59

    .line 11719
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11720
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11721
    goto/16 :goto_c

    .line 11722
    :cond_59
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11725
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11726
    .local v2, "enable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLteAccessStratumReport(II)V

    .line 11727
    goto/16 :goto_c

    .line 11702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":I
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v5, v6

    :cond_5a
    move v0, v5

    .line 11703
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5b

    .line 11704
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11706
    goto/16 :goto_c

    .line 11707
    :cond_5b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11710
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11711
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRemoveRestrictEutranMode(II)V

    .line 11712
    goto/16 :goto_c

    .line 11687
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v5, v6

    :cond_5c
    move v0, v5

    .line 11688
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5d

    .line 11689
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11691
    goto/16 :goto_c

    .line 11692
    :cond_5d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11695
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11696
    .local v2, "apn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 11697
    goto/16 :goto_c

    .line 11672
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apn":Ljava/lang/String;
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v5, v6

    :cond_5e
    move v0, v5

    .line 11673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5f

    .line 11674
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11676
    goto/16 :goto_c

    .line 11677
    :cond_5f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11679
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11680
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 11681
    .local v2, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 11682
    goto/16 :goto_c

    .line 11658
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    move v0, v5

    .line 11659
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_61

    .line 11660
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11662
    goto/16 :goto_c

    .line 11663
    :cond_61
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11666
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->restartRILD(I)V

    .line 11667
    goto/16 :goto_c

    .line 11644
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v5, v6

    :cond_62
    move v0, v5

    .line 11645
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_63

    .line 11646
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11648
    goto/16 :goto_c

    .line 11649
    :cond_63
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11651
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11652
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resetRadio(I)V

    .line 11653
    goto/16 :goto_c

    .line 11629
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v5, v6

    :cond_64
    move v0, v5

    .line 11630
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_65

    .line 11631
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11632
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11633
    goto/16 :goto_c

    .line 11634
    :cond_65
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11637
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 11638
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 11639
    goto/16 :goto_c

    .line 11614
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v5, v6

    :cond_66
    move v0, v5

    .line 11615
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_67

    .line 11616
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11617
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11618
    goto/16 :goto_c

    .line 11619
    :cond_67
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;

    move-result-object v1

    .line 11622
    .local v1, "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;

    move-result-object v2

    .line 11623
    .local v2, "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;)V

    .line 11624
    goto/16 :goto_c

    .line 11599
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "atciResponse":Lvendor/mediatek/hardware/radio/V3_0/IAtciResponse;
    .end local v2    # "atciIndication":Lvendor/mediatek/hardware/radio/V3_0/IAtciIndication;
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v5, v6

    :cond_68
    move v0, v5

    .line 11600
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_69

    .line 11601
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11603
    goto/16 :goto_c

    .line 11604
    :cond_69
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11607
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11608
    .local v2, "apnName":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPdnNameReuse(ILjava/lang/String;)V

    .line 11609
    goto/16 :goto_c

    .line 11584
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "apnName":Ljava/lang/String;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v5, v6

    :cond_6a
    move v0, v5

    .line 11585
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6b

    .line 11586
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11587
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11588
    goto/16 :goto_c

    .line 11589
    :cond_6b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11591
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11592
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11593
    .local v2, "overridApn":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setOverrideApn(ILjava/lang/String;)V

    .line 11594
    goto/16 :goto_c

    .line 11569
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "overridApn":Ljava/lang/String;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v5, v6

    :cond_6c
    move v0, v5

    .line 11570
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6d

    .line 11571
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11572
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11573
    goto/16 :goto_c

    .line 11574
    :cond_6d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11577
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11578
    .local v2, "pdnReuse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPdnReuse(ILjava/lang/String;)V

    .line 11579
    goto/16 :goto_c

    .line 11554
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnReuse":Ljava/lang/String;
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v5, v6

    :cond_6e
    move v0, v5

    .line 11555
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6f

    .line 11556
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11557
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11558
    goto/16 :goto_c

    .line 11559
    :cond_6f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11562
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11563
    .local v2, "resultCode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 11564
    goto/16 :goto_c

    .line 11539
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resultCode":I
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v5, v6

    :cond_70
    move v0, v5

    .line 11540
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_71

    .line 11541
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11543
    goto/16 :goto_c

    .line 11544
    :cond_71
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11546
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11547
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11548
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setTrm(II)V

    .line 11549
    goto/16 :goto_c

    .line 11522
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v5, v6

    :cond_72
    move v0, v5

    .line 11523
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_73

    .line 11524
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11525
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11526
    goto/16 :goto_c

    .line 11527
    :cond_73
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11529
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11530
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11531
    .restart local v2    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11532
    .local v3, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11533
    .local v4, "param2":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setFdMode(IIII)V

    .line 11534
    goto/16 :goto_c

    .line 11505
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "param1":I
    .end local v4    # "param2":I
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v5, v6

    :cond_74
    move v0, v5

    .line 11506
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_75

    .line 11507
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11509
    goto/16 :goto_c

    .line 11510
    :cond_75
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11513
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11514
    .local v2, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11515
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11516
    .local v4, "nAct":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 11517
    goto/16 :goto_c

    .line 11491
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "nAct":I
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v5, v6

    :cond_76
    move v0, v5

    .line 11492
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_77

    .line 11493
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11495
    goto/16 :goto_c

    .line 11496
    :cond_77
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11498
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11499
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCurrentPOLList(I)V

    .line 11500
    goto/16 :goto_c

    .line 11477
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v5, v6

    :cond_78
    move v0, v5

    .line 11478
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_79

    .line 11479
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11481
    goto/16 :goto_c

    .line 11482
    :cond_79
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11485
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPOLCapability(I)V

    .line 11486
    goto/16 :goto_c

    .line 11462
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v5, v6

    :cond_7a
    move v0, v5

    .line 11463
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7b

    .line 11464
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11466
    goto/16 :goto_c

    .line 11467
    :cond_7b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11470
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11471
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getRxTestResult(II)V

    .line 11472
    goto/16 :goto_c

    .line 11447
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v5, v6

    :cond_7c
    move v0, v5

    .line 11448
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7d

    .line 11449
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11450
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11451
    goto/16 :goto_c

    .line 11452
    :cond_7d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11454
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11455
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11456
    .local v2, "antType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRxTestConfig(II)V

    .line 11457
    goto/16 :goto_c

    .line 11427
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "antType":I
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v5, v6

    :cond_7e
    move v8, v5

    .line 11428
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_7f

    .line 11429
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11430
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11431
    goto/16 :goto_c

    .line 11432
    :cond_7f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 11435
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 11436
    .local v10, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 11437
    .local v11, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 11438
    .local v12, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 11439
    .local v16, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 11440
    .local v17, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 11441
    .local v18, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setServiceStateToModem(IIIIIII)V

    .line 11442
    goto/16 :goto_c

    .line 11412
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "voiceRegState":I
    .end local v11    # "dataRegState":I
    .end local v12    # "voiceRoamingType":I
    .end local v16    # "dataRoamingType":I
    .end local v17    # "rilVoiceRegState":I
    .end local v18    # "rilDataRegState":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v5, v6

    :cond_80
    move v0, v5

    .line 11413
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_81

    .line 11414
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11416
    goto/16 :goto_c

    .line 11417
    :cond_81
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11420
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11421
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 11422
    goto/16 :goto_c

    .line 11398
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v5, v6

    :cond_82
    move v0, v5

    .line 11399
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_83

    .line 11400
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11401
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11402
    goto/16 :goto_c

    .line 11403
    :cond_83
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11405
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11406
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 11407
    goto/16 :goto_c

    .line 11381
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v5, v6

    :cond_84
    move v0, v5

    .line 11382
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_85

    .line 11383
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11384
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11385
    goto/16 :goto_c

    .line 11386
    :cond_85
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11389
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11390
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11391
    .local v3, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 11392
    .local v4, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11393
    goto/16 :goto_c

    .line 11367
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "csgId":Ljava/lang/String;
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v5, v6

    :cond_86
    move v0, v5

    .line 11368
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_87

    .line 11369
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11371
    goto/16 :goto_c

    .line 11372
    :cond_87
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11375
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->abortFemtocellList(I)V

    .line 11376
    goto/16 :goto_c

    .line 11353
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v5, v6

    :cond_88
    move v0, v5

    .line 11354
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_89

    .line 11355
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11356
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11357
    goto/16 :goto_c

    .line 11358
    :cond_89
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11360
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11361
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getFemtocellList(I)V

    .line 11362
    goto/16 :goto_c

    .line 11339
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v5, v6

    :cond_8a
    move v0, v5

    .line 11340
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8b

    .line 11341
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11343
    goto/16 :goto_c

    .line 11344
    :cond_8b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11347
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->cancelAvailableNetworks(I)V

    .line 11348
    goto/16 :goto_c

    .line 11325
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v5, v6

    :cond_8c
    move v0, v5

    .line 11326
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8d

    .line 11327
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11328
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11329
    goto/16 :goto_c

    .line 11330
    :cond_8d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11333
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 11334
    goto/16 :goto_c

    .line 11311
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v5, v6

    :cond_8e
    move v0, v5

    .line 11312
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8f

    .line 11313
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11315
    goto/16 :goto_c

    .line 11316
    :cond_8f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11319
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getAvailableNetworksWithAct(I)V

    .line 11320
    goto/16 :goto_c

    .line 11294
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v5, v6

    :cond_90
    move v0, v5

    .line 11295
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_91

    .line 11296
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11298
    goto/16 :goto_c

    .line 11299
    :cond_91
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11302
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11303
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11304
    .restart local v3    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 11305
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11306
    goto/16 :goto_c

    .line 11280
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "act":Ljava/lang/String;
    .end local v4    # "mode":Ljava/lang/String;
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v5, v6

    :cond_92
    move v0, v5

    .line 11281
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_93

    .line 11282
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11283
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11284
    goto/16 :goto_c

    .line 11285
    :cond_93
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11287
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11288
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSmsRuimMemoryStatus(I)V

    .line 11289
    goto/16 :goto_c

    .line 11265
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v5, v6

    :cond_94
    move v0, v5

    .line 11266
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_95

    .line 11267
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11268
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11269
    goto/16 :goto_c

    .line 11270
    :cond_95
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11273
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11274
    .local v2, "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reloadModemType(II)V

    .line 11275
    goto/16 :goto_c

    .line 11250
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v5, v6

    :cond_96
    move v0, v5

    .line 11251
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_97

    .line 11252
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11254
    goto/16 :goto_c

    .line 11255
    :cond_97
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11258
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11259
    .restart local v2    # "modemType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->storeModemType(II)V

    .line 11260
    goto/16 :goto_c

    .line 11235
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "modemType":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v5, v6

    :cond_98
    move v0, v5

    .line 11236
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_99

    .line 11237
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11239
    goto/16 :goto_c

    .line 11240
    :cond_99
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11243
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11244
    .local v2, "sessionId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResumeRegistration(II)V

    .line 11245
    goto/16 :goto_c

    .line 11220
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionId":I
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v5, v6

    :cond_9a
    move v0, v5

    .line 11221
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9b

    .line 11222
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11223
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11224
    goto/16 :goto_c

    .line 11225
    :cond_9b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11228
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 11229
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 11230
    goto/16 :goto_c

    .line 11205
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v5, v6

    :cond_9c
    move v0, v5

    .line 11206
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9d

    .line 11207
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11209
    goto/16 :goto_c

    .line 11210
    :cond_9d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11213
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 11214
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 11215
    goto/16 :goto_c

    .line 11189
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v5, v6

    :cond_9e
    move v0, v5

    .line 11190
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9f

    .line 11191
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11193
    goto/16 :goto_c

    .line 11194
    :cond_9f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11197
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 11198
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 11199
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 11200
    goto/16 :goto_c

    .line 11173
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v5, v6

    :cond_a0
    move v0, v5

    .line 11174
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a1

    .line 11175
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11177
    goto/16 :goto_c

    .line 11178
    :cond_a1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11181
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 11182
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11183
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 11184
    goto/16 :goto_c

    .line 11159
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v5, v6

    :cond_a2
    move v0, v5

    .line 11160
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a3

    .line 11161
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11162
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11163
    goto/16 :goto_c

    .line 11164
    :cond_a3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11167
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSmsFwkReady(I)V

    .line 11168
    goto/16 :goto_c

    .line 11143
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v5, v6

    :cond_a4
    move v0, v5

    .line 11144
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a5

    .line 11145
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11146
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11147
    goto/16 :goto_c

    .line 11148
    :cond_a5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11151
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 11152
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 11153
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 11154
    goto/16 :goto_c

    .line 11129
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v5, v6

    :cond_a6
    move v0, v5

    .line 11130
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a7

    .line 11131
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11133
    goto/16 :goto_c

    .line 11134
    :cond_a7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11137
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getGsmBroadcastActivation(I)V

    .line 11138
    goto/16 :goto_c

    .line 11115
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v5, v6

    :cond_a8
    move v0, v5

    .line 11116
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a9

    .line 11117
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11119
    goto/16 :goto_c

    .line 11120
    :cond_a9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11123
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getGsmBroadcastLangs(I)V

    .line 11124
    goto/16 :goto_c

    .line 11100
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v5, v6

    :cond_aa
    move v0, v5

    .line 11101
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ab

    .line 11102
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11103
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11104
    goto/16 :goto_c

    .line 11105
    :cond_ab
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11108
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11109
    .local v2, "langs":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 11110
    goto/16 :goto_c

    .line 11084
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "langs":Ljava/lang/String;
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v5, v6

    :cond_ac
    move v0, v5

    .line 11085
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ad

    .line 11086
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11088
    goto/16 :goto_c

    .line 11089
    :cond_ad
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11092
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11093
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 11094
    .local v3, "serialId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->removeCbMsg(III)V

    .line 11095
    goto/16 :goto_c

    .line 11069
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    .end local v3    # "serialId":I
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v5, v6

    :cond_ae
    move v0, v5

    .line 11070
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_af

    .line 11071
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11073
    goto/16 :goto_c

    .line 11074
    :cond_af
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11077
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 11078
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEtws(II)V

    .line 11079
    goto/16 :goto_c

    .line 11055
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v5, v6

    :cond_b0
    move v0, v5

    .line 11056
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b1

    .line 11057
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11059
    goto/16 :goto_c

    .line 11060
    :cond_b1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11063
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSmsMemStatus(I)V

    .line 11064
    goto/16 :goto_c

    .line 11039
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v5, v6

    :cond_b2
    move v0, v5

    .line 11040
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b3

    .line 11041
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11042
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11043
    goto/16 :goto_c

    .line 11044
    :cond_b3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11046
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11047
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;-><init>()V

    .line 11048
    .local v2, "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 11049
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSmsParameters(ILvendor/mediatek/hardware/radio/V3_0/SmsParams;)V

    .line 11050
    goto/16 :goto_c

    .line 11025
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Lvendor/mediatek/hardware/radio/V3_0/SmsParams;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v5, v6

    :cond_b4
    move v0, v5

    .line 11026
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b5

    .line 11027
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11028
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11029
    goto/16 :goto_c

    .line 11030
    :cond_b5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 11033
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSmsParameters(I)V

    .line 11034
    goto/16 :goto_c

    .line 11006
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v5, v6

    :cond_b6
    move v7, v5

    .line 11007
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_b7

    .line 11008
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 11009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 11010
    goto/16 :goto_c

    .line 11011
    :cond_b7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 11013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 11014
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 11015
    .local v9, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 11016
    .local v10, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 11017
    .local v11, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 11018
    .local v12, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 11019
    .local v16, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 11020
    goto/16 :goto_c

    .line 10989
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "transactionId":I
    .end local v10    # "eventId":I
    .end local v11    # "result":I
    .end local v12    # "dataLength":I
    .end local v16    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v5, v6

    :cond_b8
    move v0, v5

    .line 10990
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b9

    .line 10991
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10993
    goto/16 :goto_c

    .line 10994
    :cond_b9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10997
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10998
    .local v2, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10999
    .local v3, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 11000
    .local v4, "simType":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendVsimNotification(IIII)V

    .line 11001
    goto/16 :goto_c

    .line 10973
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "transactionId":I
    .end local v3    # "eventId":I
    .end local v4    # "simType":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v5, v6

    :cond_ba
    move v0, v5

    .line 10974
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bb

    .line 10975
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10976
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10977
    goto/16 :goto_c

    .line 10978
    :cond_bb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10981
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10982
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10983
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 10984
    goto/16 :goto_c

    .line 10953
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v5, v6

    :cond_bc
    move v8, v5

    .line 10954
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_bd

    .line 10955
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10957
    goto/16 :goto_c

    .line 10958
    :cond_bd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 10961
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 10962
    .local v10, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10963
    .local v11, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 10964
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 10965
    .local v16, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 10966
    .local v17, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 10967
    .local v18, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10968
    goto/16 :goto_c

    .line 10938
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "category":I
    .end local v11    # "lockop":I
    .end local v12    # "password":Ljava/lang/String;
    .end local v16    # "data_imsi":Ljava/lang/String;
    .end local v17    # "gid1":Ljava/lang/String;
    .end local v18    # "gid2":Ljava/lang/String;
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v5, v6

    :cond_be
    move v0, v5

    .line 10939
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bf

    .line 10940
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10941
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10942
    goto/16 :goto_c

    .line 10943
    :cond_bf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10946
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10947
    .local v2, "category":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryNetworkLock(II)V

    .line 10948
    goto/16 :goto_c

    .line 10922
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "category":I
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v5, v6

    :cond_c0
    move v0, v5

    .line 10923
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c1

    .line 10924
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10925
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10926
    goto/16 :goto_c

    .line 10927
    :cond_c1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10930
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;-><init>()V

    .line 10931
    .local v2, "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10932
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;)V

    .line 10933
    goto/16 :goto_c

    .line 10907
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "simAuth":Lvendor/mediatek/hardware/radio/V3_0/SimAuthStructure;
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v5, v6

    :cond_c2
    move v0, v5

    .line 10908
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c3

    .line 10909
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10910
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10911
    goto/16 :goto_c

    .line 10912
    :cond_c3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10914
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10915
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10916
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSimPower(II)V

    .line 10917
    goto/16 :goto_c

    .line 10893
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v5, v6

    :cond_c4
    move v0, v5

    .line 10894
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c5

    .line 10895
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10896
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10897
    goto/16 :goto_c

    .line 10898
    :cond_c5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10901
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getIccid(I)V

    .line 10902
    goto/16 :goto_c

    .line 10879
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v5, v6

    :cond_c6
    move v0, v5

    .line 10880
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c7

    .line 10881
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10882
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10883
    goto/16 :goto_c

    .line 10884
    :cond_c7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10886
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10887
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getATR(I)V

    .line 10888
    goto/16 :goto_c

    .line 10864
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v5, v6

    :cond_c8
    move v0, v5

    .line 10865
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c9

    .line 10866
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10867
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10868
    goto/16 :goto_c

    .line 10869
    :cond_c9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10872
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10873
    .restart local v2    # "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->triggerModeSwitchByEcc(II)V

    .line 10874
    goto/16 :goto_c

    .line 10849
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v5, v6

    :cond_ca
    move v0, v5

    .line 10850
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cb

    .line 10851
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10853
    goto/16 :goto_c

    .line 10854
    :cond_cb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10857
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 10858
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setModemPower(IZ)V

    .line 10859
    goto/16 :goto_c

    .line 10834
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v5, v6

    :cond_cc
    move v0, v5

    .line 10835
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cd

    .line 10836
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10838
    goto/16 :goto_c

    .line 10839
    :cond_cd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10841
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10842
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10843
    .local v2, "ready":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPhonebookReady(II)V

    .line 10844
    goto/16 :goto_c

    .line 10818
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ready":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v5, v6

    :cond_ce
    move v0, v5

    .line 10819
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cf

    .line 10820
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10822
    goto/16 :goto_c

    .line 10823
    :cond_cf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10826
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10827
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10828
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBAasList(III)V

    .line 10829
    goto/16 :goto_c

    .line 10802
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v5, v6

    :cond_d0
    move v0, v5

    .line 10803
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d1

    .line 10804
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10805
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10806
    goto/16 :goto_c

    .line 10807
    :cond_d1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10809
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10810
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10811
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10812
    .local v3, "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBAnrEntry(III)V

    .line 10813
    goto/16 :goto_c

    .line 10786
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "fileIndex":I
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v5, v6

    :cond_d2
    move v0, v5

    .line 10787
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d3

    .line 10788
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10790
    goto/16 :goto_c

    .line 10791
    :cond_d3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10794
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10795
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10796
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBSneEntry(III)V

    .line 10797
    goto/16 :goto_c

    .line 10770
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

    .line 10771
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d5

    .line 10772
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10774
    goto/16 :goto_c

    .line 10775
    :cond_d5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10778
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10779
    .restart local v2    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10780
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBEmailEntry(III)V

    .line 10781
    goto/16 :goto_c

    .line 10754
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

    .line 10755
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d7

    .line 10756
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10758
    goto/16 :goto_c

    .line 10759
    :cond_d7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10761
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10762
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10763
    .local v2, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10764
    .restart local v3    # "fileIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryUPBAvailable(III)V

    .line 10765
    goto/16 :goto_c

    .line 10738
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "eftype":I
    .end local v3    # "fileIndex":I
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v5, v6

    :cond_d8
    move v0, v5

    .line 10739
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d9

    .line 10740
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10741
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10742
    goto/16 :goto_c

    .line 10743
    :cond_d9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10745
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10746
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;-><init>()V

    .line 10747
    .local v2, "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10748
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;)V

    .line 10749
    goto/16 :goto_c

    .line 10722
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntryExt":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryExt;
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v5, v6

    :cond_da
    move v0, v5

    .line 10723
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_db

    .line 10724
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10725
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10726
    goto/16 :goto_c

    .line 10727
    :cond_db
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10729
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10730
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10731
    .local v2, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10732
    .local v3, "index2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readPhoneBookEntryExt(III)V

    .line 10733
    goto/16 :goto_c

    .line 10706
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v5, v6

    :cond_dc
    move v0, v5

    .line 10707
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_dd

    .line 10708
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10710
    goto/16 :goto_c

    .line 10711
    :cond_dd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10714
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10715
    .local v2, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10716
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 10717
    goto/16 :goto_c

    .line 10692
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v5, v6

    :cond_de
    move v0, v5

    .line 10693
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_df

    .line 10694
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10695
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10696
    goto/16 :goto_c

    .line 10697
    :cond_df
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10699
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10700
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPhoneBookMemStorage(I)V

    .line 10701
    goto/16 :goto_c

    .line 10678
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v5, v6

    :cond_e0
    move v0, v5

    .line 10679
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e1

    .line 10680
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10682
    goto/16 :goto_c

    .line 10683
    :cond_e1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10686
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPhoneBookStringsLength(I)V

    .line 10687
    goto/16 :goto_c

    .line 10662
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v5, v6

    :cond_e2
    move v0, v5

    .line 10663
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e3

    .line 10664
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10666
    goto/16 :goto_c

    .line 10667
    :cond_e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10669
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10670
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10671
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 10672
    .local v3, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 10673
    goto/16 :goto_c

    .line 10647
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    .end local v3    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v5, v6

    :cond_e4
    move v0, v5

    .line 10648
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e5

    .line 10649
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10651
    goto/16 :goto_c

    .line 10652
    :cond_e5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10654
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10655
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10656
    .restart local v2    # "adnIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBGrpEntry(II)V

    .line 10657
    goto/16 :goto_c

    .line 10631
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "adnIndex":I
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v5, v6

    :cond_e6
    move v0, v5

    .line 10632
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e7

    .line 10633
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10635
    goto/16 :goto_c

    .line 10636
    :cond_e7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10639
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10640
    .local v2, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10641
    .local v3, "endIndex":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readUPBGasList(III)V

    .line 10642
    goto/16 :goto_c

    .line 10614
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "startIndex":I
    .end local v3    # "endIndex":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v5, v6

    :cond_e8
    move v0, v5

    .line 10615
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e9

    .line 10616
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10617
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10618
    goto/16 :goto_c

    .line 10619
    :cond_e9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10622
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10623
    .local v2, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10624
    .local v3, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10625
    .local v4, "entryIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deleteUPBEntry(IIII)V

    .line 10626
    goto/16 :goto_c

    .line 10599
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "entryType":I
    .end local v3    # "adnIndex":I
    .end local v4    # "entryIndex":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v5, v6

    :cond_ea
    move v0, v5

    .line 10600
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_eb

    .line 10601
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10603
    goto/16 :goto_c

    .line 10604
    :cond_eb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10607
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10608
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 10609
    goto/16 :goto_c

    .line 10585
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v5, v6

    :cond_ec
    move v0, v5

    .line 10586
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ed

    .line 10587
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10589
    goto/16 :goto_c

    .line 10590
    :cond_ed
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10593
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryUPBCapability(I)V

    .line 10594
    goto/16 :goto_c

    .line 10568
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v5, v6

    :cond_ee
    move v0, v5

    .line 10569
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ef

    .line 10570
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10572
    goto/16 :goto_c

    .line 10573
    :cond_ef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10576
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10577
    .local v2, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10578
    .local v3, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10579
    .local v4, "eIndex":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->readPhbEntry(IIII)V

    .line 10580
    goto/16 :goto_c

    .line 10552
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    .end local v3    # "bIndex":I
    .end local v4    # "eIndex":I
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v5, v6

    :cond_f0
    move v0, v5

    .line 10553
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f1

    .line 10554
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10556
    goto/16 :goto_c

    .line 10557
    :cond_f1
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10560
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;-><init>()V

    .line 10561
    .local v2, "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10562
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writePhbEntry(ILvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;)V

    .line 10563
    goto/16 :goto_c

    .line 10537
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phbEntry":Lvendor/mediatek/hardware/radio/V3_0/PhbEntryStructure;
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v5, v6

    :cond_f2
    move v0, v5

    .line 10538
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f3

    .line 10539
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10541
    goto/16 :goto_c

    .line 10542
    :cond_f3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10545
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10546
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryPhbStorageInfo(II)V

    .line 10547
    goto/16 :goto_c

    .line 10523
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v5, v6

    :cond_f4
    move v0, v5

    .line 10524
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f5

    .line 10525
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10526
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10527
    goto/16 :goto_c

    .line 10528
    :cond_f5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10531
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getEccNum(I)V

    .line 10532
    goto/16 :goto_c

    .line 10507
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v5, v6

    :cond_f6
    move v0, v5

    .line 10508
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f7

    .line 10509
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10511
    goto/16 :goto_c

    .line 10512
    :cond_f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10515
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10516
    .local v2, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10517
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 10518
    goto/16 :goto_c

    .line 10492
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ecc_list_with_card":Ljava/lang/String;
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v5, v6

    :cond_f8
    move v0, v5

    .line 10493
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f9

    .line 10494
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10495
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10496
    goto/16 :goto_c

    .line 10497
    :cond_f9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10500
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10501
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setVoicePreferStatus(II)V

    .line 10502
    goto/16 :goto_c

    .line 10477
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v5, v6

    :cond_fa
    move v0, v5

    .line 10478
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fb

    .line 10479
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10481
    goto/16 :goto_c

    .line 10482
    :cond_fb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10485
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10486
    .local v2, "phoneType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->eccPreferredRat(II)V

    .line 10487
    goto/16 :goto_c

    .line 10461
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneType":I
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v5, v6

    :cond_fc
    move v0, v5

    .line 10462
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fd

    .line 10463
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10464
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10465
    goto/16 :goto_c

    .line 10466
    :cond_fd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10468
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10469
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10470
    .local v2, "emcSessionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10471
    .local v3, "airplaneMode":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->currentStatus(III)V

    .line 10472
    goto/16 :goto_c

    .line 10445
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "emcSessionId":I
    .end local v3    # "airplaneMode":I
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v5, v6

    :cond_fe
    move v0, v5

    .line 10446
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ff

    .line 10447
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10449
    goto/16 :goto_c

    .line 10450
    :cond_ff
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10453
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10454
    .local v2, "list1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10455
    .local v3, "list2":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEccList(ILjava/lang/String;Ljava/lang/String;)V

    .line 10456
    goto/16 :goto_c

    .line 10430
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "list1":Ljava/lang/String;
    .end local v3    # "list2":Ljava/lang/String;
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v5, v6

    :cond_100
    move v0, v5

    .line 10431
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_101

    .line 10432
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10433
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10434
    goto/16 :goto_c

    .line 10435
    :cond_101
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10438
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10439
    .local v2, "serviceCategory":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setEccServiceCategory(II)V

    .line 10440
    goto/16 :goto_c

    .line 10414
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceCategory":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v5, v6

    :cond_102
    move v0, v5

    .line 10415
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_103

    .line 10416
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10418
    goto/16 :goto_c

    .line 10419
    :cond_103
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10421
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10422
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 10423
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10424
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 10425
    goto/16 :goto_c

    .line 10397
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v5, v6

    :cond_104
    move v0, v5

    .line 10398
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_105

    .line 10399
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10400
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10401
    goto/16 :goto_c

    .line 10402
    :cond_105
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10405
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10406
    .local v2, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10407
    .local v3, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10408
    .local v4, "seqNumber":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCallIndication(IIII)V

    .line 10409
    goto/16 :goto_c

    .line 10383
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    .end local v3    # "callId":I
    .end local v4    # "seqNumber":I
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v5, v6

    :cond_106
    move v0, v5

    .line 10384
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_107

    .line 10385
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10387
    goto/16 :goto_c

    .line 10388
    :cond_107
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10390
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10391
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->hangupAll(I)V

    .line 10392
    goto/16 :goto_c

    .line 10368
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v5, v6

    :cond_108
    move v0, v5

    .line 10369
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_109

    .line 10370
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10372
    goto/16 :goto_c

    .line 10373
    :cond_109
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10376
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10377
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 10378
    goto/16 :goto_c

    .line 10354
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "userAgent":Ljava/lang/String;
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v5, v6

    :cond_10a
    move v0, v5

    .line 10355
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10b

    .line 10356
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10358
    goto/16 :goto_c

    .line 10359
    :cond_10b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10362
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resetSuppServ(I)V

    .line 10363
    goto/16 :goto_c

    .line 10340
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v5, v6

    :cond_10c
    move v0, v5

    .line 10341
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10d

    .line 10342
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10343
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10344
    goto/16 :goto_c

    .line 10345
    :cond_10d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10348
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getXcapStatus(I)V

    .line 10349
    goto/16 :goto_c

    .line 10326
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v5, v6

    :cond_10e
    move v0, v5

    .line 10327
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10f

    .line 10328
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10329
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10330
    goto/16 :goto_c

    .line 10331
    :cond_10f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10334
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->cancelUssi(I)V

    .line 10335
    goto/16 :goto_c

    .line 10310
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v5, v6

    :cond_110
    move v0, v5

    .line 10311
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_111

    .line 10312
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10314
    goto/16 :goto_c

    .line 10315
    :cond_111
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10318
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10319
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 10320
    .local v3, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendUssi(IILjava/lang/String;)V

    .line 10321
    goto/16 :goto_c

    .line 10292
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "action":I
    .end local v3    # "ussiString":Ljava/lang/String;
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v5, v6

    :cond_112
    move v7, v5

    .line 10293
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_113

    .line 10294
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10295
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10296
    goto/16 :goto_c

    .line 10297
    :cond_113
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 10300
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10301
    .local v8, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 10302
    .local v9, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 10303
    .local v10, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 10304
    .local v11, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 10305
    goto/16 :goto_c

    .line 10276
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "nafFqdn":Ljava/lang/String;
    .end local v9    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v10    # "forceRun":Z
    .end local v11    # "netId":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v5, v6

    :cond_114
    move v0, v5

    .line 10277
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_115

    .line 10278
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10279
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10280
    goto/16 :goto_c

    .line 10281
    :cond_115
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10284
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 10285
    .local v2, "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10286
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 10287
    goto/16 :goto_c

    .line 10260
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v5, v6

    :cond_116
    move v0, v5

    .line 10261
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_117

    .line 10262
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10264
    goto/16 :goto_c

    .line 10265
    :cond_117
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10268
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;-><init>()V

    .line 10269
    .restart local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10270
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;)V

    .line 10271
    goto/16 :goto_c

    .line 10245
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfoEx":Lvendor/mediatek/hardware/radio/V3_0/CallForwardInfoEx;
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v5, v6

    :cond_118
    move v0, v5

    .line 10246
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_119

    .line 10247
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10248
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10249
    goto/16 :goto_c

    .line 10250
    :cond_119
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10253
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10254
    .local v2, "colrEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setColr(II)V

    .line 10255
    goto/16 :goto_c

    .line 10230
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colrEnable":I
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v5, v6

    :cond_11a
    move v0, v5

    .line 10231
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11b

    .line 10232
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10234
    goto/16 :goto_c

    .line 10235
    :cond_11b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10238
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10239
    .local v2, "colpEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setColp(II)V

    .line 10240
    goto/16 :goto_c

    .line 10215
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "colpEnable":I
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v5, v6

    :cond_11c
    move v0, v5

    .line 10216
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11d

    .line 10217
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10218
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10219
    goto/16 :goto_c

    .line 10220
    :cond_11d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10223
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10224
    .local v2, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendCnap(ILjava/lang/String;)V

    .line 10225
    goto/16 :goto_c

    .line 10201
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cnapssMessage":Ljava/lang/String;
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v5, v6

    :cond_11e
    move v0, v5

    .line 10202
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11f

    .line 10203
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10204
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10205
    goto/16 :goto_c

    .line 10206
    :cond_11f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10208
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10209
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getColr(I)V

    .line 10210
    goto/16 :goto_c

    .line 10187
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v5, v6

    :cond_120
    move v0, v5

    .line 10188
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_121

    .line 10189
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10190
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10191
    goto/16 :goto_c

    .line 10192
    :cond_121
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10195
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getColp(I)V

    .line 10196
    goto/16 :goto_c

    .line 10172
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v5, v6

    :cond_122
    move v0, v5

    .line 10173
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_123

    .line 10174
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10175
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10176
    goto/16 :goto_c

    .line 10177
    :cond_123
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10179
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10180
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10181
    .local v2, "clipEnable":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setClip(II)V

    .line 10182
    goto/16 :goto_c

    .line 10154
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "clipEnable":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v5, v6

    :cond_124
    move v7, v5

    .line 10155
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_125

    .line 10156
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10157
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10158
    goto/16 :goto_c

    .line 10159
    :cond_125
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10161
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 10162
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 10163
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 10164
    .local v9, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 10165
    .local v10, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 10166
    .local v11, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10167
    goto/16 :goto_c

    .line 10139
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "oldPassword":Ljava/lang/String;
    .end local v10    # "newPassword":Ljava/lang/String;
    .end local v11    # "cfmPassword":Ljava/lang/String;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v5, v6

    :cond_126
    move v0, v5

    .line 10140
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_127

    .line 10141
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10143
    goto/16 :goto_c

    .line 10144
    :cond_127
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10147
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10148
    .local v2, "phoneId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getRoamingEnable(II)V

    .line 10149
    goto/16 :goto_c

    .line 10124
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "phoneId":I
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v5, v6

    :cond_128
    move v0, v5

    .line 10125
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_129

    .line 10126
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10127
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10128
    goto/16 :goto_c

    .line 10129
    :cond_129
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10132
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 10133
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 10134
    goto/16 :goto_c

    .line 10109
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v5, v6

    :cond_12a
    move v0, v5

    .line 10110
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12b

    .line 10111
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10112
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10113
    goto/16 :goto_c

    .line 10114
    :cond_12b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10116
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10117
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10118
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 10119
    goto/16 :goto_c

    .line 10095
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "data":Ljava/lang/String;
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v5, v6

    :cond_12c
    move v0, v5

    .line 10096
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12d

    .line 10097
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10099
    goto/16 :goto_c

    .line 10100
    :cond_12d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10103
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsRegistrationReport(I)V

    .line 10104
    goto/16 :goto_c

    .line 10079
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v5, v6

    :cond_12e
    move v0, v5

    .line 10080
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12f

    .line 10081
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10083
    goto/16 :goto_c

    .line 10084
    :cond_12f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10087
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 10088
    .local v2, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 10089
    .local v3, "isVideoCall":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 10090
    goto/16 :goto_c

    .line 10062
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "isVideoCall":Z
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v5, v6

    :cond_130
    move v0, v5

    .line 10063
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_131

    .line 10064
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10066
    goto/16 :goto_c

    .line 10067
    :cond_131
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10070
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10071
    .local v2, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10072
    .local v3, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 10073
    .local v4, "timer":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsRtpReport(IIII)V

    .line 10074
    goto/16 :goto_c

    .line 10046
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pdnId":I
    .end local v3    # "networkId":I
    .end local v4    # "timer":I
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v5, v6

    :cond_132
    move v0, v5

    .line 10047
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_133

    .line 10048
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10049
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10050
    goto/16 :goto_c

    .line 10051
    :cond_133
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10053
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10054
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10055
    .local v2, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10056
    .local v3, "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->imsBearerDeactivationDone(III)V

    .line 10057
    goto/16 :goto_c

    .line 10030
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":I
    .end local v3    # "status":I
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    move v5, v6

    :cond_134
    move v0, v5

    .line 10031
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_135

    .line 10032
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10033
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10034
    goto/16 :goto_c

    .line 10035
    :cond_135
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10038
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10039
    .restart local v2    # "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 10040
    .restart local v3    # "status":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->imsBearerActivationDone(III)V

    .line 10041
    goto/16 :goto_c

    .line 10015
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

    .line 10016
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_137

    .line 10017
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10019
    goto/16 :goto_c

    .line 10020
    :cond_137
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10023
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 10024
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->forceReleaseCall(II)V

    .line 10025
    goto/16 :goto_c

    .line 9999
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_92
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_138

    move v5, v6

    :cond_138
    move v0, v5

    .line 10000
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_139

    .line 10001
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 10002
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 10003
    goto/16 :goto_c

    .line 10004
    :cond_139
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10006
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 10007
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 10008
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 10009
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 10010
    goto/16 :goto_c

    .line 9984
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_93
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13a

    move v5, v6

    :cond_13a
    move v0, v5

    .line 9985
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13b

    .line 9986
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9987
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9988
    goto/16 :goto_c

    .line 9989
    :cond_13b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9991
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9992
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9993
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 9994
    goto/16 :goto_c

    .line 9969
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_94
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13c

    move v5, v6

    :cond_13c
    move v0, v5

    .line 9970
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13d

    .line 9971
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9973
    goto/16 :goto_c

    .line 9974
    :cond_13d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9977
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9978
    .restart local v2    # "address":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 9979
    goto/16 :goto_c

    .line 9952
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_95
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_13e

    move v5, v6

    :cond_13e
    move v0, v5

    .line 9953
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_13f

    .line 9954
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9955
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9956
    goto/16 :goto_c

    .line 9957
    :cond_13f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9960
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9961
    .local v2, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9962
    .local v3, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9963
    .local v4, "type":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 9964
    goto/16 :goto_c

    .line 9936
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keys":Ljava/lang/String;
    .end local v3    # "values":Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_96
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_140

    move v5, v6

    :cond_140
    move v0, v5

    .line 9937
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_141

    .line 9938
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9940
    goto/16 :goto_c

    .line 9941
    :cond_141
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9944
    .restart local v1    # "serial":I
    new-instance v2, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;

    invoke-direct {v2}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;-><init>()V

    .line 9945
    .local v2, "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    invoke-virtual {v2, v14}, Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9946
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->conferenceDial(ILvendor/mediatek/hardware/radio/V3_0/ConferenceDial;)V

    .line 9947
    goto/16 :goto_c

    .line 9921
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dailInfo":Lvendor/mediatek/hardware/radio/V3_0/ConferenceDial;
    :pswitch_97
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_142

    move v5, v6

    :cond_142
    move v0, v5

    .line 9922
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_143

    .line 9923
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9924
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9925
    goto/16 :goto_c

    .line 9926
    :cond_143
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9929
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9930
    .local v2, "wfcPreference":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWfcProfile(II)V

    .line 9931
    goto/16 :goto_c

    .line 9904
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "wfcPreference":I
    :pswitch_98
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_144

    move v5, v6

    :cond_144
    move v0, v5

    .line 9905
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_145

    .line 9906
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9908
    goto/16 :goto_c

    .line 9909
    :cond_145
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9912
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9913
    .local v2, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9914
    .local v3, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9915
    .local v4, "callToRemove":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->removeImsConferenceCallMember(IILjava/lang/String;I)V

    .line 9916
    goto/16 :goto_c

    .line 9887
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToRemove":I
    :pswitch_99
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_146

    move v5, v6

    :cond_146
    move v0, v5

    .line 9888
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_147

    .line 9889
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9890
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9891
    goto/16 :goto_c

    .line 9892
    :cond_147
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9895
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9896
    .restart local v2    # "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9897
    .restart local v3    # "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 9898
    .local v4, "callToAdd":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->addImsConferenceCallMember(IILjava/lang/String;I)V

    .line 9899
    goto/16 :goto_c

    .line 9871
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "confCallId":I
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "callToAdd":I
    :pswitch_9a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_148

    move v5, v6

    :cond_148
    move v0, v5

    .line 9872
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_149

    .line 9873
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9875
    goto/16 :goto_c

    .line 9876
    :cond_149
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9879
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9880
    .local v2, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9881
    .local v3, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 9882
    goto/16 :goto_c

    .line 9856
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    .end local v3    # "provisionValue":Ljava/lang/String;
    :pswitch_9b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14a

    move v5, v6

    :cond_14a
    move v0, v5

    .line 9857
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14b

    .line 9858
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9860
    goto/16 :goto_c

    .line 9861
    :cond_14b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9864
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9865
    .restart local v2    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 9866
    goto/16 :goto_c

    .line 9836
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "provisionstring":Ljava/lang/String;
    :pswitch_9c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14c

    move v5, v6

    :cond_14c
    move v8, v5

    .line 9837
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_14d

    .line 9838
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9839
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9840
    goto/16 :goto_c

    .line 9841
    :cond_14d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9844
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 9845
    .local v10, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 9846
    .local v11, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 9847
    .local v12, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 9848
    .local v16, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 9849
    .local v17, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 9850
    .local v18, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImscfg(IZZZZZZ)V

    .line 9851
    goto/16 :goto_c

    .line 9821
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "volteEnable":Z
    .end local v11    # "vilteEnable":Z
    .end local v12    # "vowifiEnable":Z
    .end local v16    # "viwifiEnable":Z
    .end local v17    # "smsEnable":Z
    .end local v18    # "eimsEnable":Z
    :pswitch_9d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14e

    move v5, v6

    :cond_14e
    move v0, v5

    .line 9822
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_14f

    .line 9823
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9824
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9825
    goto/16 :goto_c

    .line 9826
    :cond_14f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9829
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9830
    .local v2, "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsVideoEnable(IZ)V

    .line 9831
    goto/16 :goto_c

    .line 9806
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_9e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_150

    move v5, v6

    :cond_150
    move v0, v5

    .line 9807
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_151

    .line 9808
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9810
    goto/16 :goto_c

    .line 9811
    :cond_151
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9814
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9815
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsVoiceEnable(IZ)V

    .line 9816
    goto/16 :goto_c

    .line 9791
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_9f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_152

    move v5, v6

    :cond_152
    move v0, v5

    .line 9792
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_153

    .line 9793
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9795
    goto/16 :goto_c

    .line 9796
    :cond_153
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9799
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9800
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRcsUaEnable(IZ)V

    .line 9801
    goto/16 :goto_c

    .line 9776
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_154

    move v5, v6

    :cond_154
    move v0, v5

    .line 9777
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_155

    .line 9778
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9780
    goto/16 :goto_c

    .line 9781
    :cond_155
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9784
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9785
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setViWifiEnable(IZ)V

    .line 9786
    goto/16 :goto_c

    .line 9761
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_156

    move v5, v6

    :cond_156
    move v0, v5

    .line 9762
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_157

    .line 9763
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9765
    goto/16 :goto_c

    .line 9766
    :cond_157
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9769
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9770
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setVilteEnable(IZ)V

    .line 9771
    goto/16 :goto_c

    .line 9746
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_158

    move v5, v6

    :cond_158
    move v0, v5

    .line 9747
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_159

    .line 9748
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9750
    goto/16 :goto_c

    .line 9751
    :cond_159
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9754
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9755
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setWfcEnable(IZ)V

    .line 9756
    goto/16 :goto_c

    .line 9731
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15a

    move v5, v6

    :cond_15a
    move v0, v5

    .line 9732
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15b

    .line 9733
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9735
    goto/16 :goto_c

    .line 9736
    :cond_15b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9739
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9740
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setVolteEnable(IZ)V

    .line 9741
    goto/16 :goto_c

    .line 9716
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15c

    move v5, v6

    :cond_15c
    move v0, v5

    .line 9717
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15d

    .line 9718
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9720
    goto/16 :goto_c

    .line 9721
    :cond_15d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9724
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9725
    .restart local v2    # "isOn":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setImsEnable(IZ)V

    .line 9726
    goto/16 :goto_c

    .line 9701
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "isOn":Z
    :pswitch_a5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15e

    move v5, v6

    :cond_15e
    move v0, v5

    .line 9702
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_15f

    .line 9703
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9704
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9705
    goto/16 :goto_c

    .line 9706
    :cond_15f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9709
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9710
    .local v2, "cause":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->imsDeregNotification(II)V

    .line 9711
    goto/16 :goto_c

    .line 9686
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cause":I
    :pswitch_a6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_160

    move v5, v6

    :cond_160
    move v0, v5

    .line 9687
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_161

    .line 9688
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9690
    goto/16 :goto_c

    .line 9691
    :cond_161
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9694
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9695
    .local v2, "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->resumeCall(II)V

    .line 9696
    goto/16 :goto_c

    .line 9671
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_a7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_162

    move v5, v6

    :cond_162
    move v0, v5

    .line 9672
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_163

    .line 9673
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9674
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9675
    goto/16 :goto_c

    .line 9676
    :cond_163
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9678
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9679
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9680
    .restart local v2    # "callId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->holdCall(II)V

    .line 9681
    goto/16 :goto_c

    .line 9655
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callId":I
    :pswitch_a8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_164

    move v5, v6

    :cond_164
    move v0, v5

    .line 9656
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_165

    .line 9657
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9659
    goto/16 :goto_c

    .line 9660
    :cond_165
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9663
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9664
    .local v2, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9665
    .local v3, "type":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 9666
    goto/16 :goto_c

    .line 9639
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "type":I
    :pswitch_a9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_166

    move v5, v6

    :cond_166
    move v0, v5

    .line 9640
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_167

    .line 9641
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9642
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9643
    goto/16 :goto_c

    .line 9644
    :cond_167
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9647
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9648
    .local v2, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9649
    .local v3, "callId":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->videoCallAccept(III)V

    .line 9650
    goto/16 :goto_c

    .line 9622
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "videoMode":I
    .end local v3    # "callId":I
    :pswitch_aa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    goto :goto_7

    :cond_168
    move v6, v5

    :goto_7
    move v0, v6

    .line 9623
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_169

    .line 9624
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9625
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9626
    goto/16 :goto_c

    .line 9627
    :cond_169
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9629
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;

    move-result-object v1

    .line 9630
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;

    move-result-object v2

    .line 9631
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;)V

    .line 9632
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9634
    goto/16 :goto_c

    .line 9605
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/ISERadioIndication;
    :pswitch_ab
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16a

    goto :goto_8

    :cond_16a
    move v6, v5

    :goto_8
    move v0, v6

    .line 9606
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16b

    .line 9607
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9608
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9609
    goto/16 :goto_c

    .line 9610
    :cond_16b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;

    move-result-object v1

    .line 9613
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;

    move-result-object v2

    .line 9614
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;)V

    .line 9615
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9617
    goto/16 :goto_c

    .line 9588
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IMwiRadioIndication;
    :pswitch_ac
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16c

    goto :goto_9

    :cond_16c
    move v6, v5

    :goto_9
    move v0, v6

    .line 9589
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16d

    .line 9590
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9592
    goto/16 :goto_c

    .line 9593
    :cond_16d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9595
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;

    move-result-object v1

    .line 9596
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;

    move-result-object v2

    .line 9597
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;)V

    .line 9598
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9600
    goto/16 :goto_c

    .line 9571
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IImsRadioIndication;
    :pswitch_ad
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16e

    goto :goto_a

    :cond_16e
    move v6, v5

    :goto_a
    move v0, v6

    .line 9572
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_16f

    .line 9573
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9575
    goto/16 :goto_c

    .line 9576
    :cond_16f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9578
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;

    move-result-object v1

    .line 9579
    .local v1, "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;

    move-result-object v2

    .line 9580
    .local v2, "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;)V

    .line 9581
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9582
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9583
    goto/16 :goto_c

    .line 9555
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Lvendor/mediatek/hardware/radio/V3_0/IRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/radio/V3_0/IRadioIndication;
    :pswitch_ae
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_170

    move v5, v6

    :cond_170
    move v1, v5

    .line 9556
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_171

    .line 9557
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9559
    goto/16 :goto_c

    .line 9560
    :cond_171
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9562
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9563
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9564
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9565
    .local v3, "reason":I
    invoke-virtual {v13, v0, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 9566
    goto/16 :goto_c

    .line 9532
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_af
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_172

    move v5, v6

    :cond_172
    move v10, v5

    .line 9533
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v6, :cond_173

    .line 9534
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9535
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9536
    goto/16 :goto_c

    .line 9537
    :cond_173
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9540
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9541
    .local v12, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 9542
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 9544
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 9545
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 9546
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 9547
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 9548
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 9549
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

    invoke-virtual/range {v0 .. v9}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 9550
    goto/16 :goto_c

    .line 9512
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
    :pswitch_b0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_174

    move v5, v6

    :cond_174
    move v8, v5

    .line 9513
    .restart local v8    # "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_175

    .line 9514
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9515
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9516
    goto/16 :goto_c

    .line 9517
    :cond_175
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9520
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 9521
    .local v10, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9522
    .local v11, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 9523
    .local v12, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 9524
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 9525
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 9526
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 9527
    goto/16 :goto_c

    .line 9494
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v10    # "hysteresisMs":I
    .end local v11    # "hysteresisDlKbps":I
    .end local v12    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_b1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_176

    move v5, v6

    :cond_176
    move v7, v5

    .line 9495
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_177

    .line 9496
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9497
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9498
    goto/16 :goto_c

    .line 9499
    :cond_177
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9501
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 9502
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 9503
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 9504
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 9505
    .local v10, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 9506
    .local v11, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 9507
    goto/16 :goto_c

    .line 9479
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v10    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "accessNetwork":I
    :pswitch_b2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_178

    move v5, v6

    :cond_178
    move v1, v5

    .line 9480
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_179

    .line 9481
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9483
    goto/16 :goto_c

    .line 9484
    :cond_179
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9487
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9488
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 9489
    goto/16 :goto_c

    .line 9463
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_b3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_17a

    move v5, v6

    :cond_17a
    move v1, v5

    .line 9464
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_17b

    .line 9465
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9466
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9467
    goto/16 :goto_c

    .line 9468
    :cond_17b
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 9471
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 9472
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9473
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 9474
    goto/16 :goto_c

    .line 9448
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_b4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17c

    move v5, v6

    :cond_17c
    move v0, v5

    .line 9449
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17d

    .line 9450
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9452
    goto/16 :goto_c

    .line 9453
    :cond_17d
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9456
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9457
    .local v2, "sessionHandle":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->stopKeepalive(II)V

    .line 9458
    goto/16 :goto_c

    .line 9432
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_b5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17e

    move v5, v6

    :cond_17e
    move v0, v5

    .line 9433
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_17f

    .line 9434
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9435
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9436
    goto/16 :goto_c

    .line 9437
    :cond_17f
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9439
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9440
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 9441
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9442
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 9443
    goto/16 :goto_c

    .line 9418
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_b6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_180

    move v5, v6

    :cond_180
    move v0, v5

    .line 9419
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_181

    .line 9420
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9421
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9422
    goto/16 :goto_c

    .line 9423
    :cond_181
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9426
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->stopNetworkScan(I)V

    .line 9427
    goto/16 :goto_c

    .line 9402
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_b7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_182

    move v5, v6

    :cond_182
    move v0, v5

    .line 9403
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_183

    .line 9404
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9405
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9406
    goto/16 :goto_c

    .line 9407
    :cond_183
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9410
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 9411
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9412
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 9413
    goto/16 :goto_c

    .line 9387
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_b8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_184

    move v5, v6

    :cond_184
    move v0, v5

    .line 9388
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_185

    .line 9389
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9391
    goto/16 :goto_c

    .line 9392
    :cond_185
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9395
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9396
    .local v2, "powerUp":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 9397
    goto/16 :goto_c

    .line 9371
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_b9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_186

    move v5, v6

    :cond_186
    move v0, v5

    .line 9372
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_187

    .line 9373
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9374
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9375
    goto/16 :goto_c

    .line 9376
    :cond_187
    invoke-virtual {v14, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9379
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 9380
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9381
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 9382
    goto/16 :goto_c

    .line 9358
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_ba
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_188

    move v5, v6

    :cond_188
    move v0, v5

    .line 9359
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_189

    .line 9360
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9361
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9362
    goto/16 :goto_c

    .line 9363
    :cond_189
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9365
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->responseAcknowledgement()V

    .line 9366
    goto/16 :goto_c

    .line 9343
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_bb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18a

    move v5, v6

    :cond_18a
    move v0, v5

    .line 9344
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18b

    .line 9345
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9347
    goto/16 :goto_c

    .line 9348
    :cond_18b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9351
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9352
    .local v2, "powerUp":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSimCardPower(IZ)V

    .line 9353
    goto/16 :goto_c

    .line 9328
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_bc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18c

    move v5, v6

    :cond_18c
    move v0, v5

    .line 9329
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18d

    .line 9330
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9332
    goto/16 :goto_c

    .line 9333
    :cond_18d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9336
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9337
    .local v2, "indicationFilter":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setIndicationFilter(II)V

    .line 9338
    goto/16 :goto_c

    .line 9312
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_bd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18e

    move v5, v6

    :cond_18e
    move v0, v5

    .line 9313
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_18f

    .line 9314
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9316
    goto/16 :goto_c

    .line 9317
    :cond_18f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9320
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9321
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 9322
    .local v3, "state":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 9323
    goto/16 :goto_c

    .line 9298
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_be
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_190

    move v5, v6

    :cond_190
    move v0, v5

    .line 9299
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_191

    .line 9300
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9302
    goto/16 :goto_c

    .line 9303
    :cond_191
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9306
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getAllowedCarriers(I)V

    .line 9307
    goto/16 :goto_c

    .line 9281
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_bf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_192

    move v5, v6

    :cond_192
    move v0, v5

    .line 9282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_193

    .line 9283
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9285
    goto/16 :goto_c

    .line 9286
    :cond_193
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9289
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9290
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 9291
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v14}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9292
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 9293
    goto/16 :goto_c

    .line 9267
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_194

    move v5, v6

    :cond_194
    move v0, v5

    .line 9268
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_195

    .line 9269
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9271
    goto/16 :goto_c

    .line 9272
    :cond_195
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9274
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9275
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getModemActivityInfo(I)V

    .line 9276
    goto/16 :goto_c

    .line 9253
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_196

    move v5, v6

    :cond_196
    move v0, v5

    .line 9254
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_197

    .line 9255
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9256
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9257
    goto/16 :goto_c

    .line 9258
    :cond_197
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9261
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->pullLceData(I)V

    .line 9262
    goto/16 :goto_c

    .line 9239
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_198

    move v5, v6

    :cond_198
    move v0, v5

    .line 9240
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_199

    .line 9241
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9243
    goto/16 :goto_c

    .line 9244
    :cond_199
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9247
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->stopLceService(I)V

    .line 9248
    goto/16 :goto_c

    .line 9223
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19a

    move v5, v6

    :cond_19a
    move v0, v5

    .line 9224
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19b

    .line 9225
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9226
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9227
    goto/16 :goto_c

    .line 9228
    :cond_19b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9231
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9232
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 9233
    .local v3, "pullMode":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startLceService(IIZ)V

    .line 9234
    goto/16 :goto_c

    .line 9207
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_c4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19c

    move v5, v6

    :cond_19c
    move v0, v5

    .line 9208
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19d

    .line 9209
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9210
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9211
    goto/16 :goto_c

    .line 9212
    :cond_19d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9214
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9215
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 9216
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9217
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 9218
    goto/16 :goto_c

    .line 9193
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_c5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19e

    move v5, v6

    :cond_19e
    move v0, v5

    .line 9194
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_19f

    .line 9195
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9196
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9197
    goto/16 :goto_c

    .line 9198
    :cond_19f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9200
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9201
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getRadioCapability(I)V

    .line 9202
    goto/16 :goto_c

    .line 9179
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a0

    move v5, v6

    :cond_1a0
    move v0, v5

    .line 9180
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a1

    .line 9181
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9183
    goto/16 :goto_c

    .line 9184
    :cond_1a1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9187
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->requestShutdown(I)V

    .line 9188
    goto/16 :goto_c

    .line 9163
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a2

    move v5, v6

    :cond_1a2
    move v0, v5

    .line 9164
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a3

    .line 9165
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9167
    goto/16 :goto_c

    .line 9168
    :cond_1a3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9171
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 9172
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 9173
    .local v3, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 9174
    goto/16 :goto_c

    .line 9146
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_c8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a4

    move v5, v6

    :cond_1a4
    move v0, v5

    .line 9147
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a5

    .line 9148
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9149
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9150
    goto/16 :goto_c

    .line 9151
    :cond_1a5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9153
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9154
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9155
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9156
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 9157
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 9158
    goto/16 :goto_c

    .line 9132
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_c9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a6

    move v5, v6

    :cond_1a6
    move v0, v5

    .line 9133
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a7

    .line 9134
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9135
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9136
    goto/16 :goto_c

    .line 9137
    :cond_1a7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9140
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getHardwareConfig(I)V

    .line 9141
    goto/16 :goto_c

    .line 9117
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ca
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a8

    move v5, v6

    :cond_1a8
    move v0, v5

    .line 9118
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1a9

    .line 9119
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9120
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9121
    goto/16 :goto_c

    .line 9122
    :cond_1a9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9124
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9125
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 9126
    .local v2, "allow":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setDataAllowed(IZ)V

    .line 9127
    goto/16 :goto_c

    .line 9101
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_cb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1aa

    move v5, v6

    :cond_1aa
    move v0, v5

    .line 9102
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ab

    .line 9103
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9104
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9105
    goto/16 :goto_c

    .line 9106
    :cond_1ab
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9109
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 9110
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9111
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 9112
    goto/16 :goto_c

    .line 9086
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_cc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ac

    move v5, v6

    :cond_1ac
    move v0, v5

    .line 9087
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ad

    .line 9088
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9089
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9090
    goto/16 :goto_c

    .line 9091
    :cond_1ad
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9093
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9094
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9095
    .local v2, "resetType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->nvResetConfig(II)V

    .line 9096
    goto/16 :goto_c

    .line 9071
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_cd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ae

    move v5, v6

    :cond_1ae
    move v0, v5

    .line 9072
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1af

    .line 9073
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9074
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9075
    goto/16 :goto_c

    .line 9076
    :cond_1af
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9078
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9079
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 9080
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 9081
    goto/16 :goto_c

    .line 9055
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_ce
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b0

    move v5, v6

    :cond_1b0
    move v0, v5

    .line 9056
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b1

    .line 9057
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9059
    goto/16 :goto_c

    .line 9060
    :cond_1b1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9063
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 9064
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9065
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 9066
    goto/16 :goto_c

    .line 9040
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_cf
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b2

    move v5, v6

    :cond_1b2
    move v0, v5

    .line 9041
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b3

    .line 9042
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9044
    goto/16 :goto_c

    .line 9045
    :cond_1b3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9048
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9049
    .local v2, "itemId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->nvReadItem(II)V

    .line 9050
    goto/16 :goto_c

    .line 9024
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_d0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b4

    move v5, v6

    :cond_1b4
    move v0, v5

    .line 9025
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b5

    .line 9026
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9027
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9028
    goto/16 :goto_c

    .line 9029
    :cond_1b5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9031
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9032
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 9033
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 9034
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 9035
    goto/16 :goto_c

    .line 9009
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b6

    move v5, v6

    :cond_1b6
    move v0, v5

    .line 9010
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b7

    .line 9011
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 9012
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 9013
    goto/16 :goto_c

    .line 9014
    :cond_1b7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9017
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 9018
    .local v2, "channelId":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 9019
    goto/16 :goto_c

    .line 8993
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_d2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1b8

    move v5, v6

    :cond_1b8
    move v0, v5

    .line 8994
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b9

    .line 8995
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8997
    goto/16 :goto_c

    .line 8998
    :cond_1b9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 9000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 9001
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 9002
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 9003
    .local v3, "p2":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 9004
    goto/16 :goto_c

    .line 8977
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_d3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ba

    move v5, v6

    :cond_1ba
    move v0, v5

    .line 8978
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bb

    .line 8979
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8981
    goto/16 :goto_c

    .line 8982
    :cond_1bb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8985
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 8986
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8987
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 8988
    goto/16 :goto_c

    .line 8961
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_d4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1bc

    move v5, v6

    :cond_1bc
    move v0, v5

    .line 8962
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bd

    .line 8963
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8965
    goto/16 :goto_c

    .line 8966
    :cond_1bd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8969
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 8970
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8971
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 8972
    goto/16 :goto_c

    .line 8947
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_d5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1be

    move v5, v6

    :cond_1be
    move v0, v5

    .line 8948
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1bf

    .line 8949
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8950
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8951
    goto/16 :goto_c

    .line 8952
    :cond_1bf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8955
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsRegistrationState(I)V

    .line 8956
    goto/16 :goto_c

    .line 8929
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_d6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c0

    move v5, v6

    :cond_1c0
    move v0, v5

    .line 8930
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c1

    .line 8931
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8932
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8933
    goto/16 :goto_c

    .line 8934
    :cond_1c1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8936
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8937
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 8938
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8940
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 8941
    .local v4, "isRoaming":Z
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 8942
    goto/16 :goto_c

    .line 8914
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_d7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c2

    move v5, v6

    :cond_1c2
    move v0, v5

    .line 8915
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c3

    .line 8916
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8918
    goto/16 :goto_c

    .line 8919
    :cond_1c3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8922
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8923
    .local v2, "rate":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCellInfoListRate(II)V

    .line 8924
    goto/16 :goto_c

    .line 8900
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_d8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c4

    move v5, v6

    :cond_1c4
    move v0, v5

    .line 8901
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c5

    .line 8902
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8903
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8904
    goto/16 :goto_c

    .line 8905
    :cond_1c5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8908
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCellInfoList(I)V

    .line 8909
    goto/16 :goto_c

    .line 8886
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_d9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c6

    move v5, v6

    :cond_1c6
    move v0, v5

    .line 8887
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c7

    .line 8888
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8889
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8890
    goto/16 :goto_c

    .line 8891
    :cond_1c7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8894
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 8895
    goto/16 :goto_c

    .line 8871
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_da
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c8

    move v5, v6

    :cond_1c8
    move v0, v5

    .line 8872
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1c9

    .line 8873
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8875
    goto/16 :goto_c

    .line 8876
    :cond_1c9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8879
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8880
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 8881
    goto/16 :goto_c

    .line 8855
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_db
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ca

    move v5, v6

    :cond_1ca
    move v0, v5

    .line 8856
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cb

    .line 8857
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8859
    goto/16 :goto_c

    .line 8860
    :cond_1cb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8863
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8864
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8865
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 8866
    goto/16 :goto_c

    .line 8840
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_dc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1cc

    move v5, v6

    :cond_1cc
    move v0, v5

    .line 8841
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cd

    .line 8842
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8843
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8844
    goto/16 :goto_c

    .line 8845
    :cond_1cd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8848
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8849
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 8850
    goto/16 :goto_c

    .line 8826
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_dd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ce

    move v5, v6

    :cond_1ce
    move v0, v5

    .line 8827
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1cf

    .line 8828
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8830
    goto/16 :goto_c

    .line 8831
    :cond_1cf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8834
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 8835
    goto/16 :goto_c

    .line 8812
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_de
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d0

    move v5, v6

    :cond_1d0
    move v0, v5

    .line 8813
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d1

    .line 8814
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8815
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8816
    goto/16 :goto_c

    .line 8817
    :cond_1d1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8820
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 8821
    goto/16 :goto_c

    .line 8797
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_df
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d2

    move v5, v6

    :cond_1d2
    move v0, v5

    .line 8798
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d3

    .line 8799
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8801
    goto/16 :goto_c

    .line 8802
    :cond_1d3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8805
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8806
    .local v2, "available":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 8807
    goto/16 :goto_c

    .line 8782
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_e0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d4

    move v5, v6

    :cond_1d4
    move v0, v5

    .line 8783
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d5

    .line 8784
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8786
    goto/16 :goto_c

    .line 8787
    :cond_1d5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8790
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8791
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 8792
    goto/16 :goto_c

    .line 8768
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_e1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d6

    move v5, v6

    :cond_1d6
    move v0, v5

    .line 8769
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d7

    .line 8770
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8771
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8772
    goto/16 :goto_c

    .line 8773
    :cond_1d7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8776
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSmscAddress(I)V

    .line 8777
    goto/16 :goto_c

    .line 8754
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1d8

    move v5, v6

    :cond_1d8
    move v0, v5

    .line 8755
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1d9

    .line 8756
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8758
    goto/16 :goto_c

    .line 8759
    :cond_1d9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8761
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8762
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 8763
    goto/16 :goto_c

    .line 8740
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1da

    move v5, v6

    :cond_1da
    move v0, v5

    .line 8741
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1db

    .line 8742
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8743
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8744
    goto/16 :goto_c

    .line 8745
    :cond_1db
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8748
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getDeviceIdentity(I)V

    .line 8749
    goto/16 :goto_c

    .line 8725
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1dc

    move v5, v6

    :cond_1dc
    move v0, v5

    .line 8726
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1dd

    .line 8727
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8729
    goto/16 :goto_c

    .line 8730
    :cond_1dd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8733
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8734
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 8735
    goto/16 :goto_c

    .line 8709
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_e5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1de

    move v5, v6

    :cond_1de
    move v0, v5

    .line 8710
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1df

    .line 8711
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8713
    goto/16 :goto_c

    .line 8714
    :cond_1df
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8717
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 8718
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8719
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 8720
    goto/16 :goto_c

    .line 8695
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_e6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e0

    move v5, v6

    :cond_1e0
    move v0, v5

    .line 8696
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e1

    .line 8697
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8699
    goto/16 :goto_c

    .line 8700
    :cond_1e1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8703
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCDMASubscription(I)V

    .line 8704
    goto/16 :goto_c

    .line 8680
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e2

    move v5, v6

    :cond_1e2
    move v0, v5

    .line 8681
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e3

    .line 8682
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8684
    goto/16 :goto_c

    .line 8685
    :cond_1e3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8688
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8689
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 8690
    goto/16 :goto_c

    .line 8665
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_e8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e4

    move v5, v6

    :cond_1e4
    move v0, v5

    .line 8666
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e5

    .line 8667
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8669
    goto/16 :goto_c

    .line 8670
    :cond_1e5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8673
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8674
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 8675
    goto/16 :goto_c

    .line 8651
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_e9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e6

    move v5, v6

    :cond_1e6
    move v0, v5

    .line 8652
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e7

    .line 8653
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8655
    goto/16 :goto_c

    .line 8656
    :cond_1e7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8658
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8659
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 8660
    goto/16 :goto_c

    .line 8636
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ea
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e8

    move v5, v6

    :cond_1e8
    move v0, v5

    .line 8637
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1e9

    .line 8638
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8640
    goto/16 :goto_c

    .line 8641
    :cond_1e9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8644
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8645
    .local v2, "activate":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 8646
    goto/16 :goto_c

    .line 8621
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_eb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ea

    move v5, v6

    :cond_1ea
    move v0, v5

    .line 8622
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1eb

    .line 8623
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8625
    goto/16 :goto_c

    .line 8626
    :cond_1eb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8629
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8630
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 8631
    goto/16 :goto_c

    .line 8607
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_ec
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ec

    move v5, v6

    :cond_1ec
    move v0, v5

    .line 8608
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ed

    .line 8609
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8611
    goto/16 :goto_c

    .line 8612
    :cond_1ed
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8615
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 8616
    goto/16 :goto_c

    .line 8591
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_ed
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1ee

    move v5, v6

    :cond_1ee
    move v0, v5

    .line 8592
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ef

    .line 8593
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8594
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8595
    goto/16 :goto_c

    .line 8596
    :cond_1ef
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8599
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 8600
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8601
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 8602
    goto/16 :goto_c

    .line 8575
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_ee
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f0

    move v5, v6

    :cond_1f0
    move v0, v5

    .line 8576
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f1

    .line 8577
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8579
    goto/16 :goto_c

    .line 8580
    :cond_1f1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8583
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 8584
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8585
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 8586
    goto/16 :goto_c

    .line 8558
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_ef
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f2

    move v5, v6

    :cond_1f2
    move v0, v5

    .line 8559
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f3

    .line 8560
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8562
    goto/16 :goto_c

    .line 8563
    :cond_1f3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8566
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8567
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8568
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 8569
    .local v4, "off":I
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 8570
    goto/16 :goto_c

    .line 8543
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_f0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f4

    move v5, v6

    :cond_1f4
    move v0, v5

    .line 8544
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f5

    .line 8545
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8546
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8547
    goto/16 :goto_c

    .line 8548
    :cond_1f5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8551
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8552
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 8553
    goto/16 :goto_c

    .line 8529
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_f1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f6

    move v5, v6

    :cond_1f6
    move v0, v5

    .line 8530
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f7

    .line 8531
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8532
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8533
    goto/16 :goto_c

    .line 8534
    :cond_1f7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8537
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 8538
    goto/16 :goto_c

    .line 8514
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f8

    move v5, v6

    :cond_1f8
    move v0, v5

    .line 8515
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1f9

    .line 8516
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8517
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8518
    goto/16 :goto_c

    .line 8519
    :cond_1f9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8522
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8523
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 8524
    goto/16 :goto_c

    .line 8500
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_f3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fa

    move v5, v6

    :cond_1fa
    move v0, v5

    .line 8501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fb

    .line 8502
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8504
    goto/16 :goto_c

    .line 8505
    :cond_1fb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8508
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getTTYMode(I)V

    .line 8509
    goto/16 :goto_c

    .line 8485
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fc

    move v5, v6

    :cond_1fc
    move v0, v5

    .line 8486
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1fd

    .line 8487
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8488
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8489
    goto/16 :goto_c

    .line 8490
    :cond_1fd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8492
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8493
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8494
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setTTYMode(II)V

    .line 8495
    goto/16 :goto_c

    .line 8471
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_f5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1fe

    move v5, v6

    :cond_1fe
    move v0, v5

    .line 8472
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1ff

    .line 8473
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8474
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8475
    goto/16 :goto_c

    .line 8476
    :cond_1ff
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8479
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 8480
    goto/16 :goto_c

    .line 8456
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_200

    move v5, v6

    :cond_200
    move v0, v5

    .line 8457
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_201

    .line 8458
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8460
    goto/16 :goto_c

    .line 8461
    :cond_201
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8464
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8465
    .local v2, "type":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 8466
    goto/16 :goto_c

    .line 8441
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_f7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_202

    move v5, v6

    :cond_202
    move v0, v5

    .line 8442
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_203

    .line 8443
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8444
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8445
    goto/16 :goto_c

    .line 8446
    :cond_203
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8449
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8450
    .local v2, "cdmaSub":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 8451
    goto/16 :goto_c

    .line 8426
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_f8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_204

    move v5, v6

    :cond_204
    move v0, v5

    .line 8427
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_205

    .line 8428
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8429
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8430
    goto/16 :goto_c

    .line 8431
    :cond_205
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8434
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8435
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 8436
    goto/16 :goto_c

    .line 8412
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_f9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_206

    move v5, v6

    :cond_206
    move v0, v5

    .line 8413
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_207

    .line 8414
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8416
    goto/16 :goto_c

    .line 8417
    :cond_207
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8420
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getNeighboringCids(I)V

    .line 8421
    goto/16 :goto_c

    .line 8398
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fa
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_208

    move v5, v6

    :cond_208
    move v0, v5

    .line 8399
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_209

    .line 8400
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8401
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8402
    goto/16 :goto_c

    .line 8403
    :cond_209
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8405
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8406
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 8407
    goto/16 :goto_c

    .line 8383
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fb
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20a

    move v5, v6

    :cond_20a
    move v0, v5

    .line 8384
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20b

    .line 8385
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8387
    goto/16 :goto_c

    .line 8388
    :cond_20b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8390
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8391
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8392
    .local v2, "nwType":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 8393
    goto/16 :goto_c

    .line 8369
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_fc
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20c

    move v5, v6

    :cond_20c
    move v0, v5

    .line 8370
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20d

    .line 8371
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8372
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8373
    goto/16 :goto_c

    .line 8374
    :cond_20d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8377
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->explicitCallTransfer(I)V

    .line 8378
    goto/16 :goto_c

    .line 8354
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_fd
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20e

    move v5, v6

    :cond_20e
    move v0, v5

    .line 8355
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_20f

    .line 8356
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8357
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8358
    goto/16 :goto_c

    .line 8359
    :cond_20f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8362
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8363
    .local v2, "accept":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 8364
    goto/16 :goto_c

    .line 8339
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_fe
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_210

    move v5, v6

    :cond_210
    move v0, v5

    .line 8340
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_211

    .line 8341
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8343
    goto/16 :goto_c

    .line 8344
    :cond_211
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8347
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8348
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 8349
    goto/16 :goto_c

    .line 8324
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_ff
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_212

    move v5, v6

    :cond_212
    move v0, v5

    .line 8325
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_213

    .line 8326
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8328
    goto/16 :goto_c

    .line 8329
    :cond_213
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8332
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8333
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 8334
    goto/16 :goto_c

    .line 8310
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_100
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_214

    move v5, v6

    :cond_214
    move v0, v5

    .line 8311
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_215

    .line 8312
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8314
    goto/16 :goto_c

    .line 8315
    :cond_215
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8318
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getAvailableBandModes(I)V

    .line 8319
    goto/16 :goto_c

    .line 8295
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_101
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_216

    move v5, v6

    :cond_216
    move v0, v5

    .line 8296
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_217

    .line 8297
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8298
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8299
    goto/16 :goto_c

    .line 8300
    :cond_217
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8303
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8304
    .local v2, "mode":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setBandMode(II)V

    .line 8305
    goto/16 :goto_c

    .line 8280
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_102
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_218

    move v5, v6

    :cond_218
    move v0, v5

    .line 8281
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_219

    .line 8282
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8283
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8284
    goto/16 :goto_c

    .line 8285
    :cond_219
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8287
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8288
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8289
    .local v2, "index":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 8290
    goto/16 :goto_c

    .line 8264
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_103
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21a

    move v5, v6

    :cond_21a
    move v0, v5

    .line 8265
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21b

    .line 8266
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8268
    goto/16 :goto_c

    .line 8269
    :cond_21b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8272
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 8273
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8274
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 8275
    goto/16 :goto_c

    .line 8249
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_104
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21c

    move v5, v6

    :cond_21c
    move v0, v5

    .line 8250
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21d

    .line 8251
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8252
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8253
    goto/16 :goto_c

    .line 8254
    :cond_21d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8257
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8258
    .local v2, "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 8259
    goto/16 :goto_c

    .line 8235
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_105
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_21e

    move v5, v6

    :cond_21e
    move v0, v5

    .line 8236
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_21f

    .line 8237
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8239
    goto/16 :goto_c

    .line 8240
    :cond_21f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8243
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getDataCallList(I)V

    .line 8244
    goto/16 :goto_c

    .line 8221
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_106
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_220

    move v5, v6

    :cond_220
    move v0, v5

    .line 8222
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_221

    .line 8223
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8225
    goto/16 :goto_c

    .line 8226
    :cond_221
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8229
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getClip(I)V

    .line 8230
    goto/16 :goto_c

    .line 8207
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_107
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_222

    move v5, v6

    :cond_222
    move v0, v5

    .line 8208
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_223

    .line 8209
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8210
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8211
    goto/16 :goto_c

    .line 8212
    :cond_223
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8214
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8215
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getMute(I)V

    .line 8216
    goto/16 :goto_c

    .line 8192
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_108
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_224

    move v5, v6

    :cond_224
    move v0, v5

    .line 8193
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_225

    .line 8194
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8195
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8196
    goto/16 :goto_c

    .line 8197
    :cond_225
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8199
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8200
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8201
    .restart local v2    # "enable":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setMute(IZ)V

    .line 8202
    goto/16 :goto_c

    .line 8177
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_109
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_226

    move v5, v6

    :cond_226
    move v0, v5

    .line 8178
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_227

    .line 8179
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8181
    goto/16 :goto_c

    .line 8182
    :cond_227
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8185
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8186
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->separateConnection(II)V

    .line 8187
    goto/16 :goto_c

    .line 8163
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_10a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_228

    move v5, v6

    :cond_228
    move v0, v5

    .line 8164
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_229

    .line 8165
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8167
    goto/16 :goto_c

    .line 8168
    :cond_229
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8170
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8171
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getBasebandVersion(I)V

    .line 8172
    goto/16 :goto_c

    .line 8149
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22a

    move v5, v6

    :cond_22a
    move v0, v5

    .line 8150
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_22b

    .line 8151
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8152
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8153
    goto/16 :goto_c

    .line 8154
    :cond_22b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8157
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->stopDtmf(I)V

    .line 8158
    goto/16 :goto_c

    .line 8134
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22c

    move v5, v6

    :cond_22c
    move v0, v5

    .line 8135
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_22d

    .line 8136
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8137
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8138
    goto/16 :goto_c

    .line 8139
    :cond_22d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8141
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8142
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8143
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 8144
    goto/16 :goto_c

    .line 8120
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_10d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22e

    move v5, v6

    :cond_22e
    move v0, v5

    .line 8121
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_22f

    .line 8122
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8123
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8124
    goto/16 :goto_c

    .line 8125
    :cond_22f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8127
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8128
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getAvailableNetworks(I)V

    .line 8129
    goto/16 :goto_c

    .line 8105
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_10e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_230

    move v5, v6

    :cond_230
    move v0, v5

    .line 8106
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_231

    .line 8107
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8109
    goto/16 :goto_c

    .line 8110
    :cond_231
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8113
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8114
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 8115
    goto/16 :goto_c

    .line 8091
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_10f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_232

    move v5, v6

    :cond_232
    move v0, v5

    .line 8092
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_233

    .line 8093
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8094
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8095
    goto/16 :goto_c

    .line 8096
    :cond_233
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8098
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8099
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 8100
    goto/16 :goto_c

    .line 8077
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_110
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_234

    move v5, v6

    :cond_234
    move v0, v5

    .line 8078
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_235

    .line 8079
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8080
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8081
    goto/16 :goto_c

    .line 8082
    :cond_235
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8085
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 8086
    goto/16 :goto_c

    .line 8060
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_111
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_236

    move v5, v6

    :cond_236
    move v0, v5

    .line 8061
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_237

    .line 8062
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8063
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8064
    goto/16 :goto_c

    .line 8065
    :cond_237
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8068
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8069
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8070
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 8071
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8072
    goto/16 :goto_c

    .line 8041
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_112
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_238

    move v5, v6

    :cond_238
    move v7, v5

    .line 8042
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_239

    .line 8043
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8044
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8045
    goto/16 :goto_c

    .line 8046
    :cond_239
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 8049
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8050
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 8051
    .local v10, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8052
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8053
    .local v12, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 8054
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 8055
    goto/16 :goto_c

    .line 8023
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v10    # "lockState":Z
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_113
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23a

    move v5, v6

    :cond_23a
    move v7, v5

    .line 8024
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_23b

    .line 8025
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8027
    goto/16 :goto_c

    .line 8028
    :cond_23b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8031
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8032
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8033
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 8034
    .local v10, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8035
    .local v11, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 8036
    goto/16 :goto_c

    .line 8007
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "serviceClass":I
    .end local v11    # "appId":Ljava/lang/String;
    :pswitch_114
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23c

    move v5, v6

    :cond_23c
    move v0, v5

    .line 8008
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23d

    .line 8009
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8010
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8011
    goto/16 :goto_c

    .line 8012
    :cond_23d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8014
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8015
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8016
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 8017
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 8018
    goto/16 :goto_c

    .line 7993
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_115
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_23e

    move v5, v6

    :cond_23e
    move v0, v5

    .line 7994
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23f

    .line 7995
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7997
    goto/16 :goto_c

    .line 7998
    :cond_23f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8001
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acceptCall(I)V

    .line 8002
    goto/16 :goto_c

    .line 7977
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_116
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_240

    move v5, v6

    :cond_240
    move v0, v5

    .line 7978
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_241

    .line 7979
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7980
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7981
    goto/16 :goto_c

    .line 7982
    :cond_241
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7985
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7986
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7987
    .local v3, "cause":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 7988
    goto/16 :goto_c

    .line 7961
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_117
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_242

    move v5, v6

    :cond_242
    move v0, v5

    .line 7962
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_243

    .line 7963
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7964
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7965
    goto/16 :goto_c

    .line 7966
    :cond_243
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7968
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7969
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7970
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7971
    .local v3, "serviceClass":I
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCallWaiting(IZI)V

    .line 7972
    goto/16 :goto_c

    .line 7946
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_118
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_244

    move v5, v6

    :cond_244
    move v0, v5

    .line 7947
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_245

    .line 7948
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7949
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7950
    goto/16 :goto_c

    .line 7951
    :cond_245
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7954
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7955
    .local v2, "serviceClass":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCallWaiting(II)V

    .line 7956
    goto/16 :goto_c

    .line 7930
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_119
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_246

    move v5, v6

    :cond_246
    move v0, v5

    .line 7931
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_247

    .line 7932
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7933
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7934
    goto/16 :goto_c

    .line 7935
    :cond_247
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7938
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 7939
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7940
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 7941
    goto/16 :goto_c

    .line 7914
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_248

    move v5, v6

    :cond_248
    move v0, v5

    .line 7915
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_249

    .line 7916
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7918
    goto/16 :goto_c

    .line 7919
    :cond_249
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7922
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 7923
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7924
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 7925
    goto/16 :goto_c

    .line 7899
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_11b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24a

    move v5, v6

    :cond_24a
    move v0, v5

    .line 7900
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_24b

    .line 7901
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7903
    goto/16 :goto_c

    .line 7904
    :cond_24b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7907
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7908
    .local v2, "status":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setClir(II)V

    .line 7909
    goto/16 :goto_c

    .line 7885
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_11c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24c

    move v5, v6

    :cond_24c
    move v0, v5

    .line 7886
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_24d

    .line 7887
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7889
    goto/16 :goto_c

    .line 7890
    :cond_24d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7893
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getClir(I)V

    .line 7894
    goto/16 :goto_c

    .line 7871
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24e

    move v5, v6

    :cond_24e
    move v0, v5

    .line 7872
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_24f

    .line 7873
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7874
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7875
    goto/16 :goto_c

    .line 7876
    :cond_24f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7878
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7879
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->cancelPendingUssd(I)V

    .line 7880
    goto/16 :goto_c

    .line 7856
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_250

    move v5, v6

    :cond_250
    move v0, v5

    .line 7857
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_251

    .line 7858
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7860
    goto/16 :goto_c

    .line 7861
    :cond_251
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7864
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7865
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 7866
    goto/16 :goto_c

    .line 7840
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_11f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_252

    move v5, v6

    :cond_252
    move v0, v5

    .line 7841
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_253

    .line 7842
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7843
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7844
    goto/16 :goto_c

    .line 7845
    :cond_253
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7847
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7848
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 7849
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7850
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 7851
    goto/16 :goto_c

    .line 7820
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_120
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_254

    move v5, v6

    :cond_254
    move v7, v5

    .line 7821
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_255

    .line 7822
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7823
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7824
    goto/16 :goto_c

    .line 7825
    :cond_255
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7828
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7829
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v10, v0

    .line 7830
    .local v10, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v10, v14}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 7832
    .local v11, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 7833
    .local v12, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 7834
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 7835
    goto/16 :goto_c

    .line 7804
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v10    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v11    # "modemCognitive":Z
    .end local v12    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_121
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_256

    move v5, v6

    :cond_256
    move v0, v5

    .line 7805
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_257

    .line 7806
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7808
    goto/16 :goto_c

    .line 7809
    :cond_257
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7812
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 7813
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7814
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 7815
    goto/16 :goto_c

    .line 7788
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_122
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_258

    move v5, v6

    :cond_258
    move v0, v5

    .line 7789
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_259

    .line 7790
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7791
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7792
    goto/16 :goto_c

    .line 7793
    :cond_259
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7796
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 7797
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7798
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 7799
    goto/16 :goto_c

    .line 7773
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_123
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25a

    move v5, v6

    :cond_25a
    move v0, v5

    .line 7774
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25b

    .line 7775
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7777
    goto/16 :goto_c

    .line 7778
    :cond_25b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7780
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7781
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7782
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 7783
    goto/16 :goto_c

    .line 7758
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_124
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25c

    move v5, v6

    :cond_25c
    move v0, v5

    .line 7759
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25d

    .line 7760
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7762
    goto/16 :goto_c

    .line 7763
    :cond_25d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7766
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7767
    .local v2, "on":Z
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setRadioPower(IZ)V

    .line 7768
    goto/16 :goto_c

    .line 7744
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_125
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_25e

    move v5, v6

    :cond_25e
    move v0, v5

    .line 7745
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25f

    .line 7746
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7747
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7748
    goto/16 :goto_c

    .line 7749
    :cond_25f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7751
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7752
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getOperator(I)V

    .line 7753
    goto/16 :goto_c

    .line 7730
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_126
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_260

    move v5, v6

    :cond_260
    move v0, v5

    .line 7731
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_261

    .line 7732
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7734
    goto/16 :goto_c

    .line 7735
    :cond_261
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7738
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getDataRegistrationState(I)V

    .line 7739
    goto/16 :goto_c

    .line 7716
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_127
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_262

    move v5, v6

    :cond_262
    move v0, v5

    .line 7717
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_263

    .line 7718
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7720
    goto/16 :goto_c

    .line 7721
    :cond_263
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7724
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 7725
    goto/16 :goto_c

    .line 7702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_128
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_264

    move v5, v6

    :cond_264
    move v0, v5

    .line 7703
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_265

    .line 7704
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7706
    goto/16 :goto_c

    .line 7707
    :cond_265
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7710
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getSignalStrength(I)V

    .line 7711
    goto/16 :goto_c

    .line 7688
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_129
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_266

    move v5, v6

    :cond_266
    move v0, v5

    .line 7689
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_267

    .line 7690
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7691
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7692
    goto/16 :goto_c

    .line 7693
    :cond_267
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7696
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getLastCallFailCause(I)V

    .line 7697
    goto/16 :goto_c

    .line 7674
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_268

    move v5, v6

    :cond_268
    move v0, v5

    .line 7675
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_269

    .line 7676
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7678
    goto/16 :goto_c

    .line 7679
    :cond_269
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7681
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7682
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->rejectCall(I)V

    .line 7683
    goto/16 :goto_c

    .line 7660
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26a

    move v5, v6

    :cond_26a
    move v0, v5

    .line 7661
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_26b

    .line 7662
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7663
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7664
    goto/16 :goto_c

    .line 7665
    :cond_26b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7668
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->conference(I)V

    .line 7669
    goto/16 :goto_c

    .line 7646
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26c

    move v5, v6

    :cond_26c
    move v0, v5

    .line 7647
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_26d

    .line 7648
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7649
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7650
    goto/16 :goto_c

    .line 7651
    :cond_26d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7653
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7654
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 7655
    goto/16 :goto_c

    .line 7632
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26e

    move v5, v6

    :cond_26e
    move v0, v5

    .line 7633
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_26f

    .line 7634
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7636
    goto/16 :goto_c

    .line 7637
    :cond_26f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7639
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7640
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 7641
    goto/16 :goto_c

    .line 7618
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_270

    move v5, v6

    :cond_270
    move v0, v5

    .line 7619
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_271

    .line 7620
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7622
    goto/16 :goto_c

    .line 7623
    :cond_271
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7626
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 7627
    goto/16 :goto_c

    .line 7603
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_272

    move v5, v6

    :cond_272
    move v0, v5

    .line 7604
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_273

    .line 7605
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7607
    goto/16 :goto_c

    .line 7608
    :cond_273
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7611
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7612
    .local v2, "gsmIndex":I
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->hangup(II)V

    .line 7613
    goto/16 :goto_c

    .line 7588
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_130
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_274

    move v5, v6

    :cond_274
    move v0, v5

    .line 7589
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_275

    .line 7590
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7591
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7592
    goto/16 :goto_c

    .line 7593
    :cond_275
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7595
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7596
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7597
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 7598
    goto/16 :goto_c

    .line 7572
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_131
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_276

    move v5, v6

    :cond_276
    move v0, v5

    .line 7573
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_277

    .line 7574
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7575
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7576
    goto/16 :goto_c

    .line 7577
    :cond_277
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7580
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 7581
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7582
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 7583
    goto/16 :goto_c

    .line 7558
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_132
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_278

    move v5, v6

    :cond_278
    move v0, v5

    .line 7559
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_279

    .line 7560
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7562
    goto/16 :goto_c

    .line 7563
    :cond_279
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7565
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7566
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getCurrentCalls(I)V

    .line 7567
    goto/16 :goto_c

    .line 7543
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_133
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27a

    move v5, v6

    :cond_27a
    move v0, v5

    .line 7544
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27b

    .line 7545
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7546
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7547
    goto/16 :goto_c

    .line 7548
    :cond_27b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7551
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7552
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 7553
    goto/16 :goto_c

    .line 7526
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_134
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27c

    move v5, v6

    :cond_27c
    move v0, v5

    .line 7527
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27d

    .line 7528
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7529
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7530
    goto/16 :goto_c

    .line 7531
    :cond_27d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7534
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7535
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7536
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7537
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7538
    goto/16 :goto_c

    .line 7509
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_135
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_27e

    move v5, v6

    :cond_27e
    move v0, v5

    .line 7510
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27f

    .line 7511
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7513
    goto/16 :goto_c

    .line 7514
    :cond_27f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7517
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7518
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7519
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7520
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7521
    goto/16 :goto_c

    .line 7492
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_136
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_280

    move v5, v6

    :cond_280
    move v0, v5

    .line 7493
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_281

    .line 7494
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7495
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7496
    goto/16 :goto_c

    .line 7497
    :cond_281
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7500
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7501
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7502
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7503
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7504
    goto/16 :goto_c

    .line 7476
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_137
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_282

    move v5, v6

    :cond_282
    move v0, v5

    .line 7477
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_283

    .line 7478
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7480
    goto/16 :goto_c

    .line 7481
    :cond_283
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7484
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7485
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7486
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 7487
    goto/16 :goto_c

    .line 7459
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_138
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_284

    move v5, v6

    :cond_284
    move v0, v5

    .line 7460
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_285

    .line 7461
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7462
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7463
    goto/16 :goto_c

    .line 7464
    :cond_285
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7467
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7468
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7469
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 7470
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3, v4}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7471
    goto/16 :goto_c

    .line 7443
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_139
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_286

    move v5, v6

    :cond_286
    move v0, v5

    .line 7444
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_287

    .line 7445
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7447
    goto :goto_c

    .line 7448
    :cond_287
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7450
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7451
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7452
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7453
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v13, v1, v2, v3}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 7454
    goto :goto_c

    .line 7429
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_13a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_288

    move v5, v6

    :cond_288
    move v0, v5

    .line 7430
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_289

    .line 7431
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7433
    goto :goto_c

    .line 7434
    :cond_289
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7437
    .restart local v1    # "serial":I
    invoke-virtual {v13, v1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->getIccCardStatus(I)V

    .line 7438
    goto :goto_c

    .line 7412
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_13b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28a

    goto :goto_b

    :cond_28a
    move v6, v5

    :goto_b
    move v0, v6

    .line 7413
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_28b

    .line 7414
    invoke-virtual {v15, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7415
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7416
    goto :goto_c

    .line 7417
    :cond_28b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 7420
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 7421
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v13, v1, v2}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 7422
    invoke-virtual {v15, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7423
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7424
    nop

    .line 12439
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_28c
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 7363
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 7391
    const-string v0, "vendor.mediatek.hardware.radio@3.0::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7392
    return-object p0

    .line 7394
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

    .line 7398
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 7399
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 7353
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 7403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_0/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 7385
    const/4 v0, 0x1

    return v0
.end method
