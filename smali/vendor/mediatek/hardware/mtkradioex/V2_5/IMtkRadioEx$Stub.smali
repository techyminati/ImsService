.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioEx.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4608
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 4611
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

    .line 4629
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 4671
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4672
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4673
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4674
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4675
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

    .line 4641
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_48

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_5c

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_70

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_84

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_98

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_ac

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_c0

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_48
    .array-data 1
        -0x44t
        -0x3bt
        -0x16t
        -0x6et
        -0x44t
        0x76t
        0x54t
        -0xat
        0x75t
        0x61t
        -0x4ft
        0x36t
        0x25t
        0x60t
        0x51t
        -0x2dt
        0x0t
        0x1t
        0x3t
        0x1dt
        0x7bt
        -0x60t
        -0x5dt
        -0x1dt
        0x1et
        0x70t
        -0x12t
        -0x80t
        0x52t
        -0x6at
        -0x19t
        0x20t
    .end array-data

    :array_5c
    .array-data 1
        -0xet
        -0xet
        0x8t
        0x62t
        0x2et
        0x36t
        -0x13t
        -0x20t
        0x73t
        0x73t
        -0x10t
        -0x78t
        0x61t
        0x3dt
        -0x15t
        -0x2dt
        -0x2ft
        0x6et
        0x12t
        -0x6et
        0x15t
        0x5bt
        0x8t
        0x24t
        -0x51t
        -0x13t
        0x69t
        -0x79t
        0x63t
        -0x1et
        -0x43t
        0x2at
    .end array-data

    :array_70
    .array-data 1
        0x1bt
        -0x33t
        0x33t
        -0x7et
        0x3et
        -0xet
        0x2t
        -0x80t
        0x57t
        -0x38t
        0x12t
        -0x77t
        -0x2et
        -0x6et
        -0x60t
        -0x5dt
        -0x56t
        0x18t
        -0x33t
        -0x6dt
        0x35t
        0x4ct
        0xdt
        -0x6at
        0x70t
        0x0t
        -0x6t
        -0x17t
        0xft
        0x6at
        -0x48t
        0x43t
    .end array-data

    :array_84
    .array-data 1
        -0x39t
        -0x6ft
        -0x52t
        0x18t
        -0x63t
        -0x39t
        0x17t
        0x7dt
        -0x7ft
        -0x2dt
        0x8t
        0x8t
        -0x1t
        -0x62t
        -0x58t
        0x42t
        0x25t
        -0x79t
        0x64t
        0x21t
        -0x66t
        0x54t
        0x50t
        -0x3ct
        0x63t
        0x39t
        0x3t
        0x26t
        -0x56t
        -0x76t
        -0x13t
        0x44t
    .end array-data

    :array_98
    .array-data 1
        0x28t
        -0x37t
        0x1et
        -0x48t
        0x6ct
        0x35t
        -0x55t
        0x36t
        0x20t
        -0x25t
        0x27t
        -0x5dt
        0x34t
        -0x56t
        0x60t
        -0x56t
        -0x5t
        -0x6ft
        0x79t
        -0x75t
        0x6t
        0x39t
        -0x27t
        -0x58t
        0x6ct
        0x34t
        0x6et
        0x6bt
        -0xft
        0x4t
        0x2ct
        -0x5at
    .end array-data

    :array_ac
    .array-data 1
        0x4ct
        -0x42t
        -0x3dt
        -0x31t
        -0x78t
        0x21t
        0x23t
        -0x30t
        0x6dt
        -0x20t
        -0x47t
        -0x55t
        -0x28t
        -0x67t
        -0x9t
        0x40t
        -0x68t
        -0x10t
        -0x19t
        0x68t
        -0x50t
        -0x56t
        -0x4bt
        0x2ct
        -0x19t
        -0x68t
        0x7et
        -0x47t
        -0x6at
        -0xft
        0x4t
        -0x60t
    .end array-data

    :array_c0
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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4616
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioEx"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.3::IMtkRadioEx"

    const-string v4, "vendor.mediatek.hardware.mtkradioex@2.2::IMtkRadioEx"

    const-string v5, "vendor.mediatek.hardware.mtkradioex@2.1::IMtkRadioEx"

    const-string v6, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    const-string v7, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 4635
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioEx"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4659
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 4681
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4683
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 33
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4711
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioEx"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    sparse-switch p1, :sswitch_data_130a

    goto/16 :goto_1308

    .line 7348
    :sswitch_12
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7350
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->notifySyspropsChanged()V

    .line 7351
    goto/16 :goto_1308

    .line 7337
    :sswitch_1a
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7339
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 7340
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7341
    invoke-virtual {v0, v15}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 7342
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7343
    goto/16 :goto_1308

    .line 7327
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2c
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7329
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->ping()V

    .line 7330
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7332
    goto/16 :goto_1308

    .line 7322
    :sswitch_3a
    goto/16 :goto_1308

    .line 7314
    :sswitch_3c
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7316
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setHALInstrumentation()V

    .line 7317
    goto/16 :goto_1308

    .line 7280
    :sswitch_44
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7282
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 7283
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7285
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 7287
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7288
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 7289
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 7290
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 7291
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_6b
    if-ge v4, v3, :cond_8c

    .line 7293
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 7294
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 7296
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_84

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_84

    .line 7300
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 7301
    nop

    .line 7291
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 7297
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_84
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 7304
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8c
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 7306
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 7308
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7309
    goto/16 :goto_1308

    .line 7269
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_99
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7271
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 7272
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7273
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 7274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7275
    goto/16 :goto_1308

    .line 7257
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_ab
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 7260
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7261
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 7262
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7263
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7264
    goto/16 :goto_1308

    .line 7246
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c1
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7248
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 7249
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 7250
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 7251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 7252
    goto/16 :goto_1308

    .line 7236
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d3
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioEx"

    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7239
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7240
    .local v1, "index":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getEngineeringModeInfo(II)V

    .line 7241
    goto/16 :goto_1308

    .line 7227
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :sswitch_e5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7230
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getLteScanDuration(I)V

    .line 7231
    goto/16 :goto_1308

    .line 7217
    .end local v0    # "serial":I
    :sswitch_f1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7220
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7221
    .local v1, "duration":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setLteScanDuration(II)V

    .line 7222
    goto/16 :goto_1308

    .line 7207
    .end local v0    # "serial":I
    .end local v1    # "duration":I
    :sswitch_101
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7210
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7211
    .local v1, "fddOrTdd":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getTm9Enabled(IZ)V

    .line 7212
    goto/16 :goto_1308

    .line 7196
    .end local v0    # "serial":I
    .end local v1    # "fddOrTdd":Z
    :sswitch_111
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7199
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7200
    .restart local v1    # "fddOrTdd":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7201
    .local v2, "enabled":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setTm9Enabled(IZZ)V

    .line 7202
    goto/16 :goto_1308

    .line 7186
    .end local v0    # "serial":I
    .end local v1    # "fddOrTdd":Z
    .end local v2    # "enabled":Z
    :sswitch_125
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7189
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7190
    .local v1, "ulOrDl":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getQamEnabled(IZ)V

    .line 7191
    goto/16 :goto_1308

    .line 7175
    .end local v0    # "serial":I
    .end local v1    # "ulOrDl":Z
    :sswitch_135
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7177
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7178
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7179
    .restart local v1    # "ulOrDl":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7180
    .restart local v2    # "enabled":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setQamEnabled(IZZ)V

    .line 7181
    goto/16 :goto_1308

    .line 7166
    .end local v0    # "serial":I
    .end local v1    # "ulOrDl":Z
    .end local v2    # "enabled":Z
    :sswitch_149
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7169
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getCampedFemtoCellInfo(I)V

    .line 7170
    goto/16 :goto_1308

    .line 7156
    .end local v0    # "serial":I
    :sswitch_155
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7159
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7160
    .local v1, "primaryBandId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getCaBandMode(II)V

    .line 7161
    goto/16 :goto_1308

    .line 7147
    .end local v0    # "serial":I
    .end local v1    # "primaryBandId":I
    :sswitch_165
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7149
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7150
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getBandMode(I)V

    .line 7151
    goto/16 :goto_1308

    .line 7138
    .end local v0    # "serial":I
    :sswitch_171
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7141
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->clearLteAvailableFile(I)V

    .line 7142
    goto/16 :goto_1308

    .line 7128
    .end local v0    # "serial":I
    :sswitch_17d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7131
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7132
    .local v1, "available":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getLte1xRttCellList(IZ)V

    .line 7133
    goto/16 :goto_1308

    .line 7119
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :sswitch_18d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7122
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getLteBsrTimer(I)V

    .line 7123
    goto/16 :goto_1308

    .line 7109
    .end local v0    # "serial":I
    :sswitch_199
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7111
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7112
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7113
    .local v1, "timer":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setLteBsrTimer(II)V

    .line 7114
    goto/16 :goto_1308

    .line 7100
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_1a9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7103
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->get4x4MimoEnabled(I)V

    .line 7104
    goto/16 :goto_1308

    .line 7090
    .end local v0    # "serial":I
    :sswitch_1b5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7092
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7093
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7094
    .local v1, "enabled_bitmask":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->set4x4MimoEnabled(II)V

    .line 7095
    goto/16 :goto_1308

    .line 7080
    .end local v0    # "serial":I
    .end local v1    # "enabled_bitmask":I
    :sswitch_1c5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7082
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7083
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7084
    .local v1, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setBandPriorityList(ILjava/util/ArrayList;)V

    .line 7085
    goto/16 :goto_1308

    .line 7071
    .end local v0    # "serial":I
    .end local v1    # "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1d5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7074
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getBandPriorityList(I)V

    .line 7075
    goto/16 :goto_1308

    .line 7060
    .end local v0    # "serial":I
    :sswitch_1e1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7063
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7064
    .local v1, "bandId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 7065
    .local v2, "status":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setLteBandEnableStatus(IIZ)V

    .line 7066
    goto/16 :goto_1308

    .line 7051
    .end local v0    # "serial":I
    .end local v1    # "bandId":I
    .end local v2    # "status":Z
    :sswitch_1f5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7053
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7054
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getLteRRCState(I)V

    .line 7055
    goto/16 :goto_1308

    .line 7042
    .end local v0    # "serial":I
    :sswitch_201
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7045
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getLteData(I)V

    .line 7046
    goto/16 :goto_1308

    .line 7032
    .end local v0    # "serial":I
    :sswitch_20d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7035
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7036
    .local v1, "linkType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getCALinkCapabilityList(II)V

    .line 7037
    goto/16 :goto_1308

    .line 7020
    .end local v0    # "serial":I
    .end local v1    # "linkType":I
    :sswitch_21d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7023
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7024
    .local v1, "status":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7025
    .local v2, "bandsCombo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7026
    .local v3, "linkType":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setCALinkEnableStatus(IZLjava/lang/String;I)V

    .line 7027
    goto/16 :goto_1308

    .line 7009
    .end local v0    # "serial":I
    .end local v1    # "status":Z
    .end local v2    # "bandsCombo":Ljava/lang/String;
    .end local v3    # "linkType":I
    :sswitch_235
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7012
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7013
    .local v1, "bandsCombo":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7014
    .local v2, "linkType":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getCALinkEnableStatus(ILjava/lang/String;I)V

    .line 7015
    goto/16 :goto_1308

    .line 6999
    .end local v0    # "serial":I
    .end local v1    # "bandsCombo":Ljava/lang/String;
    .end local v2    # "linkType":I
    :sswitch_249
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7002
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7003
    .local v1, "linkType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->disableAllCALinks(II)V

    .line 7004
    goto/16 :goto_1308

    .line 6990
    .end local v0    # "serial":I
    .end local v1    # "linkType":I
    :sswitch_259
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6993
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getTOEInfo(I)V

    .line 6994
    goto/16 :goto_1308

    .line 6980
    .end local v0    # "serial":I
    :sswitch_265
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IMtkRadioEx"

    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6983
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6984
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    .line 6985
    goto/16 :goto_1308

    .line 6962
    .end local v0    # "serial":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_277
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 6965
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 6966
    .local v12, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6967
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 6968
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 6969
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 6970
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 6971
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 6972
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 6973
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 6974
    .local v23, "dnsServers":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6975
    goto/16 :goto_1308

    .line 6948
    .end local v11    # "serial":I
    .end local v12    # "ifName":Ljava/lang/String;
    .end local v16    # "ipv4Addr":Ljava/lang/String;
    .end local v17    # "ipv6Addr":Ljava/lang/String;
    .end local v18    # "ipv4PrefixLen":I
    .end local v19    # "ipv6PrefixLen":I
    .end local v20    # "ipv4Gateway":Ljava/lang/String;
    .end local v21    # "ipv6Gateway":Ljava/lang/String;
    .end local v22    # "dnsCount":I
    .end local v23    # "dnsServers":Ljava/lang/String;
    :sswitch_2bb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6951
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6952
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6953
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 6954
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6955
    .local v11, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6956
    .local v12, "mtuSize":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 6957
    goto/16 :goto_1308

    .line 6937
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    .end local v12    # "mtuSize":I
    :sswitch_2e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6940
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6941
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6942
    .local v2, "isWifiEnabled":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendWifiEnabled(ILjava/lang/String;I)V

    .line 6943
    goto/16 :goto_1308

    .line 6926
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    :sswitch_2f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6929
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;-><init>()V

    .line 6930
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6931
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendRsuRequest(ILvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;)V

    .line 6932
    goto/16 :goto_1308

    .line 6916
    .end local v0    # "serial":I
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    :sswitch_30b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6918
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6919
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6920
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    .line 6921
    goto/16 :goto_1308

    .line 6905
    .end local v0    # "serial":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_31b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6907
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6908
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6909
    .local v1, "sar_cmd_type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6910
    .local v2, "sar_parameter":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendSarIndicator(IILjava/lang/String;)V

    .line 6911
    goto/16 :goto_1308

    .line 6893
    .end local v0    # "serial":I
    .end local v1    # "sar_cmd_type":I
    .end local v2    # "sar_parameter":Ljava/lang/String;
    :sswitch_32f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6896
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6897
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6898
    .local v2, "tGear":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6899
    .local v3, "lGear":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setSmartSceneSwitch(IIII)V

    .line 6900
    goto/16 :goto_1308

    .line 6883
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "tGear":I
    .end local v3    # "lGear":I
    :sswitch_347
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6885
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6886
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6887
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getSmartRatSwitch(II)V

    .line 6888
    goto/16 :goto_1308

    .line 6872
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_357
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6874
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6875
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6876
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6877
    .local v2, "rat":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->smartRatSwitch(III)V

    .line 6878
    goto/16 :goto_1308

    .line 6860
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "rat":I
    :sswitch_36b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6862
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;

    move-result-object v0

    .line 6863
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;

    move-result-object v2

    .line 6864
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsSmartRatSwitch(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;)V

    .line 6865
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6866
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6867
    goto/16 :goto_1308

    .line 6850
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;
    :sswitch_389
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6853
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6854
    .local v1, "ulSpeed":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setMaxUlSpeed(II)V

    .line 6855
    goto/16 :goto_1308

    .line 6841
    .end local v0    # "serial":I
    .end local v1    # "ulSpeed":I
    :sswitch_399
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6844
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getDeactivateNrScgCommunication(I)V

    .line 6845
    goto/16 :goto_1308

    .line 6830
    .end local v0    # "serial":I
    :sswitch_3a5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6832
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6833
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6834
    .local v1, "deactivate":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6835
    .local v2, "allowSCGAdd":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->deactivateNrScgCommunication(IZZ)V

    .line 6836
    goto/16 :goto_1308

    .line 6819
    .end local v0    # "serial":I
    .end local v1    # "deactivate":Z
    .end local v2    # "allowSCGAdd":Z
    :sswitch_3b9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6822
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6823
    .local v1, "approve":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6824
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->eccRedialApprove(III)V

    .line 6825
    goto/16 :goto_1308

    .line 6809
    .end local v0    # "serial":I
    .end local v1    # "approve":I
    .end local v2    # "callId":I
    :sswitch_3cd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6812
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6813
    .local v1, "uid":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->abortCertificate(II)V

    .line 6814
    goto/16 :goto_1308

    .line 6797
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    :sswitch_3dd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6799
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6800
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6801
    .local v1, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6802
    .local v2, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6803
    .local v3, "toActive":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->enableCapabaility(ILjava/lang/String;II)V

    .line 6804
    goto/16 :goto_1308

    .line 6786
    .end local v0    # "serial":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "toActive":I
    :sswitch_3f5
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6789
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6790
    .local v1, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6791
    .local v2, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->routeAuthMessage(IILjava/util/ArrayList;)V

    .line 6792
    goto/16 :goto_1308

    .line 6774
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_409
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6776
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6777
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6778
    .restart local v1    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6779
    .local v2, "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 6780
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->routeCertificate(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6781
    goto/16 :goto_1308

    .line 6762
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_421
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6765
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6766
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6767
    .local v2, "num":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6768
    .local v3, "timer":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getSuggestedPlmnList(IIII)V

    .line 6769
    goto/16 :goto_1308

    .line 6749
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "num":I
    .end local v3    # "timer":I
    :sswitch_439
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6751
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6752
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 6753
    .local v7, "registerQuality":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6754
    .local v8, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6755
    .local v9, "thresholdValues":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 6756
    .local v10, "triggerTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6757
    goto/16 :goto_1308

    .line 6740
    .end local v6    # "serial":I
    .end local v7    # "registerQuality":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "thresholdValues":Ljava/lang/String;
    .end local v10    # "triggerTime":Ljava/lang/String;
    :sswitch_45c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6743
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getDsdaStatus(I)V

    .line 6744
    goto/16 :goto_1308

    .line 6730
    .end local v0    # "serial":I
    :sswitch_468
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6733
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6734
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->enableDsdaIndication(IZ)V

    .line 6735
    goto/16 :goto_1308

    .line 6720
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_478
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6723
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6724
    .local v1, "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setKeepAliveByIpData(ILjava/lang/String;)V

    .line 6725
    goto/16 :goto_1308

    .line 6710
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_488
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6712
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6713
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6714
    .restart local v1    # "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;)V

    .line 6715
    goto/16 :goto_1308

    .line 6700
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_498
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6703
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6704
    .local v1, "interval":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setIgnoreSameNumberInterval(II)V

    .line 6705
    goto/16 :goto_1308

    .line 6690
    .end local v0    # "serial":I
    .end local v1    # "interval":I
    :sswitch_4a8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6692
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6693
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6694
    .local v1, "timer":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setCallValidTimer(II)V

    .line 6695
    goto/16 :goto_1308

    .line 6680
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_4b8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6682
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6683
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6684
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setGwsdMode(ILjava/util/ArrayList;)V

    .line 6685
    goto/16 :goto_1308

    .line 6670
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4c8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6673
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6674
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setImsCallMode(II)V

    .line 6675
    goto/16 :goto_1308

    .line 6660
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_4d8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6663
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6664
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setSipHeaderReport(ILjava/util/ArrayList;)V

    .line 6665
    goto/16 :goto_1308

    .line 6650
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4e8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6653
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6654
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setSipHeader(ILjava/util/ArrayList;)V

    .line 6655
    goto/16 :goto_1308

    .line 6641
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4f8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6644
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getVoiceDomainPreference(I)V

    .line 6645
    goto/16 :goto_1308

    .line 6631
    .end local v0    # "serial":I
    :sswitch_504
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6633
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6634
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6635
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->enableCAPlusBandWidthFilter(IZ)V

    .line 6636
    goto/16 :goto_1308

    .line 6620
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_514
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6623
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6624
    .local v1, "mcc":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6625
    .local v2, "mnc":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getPlmnNameFromSE13Table(III)V

    .line 6626
    goto/16 :goto_1308

    .line 6612
    .end local v0    # "serial":I
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :sswitch_528
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6614
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->notifyImsServiceReady()V

    .line 6615
    goto/16 :goto_1308

    .line 6603
    :sswitch_530
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6606
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->queryVopsStatus(I)V

    .line 6607
    goto/16 :goto_1308

    .line 6592
    .end local v0    # "serial":I
    :sswitch_53c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6595
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6596
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6597
    .local v2, "audio":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->toggleRttAudioIndication(III)V

    .line 6598
    goto/16 :goto_1308

    .line 6581
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "audio":I
    :sswitch_550
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6584
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6585
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6586
    .local v2, "result":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->rttModifyRequestResponse(III)V

    .line 6587
    goto/16 :goto_1308

    .line 6569
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "result":I
    :sswitch_564
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6572
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6573
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6574
    .local v2, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6575
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendRttText(IIILjava/lang/String;)V

    .line 6576
    goto/16 :goto_1308

    .line 6558
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "lenOfString":I
    .end local v3    # "text":Ljava/lang/String;
    :sswitch_57c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6561
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6562
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6563
    .local v2, "newMode":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendRttModifyRequest(III)V

    .line 6564
    goto/16 :goto_1308

    .line 6548
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "newMode":I
    :sswitch_590
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6551
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6552
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setRttMode(II)V

    .line 6553
    goto/16 :goto_1308

    .line 6537
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_5a0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6540
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6541
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6542
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setVendorSetting(IILjava/lang/String;)V

    .line 6543
    goto/16 :goto_1308

    .line 6526
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_5b4
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6529
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6530
    .local v1, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6531
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 6532
    goto/16 :goto_1308

    .line 6516
    .end local v0    # "serial":I
    .end local v1    # "reqType":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_5c8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;

    move-result-object v0

    .line 6519
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;

    move-result-object v1

    .line 6520
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsRcs(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;)V

    .line 6521
    goto/16 :goto_1308

    .line 6506
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;
    :sswitch_5e0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6508
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;

    move-result-object v0

    .line 6509
    .local v0, "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;

    move-result-object v1

    .line 6510
    .local v1, "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;)V

    .line 6511
    goto/16 :goto_1308

    .line 6495
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;
    .end local v1    # "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;
    :sswitch_5f8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6498
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6499
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6500
    .local v2, "reason":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->hangupWithReason(III)V

    .line 6501
    goto/16 :goto_1308

    .line 6485
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "reason":I
    :sswitch_60c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6488
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6489
    .local v1, "state":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->notifyEPDGScreenState(II)V

    .line 6490
    goto/16 :goto_1308

    .line 6475
    .end local v0    # "serial":I
    .end local v1    # "state":I
    :sswitch_61c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6478
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6479
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 6480
    goto/16 :goto_1308

    .line 6464
    .end local v0    # "serial":I
    .end local v1    # "pwd":Ljava/lang/String;
    :sswitch_62c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6467
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6468
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6469
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6470
    goto/16 :goto_1308

    .line 6454
    .end local v0    # "serial":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_640
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6457
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6458
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setTxPowerStatus(II)V

    .line 6459
    goto/16 :goto_1308

    .line 6445
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_650
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6447
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6448
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getLteReleaseVersion(I)V

    .line 6449
    goto/16 :goto_1308

    .line 6435
    .end local v0    # "serial":I
    :sswitch_65c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6438
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6439
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setLteReleaseVersion(II)V

    .line 6440
    goto/16 :goto_1308

    .line 6426
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_66c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6429
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->resetAllConnections(I)V

    .line 6430
    goto/16 :goto_1308

    .line 6416
    .end local v0    # "serial":I
    :sswitch_678
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6419
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6420
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->dataConnectionDetach(II)V

    .line 6421
    goto/16 :goto_1308

    .line 6406
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_688
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6409
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6410
    .restart local v1    # "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->dataConnectionAttach(II)V

    .line 6411
    goto/16 :goto_1308

    .line 6396
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_698
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6399
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6400
    .local v1, "featureId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getImsCfgResourceCapValue(II)V

    .line 6401
    goto/16 :goto_1308

    .line 6386
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    :sswitch_6a8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6389
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6390
    .local v1, "configId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getImsCfgProvisionValue(II)V

    .line 6391
    goto/16 :goto_1308

    .line 6375
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    :sswitch_6b8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6378
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6379
    .restart local v1    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6380
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 6381
    goto/16 :goto_1308

    .line 6364
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_6cc
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6366
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6367
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6368
    .local v1, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6369
    .local v2, "network":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getImsCfgFeatureValue(III)V

    .line 6370
    goto/16 :goto_1308

    .line 6351
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    .end local v2    # "network":I
    :sswitch_6e0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6354
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6355
    .local v7, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6356
    .local v8, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6357
    .local v9, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6358
    .local v10, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 6359
    goto/16 :goto_1308

    .line 6341
    .end local v6    # "serial":I
    .end local v7    # "featureId":I
    .end local v8    # "network":I
    .end local v9    # "value":I
    .end local v10    # "isLast":I
    :sswitch_703
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6344
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6345
    .local v1, "enable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setImsBearerNotification(II)V

    .line 6346
    goto/16 :goto_1308

    .line 6332
    .end local v0    # "serial":I
    .end local v1    # "enable":I
    :sswitch_713
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6335
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getApcInfo(I)V

    .line 6336
    goto/16 :goto_1308

    .line 6320
    .end local v0    # "serial":I
    :sswitch_71f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6323
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6324
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6325
    .local v2, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6326
    .local v3, "interval":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setApcMode(IIII)V

    .line 6327
    goto/16 :goto_1308

    .line 6308
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "reportMode":I
    .end local v3    # "interval":I
    :sswitch_737
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6310
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6311
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6312
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6313
    .local v2, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6314
    .local v3, "pktloss":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setWifiPingResult(IIII)V

    .line 6315
    goto/16 :goto_1308

    .line 6293
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "latency":I
    .end local v3    # "pktloss":I
    :sswitch_74f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6296
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6297
    .local v9, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6298
    .local v10, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6299
    .local v11, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6300
    .local v12, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6301
    .local v16, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 6302
    .local v17, "dstPort":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 6303
    goto/16 :goto_1308

    .line 6283
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "enable":Z
    .end local v11    # "srcIp":Ljava/lang/String;
    .end local v12    # "srcPort":I
    .end local v16    # "dstIp":Ljava/lang/String;
    .end local v17    # "dstPort":I
    :sswitch_77e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6286
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6287
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 6288
    goto/16 :goto_1308

    .line 6263
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_78e
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 6266
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 6267
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 6268
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 6269
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 6270
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 6271
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 6272
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 6273
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 6274
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 6275
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 6276
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 6277
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

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6278
    goto/16 :goto_1308

    .line 6254
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
    :sswitch_7e0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6256
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6257
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->querySsacStatus(I)V

    .line 6258
    goto/16 :goto_1308

    .line 6242
    .end local v0    # "serial":I
    :sswitch_7ec
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6245
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6246
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6247
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6248
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V

    .line 6249
    goto/16 :goto_1308

    .line 6224
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_804
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6226
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 6227
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 6228
    .local v12, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6229
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 6230
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 6231
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 6232
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 6233
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 6234
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 6235
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 6236
    .local v23, "dnsServers":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v10, v23

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6237
    goto/16 :goto_1308

    .line 6213
    .end local v11    # "serial":I
    .end local v12    # "ifName":Ljava/lang/String;
    .end local v16    # "ipv4Addr":Ljava/lang/String;
    .end local v17    # "ipv6Addr":Ljava/lang/String;
    .end local v18    # "ipv4PrefixLen":I
    .end local v19    # "ipv6PrefixLen":I
    .end local v20    # "ipv4Gateway":Ljava/lang/String;
    .end local v21    # "ipv6Gateway":Ljava/lang/String;
    .end local v22    # "dnsCount":I
    .end local v23    # "dnsServers":Ljava/lang/String;
    :sswitch_848
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6216
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6217
    .local v1, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6218
    .local v2, "snr":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setWifiSignalLevel(III)V

    .line 6219
    goto/16 :goto_1308

    .line 6198
    .end local v0    # "serial":I
    .end local v1    # "rssi":I
    .end local v2    # "snr":I
    :sswitch_85c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6200
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6201
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6202
    .restart local v9    # "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6203
    .local v10, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6204
    .local v11, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 6205
    .local v12, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 6206
    .local v16, "mtuSize":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 6207
    .local v17, "ueMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6208
    goto/16 :goto_1308

    .line 6186
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "associated":I
    .end local v11    # "ssid":Ljava/lang/String;
    .end local v12    # "apMac":Ljava/lang/String;
    .end local v16    # "mtuSize":I
    .end local v17    # "ueMac":Ljava/lang/String;
    :sswitch_88b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6188
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6189
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6190
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6191
    .local v2, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6192
    .local v3, "isFlightModeOn":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 6193
    goto/16 :goto_1308

    .line 6176
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    .end local v3    # "isFlightModeOn":I
    :sswitch_8a3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6178
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6179
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6180
    .local v1, "vdp":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setVoiceDomainPreference(II)V

    .line 6181
    goto/16 :goto_1308

    .line 6166
    .end local v0    # "serial":I
    .end local v1    # "vdp":I
    :sswitch_8b3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6169
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6170
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setRemoveRestrictEutranMode(II)V

    .line 6171
    goto/16 :goto_1308

    .line 6156
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_8c3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6159
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6160
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 6161
    goto/16 :goto_1308

    .line 6146
    .end local v0    # "serial":I
    .end local v1    # "apn":Ljava/lang/String;
    :sswitch_8d3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6149
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6150
    .local v1, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 6151
    goto/16 :goto_1308

    .line 6137
    .end local v0    # "serial":I
    .end local v1    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_8e3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6140
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->restartRILD(I)V

    .line 6141
    goto/16 :goto_1308

    .line 6127
    .end local v0    # "serial":I
    :sswitch_8ef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6130
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6131
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 6132
    goto/16 :goto_1308

    .line 6117
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_8ff
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;

    move-result-object v0

    .line 6120
    .local v0, "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;

    move-result-object v1

    .line 6121
    .local v1, "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;)V

    .line 6122
    goto/16 :goto_1308

    .line 6107
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;
    .end local v1    # "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;
    :sswitch_917
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6110
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6111
    .local v1, "resultCode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 6112
    goto/16 :goto_1308

    .line 6097
    .end local v0    # "serial":I
    .end local v1    # "resultCode":I
    :sswitch_927
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6099
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6100
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6101
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setTrm(II)V

    .line 6102
    goto/16 :goto_1308

    .line 6085
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_937
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6088
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6089
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6090
    .local v2, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6091
    .local v3, "param2":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setFdMode(IIII)V

    .line 6092
    goto/16 :goto_1308

    .line 6073
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "param1":I
    .end local v3    # "param2":I
    :sswitch_94f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6076
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6077
    .local v1, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6078
    .local v2, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6079
    .local v3, "nAct":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 6080
    goto/16 :goto_1308

    .line 6064
    .end local v0    # "serial":I
    .end local v1    # "index":I
    .end local v2    # "numeric":Ljava/lang/String;
    .end local v3    # "nAct":I
    :sswitch_967
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6067
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getCurrentPOLList(I)V

    .line 6068
    goto/16 :goto_1308

    .line 6055
    .end local v0    # "serial":I
    :sswitch_973
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6057
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6058
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getPOLCapability(I)V

    .line 6059
    goto/16 :goto_1308

    .line 6045
    .end local v0    # "serial":I
    :sswitch_97f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6048
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6049
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getRxTestResult(II)V

    .line 6050
    goto/16 :goto_1308

    .line 6035
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_98f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6038
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6039
    .local v1, "antType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setRxTestConfig(II)V

    .line 6040
    goto/16 :goto_1308

    .line 6025
    .end local v0    # "serial":I
    .end local v1    # "antType":I
    :sswitch_99f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6028
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6029
    .local v1, "sleepDuration":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setBgsrchDeltaSleepTimer(II)V

    .line 6030
    goto/16 :goto_1308

    .line 6015
    .end local v0    # "serial":I
    .end local v1    # "sleepDuration":I
    :sswitch_9af
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6017
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6018
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6019
    .local v1, "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setSearchRat(ILjava/util/ArrayList;)V

    .line 6020
    goto/16 :goto_1308

    .line 6002
    .end local v0    # "serial":I
    .end local v1    # "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9bf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6005
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6006
    .local v7, "operation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6007
    .local v8, "plmn_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6008
    .local v9, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 6009
    .local v10, "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setSearchStoredFreqInfo(IIIILjava/util/ArrayList;)V

    .line 6010
    goto/16 :goto_1308

    .line 5992
    .end local v6    # "serial":I
    .end local v7    # "operation":I
    .end local v8    # "plmn_id":I
    .end local v9    # "rat":I
    .end local v10    # "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_9e2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5995
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5996
    .local v1, "limitpower":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setTxPower(II)V

    .line 5997
    goto/16 :goto_1308

    .line 5982
    .end local v0    # "serial":I
    .end local v1    # "limitpower":I
    :sswitch_9f2
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5984
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5985
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5986
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->disableNR(IZ)V

    .line 5987
    goto/16 :goto_1308

    .line 5969
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_a02
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5972
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 5973
    .local v7, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5974
    .local v8, "T1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5975
    .local v9, "P1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5976
    .local v10, "T2":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->enableSCGfailure(IZIII)V

    .line 5977
    goto/16 :goto_1308

    .line 5958
    .end local v6    # "serial":I
    .end local v7    # "enable":Z
    .end local v8    # "T1":I
    .end local v9    # "P1":I
    .end local v10    # "T2":I
    :sswitch_a25
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5961
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5962
    .local v1, "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5963
    .local v2, "threshBound":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->cfgB1offset(III)V

    .line 5964
    goto/16 :goto_1308

    .line 5947
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_a39
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5949
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5950
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5951
    .restart local v1    # "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5952
    .restart local v2    # "threshBound":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->cfgA2offset(III)V

    .line 5953
    goto/16 :goto_1308

    .line 5932
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_a4d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5935
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5936
    .local v9, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5937
    .local v10, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 5938
    .local v11, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 5939
    .local v12, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 5940
    .local v16, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 5941
    .local v17, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setServiceStateToModem(IIIIIII)V

    .line 5942
    goto/16 :goto_1308

    .line 5922
    .end local v8    # "serial":I
    .end local v9    # "voiceRegState":I
    .end local v10    # "dataRegState":I
    .end local v11    # "voiceRoamingType":I
    .end local v12    # "dataRoamingType":I
    .end local v16    # "rilVoiceRegState":I
    .end local v17    # "rilDataRegState":I
    :sswitch_a7c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5925
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5926
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 5927
    goto/16 :goto_1308

    .line 5913
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_a8c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5915
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5916
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 5917
    goto/16 :goto_1308

    .line 5901
    .end local v0    # "serial":I
    :sswitch_a98
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5903
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5904
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5905
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5906
    .local v2, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5907
    .local v3, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5908
    goto/16 :goto_1308

    .line 5892
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "csgId":Ljava/lang/String;
    :sswitch_ab0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5894
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5895
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->abortFemtocellList(I)V

    .line 5896
    goto/16 :goto_1308

    .line 5883
    .end local v0    # "serial":I
    :sswitch_abc
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5885
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5886
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getFemtocellList(I)V

    .line 5887
    goto/16 :goto_1308

    .line 5874
    .end local v0    # "serial":I
    :sswitch_ac8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5876
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5877
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->cancelAvailableNetworks(I)V

    .line 5878
    goto/16 :goto_1308

    .line 5865
    .end local v0    # "serial":I
    :sswitch_ad4
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5868
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 5869
    goto/16 :goto_1308

    .line 5856
    .end local v0    # "serial":I
    :sswitch_ae0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5858
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5859
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getAvailableNetworksWithAct(I)V

    .line 5860
    goto/16 :goto_1308

    .line 5844
    .end local v0    # "serial":I
    :sswitch_aec
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5846
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5847
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5848
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5849
    .restart local v2    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5850
    .local v3, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5851
    goto/16 :goto_1308

    .line 5835
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "mode":Ljava/lang/String;
    :sswitch_b04
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5838
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getSmsRuimMemoryStatus(I)V

    .line 5839
    goto/16 :goto_1308

    .line 5824
    .end local v0    # "serial":I
    :sswitch_b10
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5826
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5827
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5828
    .local v1, "applyType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5829
    .local v2, "modemType":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->modifyModemType(III)V

    .line 5830
    goto/16 :goto_1308

    .line 5814
    .end local v0    # "serial":I
    .end local v1    # "applyType":I
    .end local v2    # "modemType":I
    :sswitch_b24
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5817
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5818
    .local v1, "sessionId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResumeRegistration(II)V

    .line 5819
    goto/16 :goto_1308

    .line 5804
    .end local v0    # "serial":I
    .end local v1    # "sessionId":I
    :sswitch_b34
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5807
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5808
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 5809
    goto/16 :goto_1308

    .line 5794
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b44
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5797
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5798
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 5799
    goto/16 :goto_1308

    .line 5783
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_b54
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5786
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 5787
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5788
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 5789
    goto/16 :goto_1308

    .line 5772
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_b68
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5775
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5776
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5777
    .local v2, "cause":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 5778
    goto/16 :goto_1308

    .line 5761
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_b7c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5764
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 5765
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5766
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 5767
    goto/16 :goto_1308

    .line 5752
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_b90
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5755
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getGsmBroadcastActivation(I)V

    .line 5756
    goto/16 :goto_1308

    .line 5743
    .end local v0    # "serial":I
    :sswitch_b9c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5745
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5746
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getGsmBroadcastLangs(I)V

    .line 5747
    goto/16 :goto_1308

    .line 5733
    .end local v0    # "serial":I
    :sswitch_ba8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5736
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5737
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 5738
    goto/16 :goto_1308

    .line 5722
    .end local v0    # "serial":I
    .end local v1    # "langs":Ljava/lang/String;
    :sswitch_bb8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5725
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5726
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5727
    .local v2, "serialId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->removeCbMsg(III)V

    .line 5728
    goto/16 :goto_1308

    .line 5712
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    .end local v2    # "serialId":I
    :sswitch_bcc
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5714
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5715
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5716
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setEtws(II)V

    .line 5717
    goto/16 :goto_1308

    .line 5703
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_bdc
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5706
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getSmsMemStatus(I)V

    .line 5707
    goto/16 :goto_1308

    .line 5692
    .end local v0    # "serial":I
    :sswitch_be8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5695
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;-><init>()V

    .line 5696
    .local v1, "message":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5697
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setSmsParameters(ILvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V

    .line 5698
    goto/16 :goto_1308

    .line 5683
    .end local v0    # "serial":I
    .end local v1    # "message":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    :sswitch_bfc
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5686
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getSmsParameters(I)V

    .line 5687
    goto/16 :goto_1308

    .line 5669
    .end local v0    # "serial":I
    :sswitch_c08
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5671
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5672
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5673
    .local v8, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5674
    .local v9, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5675
    .local v10, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 5676
    .local v11, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v12

    .line 5677
    .local v12, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 5678
    goto/16 :goto_1308

    .line 5657
    .end local v7    # "serial":I
    .end local v8    # "transactionId":I
    .end local v9    # "eventId":I
    .end local v10    # "result":I
    .end local v11    # "dataLength":I
    .end local v12    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_c30
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5660
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5661
    .local v1, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5662
    .local v2, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5663
    .local v3, "simType":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendVsimNotification(IIII)V

    .line 5664
    goto/16 :goto_1308

    .line 5646
    .end local v0    # "serial":I
    .end local v1    # "transactionId":I
    .end local v2    # "eventId":I
    .end local v3    # "simType":I
    :sswitch_c48
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5649
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5650
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5651
    .local v2, "type":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 5652
    goto/16 :goto_1308

    .line 5631
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_c5c
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5633
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5634
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5635
    .local v9, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5636
    .local v10, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 5637
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5638
    .local v12, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 5639
    .local v16, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 5640
    .local v17, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5641
    goto/16 :goto_1308

    .line 5621
    .end local v8    # "serial":I
    .end local v9    # "category":I
    .end local v10    # "lockop":I
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "data_imsi":Ljava/lang/String;
    .end local v16    # "gid1":Ljava/lang/String;
    .end local v17    # "gid2":Ljava/lang/String;
    :sswitch_c8b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5623
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5624
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5625
    .local v1, "category":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->queryNetworkLock(II)V

    .line 5626
    goto/16 :goto_1308

    .line 5610
    .end local v0    # "serial":I
    .end local v1    # "category":I
    :sswitch_c9b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5613
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;-><init>()V

    .line 5614
    .local v1, "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5615
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;)V

    .line 5616
    goto/16 :goto_1308

    .line 5601
    .end local v0    # "serial":I
    .end local v1    # "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    :sswitch_caf
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5603
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5604
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getCurrentUiccCardProvisioningStatus(I)V

    .line 5605
    goto/16 :goto_1308

    .line 5592
    .end local v0    # "serial":I
    :sswitch_cbb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5595
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->deactivateUiccCard(I)V

    .line 5596
    goto/16 :goto_1308

    .line 5583
    .end local v0    # "serial":I
    :sswitch_cc7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5586
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->activateUiccCard(I)V

    .line 5587
    goto/16 :goto_1308

    .line 5573
    .end local v0    # "serial":I
    :sswitch_cd3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5576
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5577
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setSimPower(II)V

    .line 5578
    goto/16 :goto_1308

    .line 5564
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_ce3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5567
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getIccid(I)V

    .line 5568
    goto/16 :goto_1308

    .line 5555
    .end local v0    # "serial":I
    :sswitch_cef
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5558
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getATR(I)V

    .line 5559
    goto/16 :goto_1308

    .line 5545
    .end local v0    # "serial":I
    :sswitch_cfb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5548
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5549
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->triggerModeSwitchByEcc(II)V

    .line 5550
    goto/16 :goto_1308

    .line 5535
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_d0b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5538
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5539
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setModemPower(IZ)V

    .line 5540
    goto/16 :goto_1308

    .line 5525
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_d1b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5527
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5528
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5529
    .local v1, "ready":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setPhonebookReady(II)V

    .line 5530
    goto/16 :goto_1308

    .line 5514
    .end local v0    # "serial":I
    .end local v1    # "ready":I
    :sswitch_d2b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5517
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5518
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5519
    .local v2, "endIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->readUPBAasList(III)V

    .line 5520
    goto/16 :goto_1308

    .line 5503
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_d3f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5505
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5506
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5507
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5508
    .local v2, "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->readUPBAnrEntry(III)V

    .line 5509
    goto/16 :goto_1308

    .line 5492
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_d53
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5494
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5495
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5496
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5497
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->readUPBSneEntry(III)V

    .line 5498
    goto/16 :goto_1308

    .line 5481
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_d67
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5484
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5485
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5486
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->readUPBEmailEntry(III)V

    .line 5487
    goto/16 :goto_1308

    .line 5470
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_d7b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5473
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5474
    .local v1, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5475
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->queryUPBAvailable(III)V

    .line 5476
    goto/16 :goto_1308

    .line 5459
    .end local v0    # "serial":I
    .end local v1    # "eftype":I
    .end local v2    # "fileIndex":I
    :sswitch_d8f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5462
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;-><init>()V

    .line 5463
    .local v1, "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5464
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;)V

    .line 5465
    goto/16 :goto_1308

    .line 5448
    .end local v0    # "serial":I
    .end local v1    # "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    :sswitch_da3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5450
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5451
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5452
    .local v1, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5453
    .local v2, "index2":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->readPhoneBookEntryExt(III)V

    .line 5454
    goto/16 :goto_1308

    .line 5437
    .end local v0    # "serial":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :sswitch_db7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5439
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5440
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5441
    .local v1, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5442
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 5443
    goto/16 :goto_1308

    .line 5428
    .end local v0    # "serial":I
    .end local v1    # "storage":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    :sswitch_dcb
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5431
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getPhoneBookMemStorage(I)V

    .line 5432
    goto/16 :goto_1308

    .line 5419
    .end local v0    # "serial":I
    :sswitch_dd7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5421
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5422
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getPhoneBookStringsLength(I)V

    .line 5423
    goto/16 :goto_1308

    .line 5408
    .end local v0    # "serial":I
    :sswitch_de3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5410
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5411
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5412
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5413
    .local v2, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 5414
    goto/16 :goto_1308

    .line 5398
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_df7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5401
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5402
    .restart local v1    # "adnIndex":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->readUPBGrpEntry(II)V

    .line 5403
    goto/16 :goto_1308

    .line 5387
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    :sswitch_e07
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5390
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5391
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5392
    .local v2, "endIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->readUPBGasList(III)V

    .line 5393
    goto/16 :goto_1308

    .line 5375
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_e1b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5378
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5379
    .local v1, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5380
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5381
    .local v3, "entryIndex":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->deleteUPBEntry(IIII)V

    .line 5382
    goto/16 :goto_1308

    .line 5365
    .end local v0    # "serial":I
    .end local v1    # "entryType":I
    .end local v2    # "adnIndex":I
    .end local v3    # "entryIndex":I
    :sswitch_e33
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5368
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5369
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 5370
    goto/16 :goto_1308

    .line 5356
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_e43
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5358
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5359
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->queryUPBCapability(I)V

    .line 5360
    goto/16 :goto_1308

    .line 5344
    .end local v0    # "serial":I
    :sswitch_e4f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5346
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5347
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5348
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5349
    .local v2, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5350
    .local v3, "eIndex":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->readPhbEntry(IIII)V

    .line 5351
    goto/16 :goto_1308

    .line 5333
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "bIndex":I
    .end local v3    # "eIndex":I
    :sswitch_e67
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5336
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;-><init>()V

    .line 5337
    .local v1, "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5338
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->writePhbEntry(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;)V

    .line 5339
    goto/16 :goto_1308

    .line 5323
    .end local v0    # "serial":I
    .end local v1    # "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    :sswitch_e7b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5326
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5327
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->queryPhbStorageInfo(II)V

    .line 5328
    goto/16 :goto_1308

    .line 5314
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_e8b
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5317
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getCallSubAddress(I)V

    .line 5318
    goto/16 :goto_1308

    .line 5304
    .end local v0    # "serial":I
    :sswitch_e97
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5307
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5308
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setCallSubAddress(IZ)V

    .line 5309
    goto/16 :goto_1308

    .line 5295
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_ea7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5298
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getEccNum(I)V

    .line 5299
    goto/16 :goto_1308

    .line 5284
    .end local v0    # "serial":I
    :sswitch_eb3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5287
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5288
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5289
    .local v2, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 5290
    goto/16 :goto_1308

    .line 5274
    .end local v0    # "serial":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "ecc_list_no_card":Ljava/lang/String;
    :sswitch_ec7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5276
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5277
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5278
    .local v1, "status":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setVoicePreferStatus(II)V

    .line 5279
    goto/16 :goto_1308

    .line 5264
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :sswitch_ed7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5267
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5268
    .local v1, "phoneType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->eccPreferredRat(II)V

    .line 5269
    goto/16 :goto_1308

    .line 5251
    .end local v0    # "serial":I
    .end local v1    # "phoneType":I
    :sswitch_ee7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5253
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5254
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 5255
    .local v7, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5256
    .local v8, "enable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5257
    .local v9, "airplaneMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5258
    .local v10, "imsReg":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setEccMode(ILjava/lang/String;III)V

    .line 5259
    goto/16 :goto_1308

    .line 5238
    .end local v6    # "serial":I
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "enable":I
    .end local v9    # "airplaneMode":I
    .end local v10    # "imsReg":I
    :sswitch_f0a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5241
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5242
    .local v7, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5243
    .local v8, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5244
    .local v9, "seqNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5245
    .local v10, "cause":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setCallIndication(IIIII)V

    .line 5246
    goto/16 :goto_1308

    .line 5229
    .end local v6    # "serial":I
    .end local v7    # "mode":I
    .end local v8    # "callId":I
    .end local v9    # "seqNumber":I
    .end local v10    # "cause":I
    :sswitch_f2d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5232
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->hangupAll(I)V

    .line 5233
    goto/16 :goto_1308

    .line 5219
    .end local v0    # "serial":I
    :sswitch_f39
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5221
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5222
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5223
    .local v1, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 5224
    goto/16 :goto_1308

    .line 5210
    .end local v0    # "serial":I
    .end local v1    # "userAgent":Ljava/lang/String;
    :sswitch_f49
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5213
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->resetSuppServ(I)V

    .line 5214
    goto/16 :goto_1308

    .line 5201
    .end local v0    # "serial":I
    :sswitch_f55
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5204
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getXcapStatus(I)V

    .line 5205
    goto/16 :goto_1308

    .line 5192
    .end local v0    # "serial":I
    :sswitch_f61
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5195
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->cancelUssi(I)V

    .line 5196
    goto/16 :goto_1308

    .line 5182
    .end local v0    # "serial":I
    :sswitch_f6d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5185
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5186
    .local v1, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendUssi(ILjava/lang/String;)V

    .line 5187
    goto/16 :goto_1308

    .line 5169
    .end local v0    # "serial":I
    .end local v1    # "ussiString":Ljava/lang/String;
    :sswitch_f7d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5172
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 5173
    .local v7, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 5174
    .local v8, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 5175
    .local v9, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5176
    .local v10, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 5177
    goto/16 :goto_1308

    .line 5158
    .end local v6    # "serial":I
    .end local v7    # "nafFqdn":Ljava/lang/String;
    .end local v8    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v9    # "forceRun":Z
    .end local v10    # "netId":I
    :sswitch_fa0
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5161
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 5162
    .local v1, "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5163
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 5164
    goto/16 :goto_1308

    .line 5147
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :sswitch_fb4
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5149
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5150
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 5151
    .restart local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5152
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 5153
    goto/16 :goto_1308

    .line 5137
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :sswitch_fc8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5140
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5141
    .local v1, "colrEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setColr(II)V

    .line 5142
    goto/16 :goto_1308

    .line 5127
    .end local v0    # "serial":I
    .end local v1    # "colrEnable":I
    :sswitch_fd8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5130
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5131
    .local v1, "colpEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setColp(II)V

    .line 5132
    goto/16 :goto_1308

    .line 5117
    .end local v0    # "serial":I
    .end local v1    # "colpEnable":I
    :sswitch_fe8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5120
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5121
    .local v1, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendCnap(ILjava/lang/String;)V

    .line 5122
    goto/16 :goto_1308

    .line 5108
    .end local v0    # "serial":I
    .end local v1    # "cnapssMessage":Ljava/lang/String;
    :sswitch_ff8
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5111
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getColr(I)V

    .line 5112
    goto/16 :goto_1308

    .line 5099
    .end local v0    # "serial":I
    :sswitch_1004
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5102
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getColp(I)V

    .line 5103
    goto/16 :goto_1308

    .line 5089
    .end local v0    # "serial":I
    :sswitch_1010
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5092
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5093
    .local v1, "clipEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setClip(II)V

    .line 5094
    goto/16 :goto_1308

    .line 5076
    .end local v0    # "serial":I
    .end local v1    # "clipEnable":I
    :sswitch_1020
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5078
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5079
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 5080
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 5081
    .local v8, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 5082
    .local v9, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 5083
    .local v10, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5084
    goto/16 :goto_1308

    .line 5066
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "oldPassword":Ljava/lang/String;
    .end local v9    # "newPassword":Ljava/lang/String;
    .end local v10    # "cfmPassword":Ljava/lang/String;
    :sswitch_1043
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5068
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5069
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5070
    .local v1, "phoneId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getRoamingEnable(II)V

    .line 5071
    goto/16 :goto_1308

    .line 5056
    .end local v0    # "serial":I
    .end local v1    # "phoneId":I
    :sswitch_1053
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5059
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5060
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 5061
    goto/16 :goto_1308

    .line 5046
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1063
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5049
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5050
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 5051
    goto/16 :goto_1308

    .line 5037
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/lang/String;
    :sswitch_1073
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5039
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5040
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setImsRegistrationReport(I)V

    .line 5041
    goto/16 :goto_1308

    .line 5026
    .end local v0    # "serial":I
    :sswitch_107f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5029
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5030
    .local v1, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5031
    .local v2, "isVideoCall":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 5032
    goto/16 :goto_1308

    .line 5014
    .end local v0    # "serial":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "isVideoCall":Z
    :sswitch_1093
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5016
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5017
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5018
    .local v1, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5019
    .local v2, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5020
    .local v3, "timer":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setImsRtpReport(IIII)V

    .line 5021
    goto/16 :goto_1308

    .line 5002
    .end local v0    # "serial":I
    .end local v1    # "pdnId":I
    .end local v2    # "networkId":I
    .end local v3    # "timer":I
    :sswitch_10ab
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5005
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5006
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5007
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5008
    .local v3, "status":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->imsBearerStateConfirm(IIII)V

    .line 5009
    goto/16 :goto_1308

    .line 4992
    .end local v0    # "serial":I
    .end local v1    # "aid":I
    .end local v2    # "action":I
    .end local v3    # "status":I
    :sswitch_10c3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4995
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4996
    .local v1, "callId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->forceReleaseCall(II)V

    .line 4997
    goto/16 :goto_1308

    .line 4981
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    :sswitch_10d3
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4984
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4985
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4986
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 4987
    goto/16 :goto_1308

    .line 4971
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_10e7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4974
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4975
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 4976
    goto/16 :goto_1308

    .line 4961
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_10f7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4963
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4964
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4965
    .restart local v1    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 4966
    goto/16 :goto_1308

    .line 4949
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_1107
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4952
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4953
    .local v1, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4954
    .local v2, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4955
    .local v3, "type":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 4956
    goto/16 :goto_1308

    .line 4938
    .end local v0    # "serial":I
    .end local v1    # "keys":Ljava/lang/String;
    .end local v2    # "values":Ljava/lang/String;
    .end local v3    # "type":I
    :sswitch_111f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4940
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4941
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;-><init>()V

    .line 4942
    .local v1, "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4943
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;)V

    .line 4944
    goto/16 :goto_1308

    .line 4928
    .end local v0    # "serial":I
    .end local v1    # "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    :sswitch_1133
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4931
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4932
    .local v1, "wfcPreference":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setWfcProfile(II)V

    .line 4933
    goto/16 :goto_1308

    .line 4915
    .end local v0    # "serial":I
    .end local v1    # "wfcPreference":I
    :sswitch_1143
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4917
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4918
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4919
    .local v7, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4920
    .local v8, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 4921
    .local v9, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 4922
    .local v10, "callId":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 4923
    goto/16 :goto_1308

    .line 4904
    .end local v6    # "serial":I
    .end local v7    # "controlType":I
    .end local v8    # "confCallId":I
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "callId":I
    :sswitch_1166
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4907
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4908
    .local v1, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4909
    .local v2, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 4910
    goto/16 :goto_1308

    .line 4894
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    .end local v2    # "provisionValue":Ljava/lang/String;
    :sswitch_117a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4896
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4897
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4898
    .restart local v1    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 4899
    goto/16 :goto_1308

    .line 4879
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    :sswitch_118a
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4882
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 4883
    .local v9, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 4884
    .local v10, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 4885
    .local v11, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 4886
    .local v12, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 4887
    .local v16, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 4888
    .local v17, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setImscfg(IZZZZZZ)V

    .line 4889
    goto/16 :goto_1308

    .line 4869
    .end local v8    # "serial":I
    .end local v9    # "volteEnable":Z
    .end local v10    # "vilteEnable":Z
    .end local v11    # "vowifiEnable":Z
    .end local v12    # "viwifiEnable":Z
    .end local v16    # "smsEnable":Z
    .end local v17    # "eimsEnable":Z
    :sswitch_11b9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4872
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4873
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setImsVideoEnable(IZ)V

    .line 4874
    goto/16 :goto_1308

    .line 4859
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_11c9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4861
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4862
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4863
    .restart local v1    # "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setImsEnable(IZ)V

    .line 4864
    goto/16 :goto_1308

    .line 4849
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_11d9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4852
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4853
    .local v1, "cause":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->imsDeregNotification(II)V

    .line 4854
    goto/16 :goto_1308

    .line 4838
    .end local v0    # "serial":I
    .end local v1    # "cause":I
    :sswitch_11e9
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4841
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4842
    .local v1, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4843
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->controlCall(III)V

    .line 4844
    goto/16 :goto_1308

    .line 4827
    .end local v0    # "serial":I
    .end local v1    # "controlType":I
    .end local v2    # "callId":I
    :sswitch_11fd
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4830
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4831
    .local v1, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4832
    .local v2, "type":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 4833
    goto/16 :goto_1308

    .line 4816
    .end local v0    # "serial":I
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_1211
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4819
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4820
    .local v1, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4821
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->videoCallAccept(III)V

    .line 4822
    goto/16 :goto_1308

    .line 4804
    .end local v0    # "serial":I
    .end local v1    # "videoMode":I
    .end local v2    # "callId":I
    :sswitch_1225
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;

    move-result-object v0

    .line 4807
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;

    move-result-object v2

    .line 4808
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsRsu(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;)V

    .line 4809
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4810
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4811
    goto/16 :goto_1308

    .line 4793
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;
    :sswitch_1243
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4795
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;

    move-result-object v0

    .line 4796
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsCap(Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;)V

    .line 4797
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4799
    goto/16 :goto_1308

    .line 4782
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;
    :sswitch_1259
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;

    move-result-object v0

    .line 4785
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;)V

    .line 4786
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4787
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4788
    goto/16 :goto_1308

    .line 4770
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;
    :sswitch_126f
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;

    move-result-object v0

    .line 4773
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;

    move-result-object v2

    .line 4774
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsEm(Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;)V

    .line 4775
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4777
    goto/16 :goto_1308

    .line 4758
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;
    :sswitch_128d
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;

    move-result-object v0

    .line 4761
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;

    move-result-object v2

    .line 4762
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;)V

    .line 4763
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4765
    goto :goto_1308

    .line 4746
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;
    :sswitch_12aa
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;

    move-result-object v0

    .line 4749
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;

    move-result-object v2

    .line 4750
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;)V

    .line 4751
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4753
    goto :goto_1308

    .line 4734
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;
    :sswitch_12c7
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;

    move-result-object v0

    .line 4737
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;

    move-result-object v2

    .line 4738
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;)V

    .line 4739
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4741
    goto :goto_1308

    .line 4722
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;
    :sswitch_12e4
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;

    move-result-object v0

    .line 4725
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;

    move-result-object v2

    .line 4726
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;)V

    .line 4727
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4729
    goto :goto_1308

    .line 4714
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
    :sswitch_1301
    invoke-virtual {v14, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4716
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->responseAcknowledgementMtk()V

    .line 4717
    nop

    .line 7360
    :goto_1308
    return-void

    nop

    :sswitch_data_130a
    .sparse-switch
        0x1 -> :sswitch_1301
        0x2 -> :sswitch_12e4
        0x3 -> :sswitch_12c7
        0x4 -> :sswitch_12aa
        0x5 -> :sswitch_128d
        0x6 -> :sswitch_126f
        0x7 -> :sswitch_1259
        0x8 -> :sswitch_1243
        0x9 -> :sswitch_1225
        0xa -> :sswitch_1211
        0xb -> :sswitch_11fd
        0xc -> :sswitch_11e9
        0xd -> :sswitch_11d9
        0xe -> :sswitch_11c9
        0xf -> :sswitch_11b9
        0x10 -> :sswitch_118a
        0x11 -> :sswitch_117a
        0x12 -> :sswitch_1166
        0x13 -> :sswitch_1143
        0x14 -> :sswitch_1133
        0x15 -> :sswitch_111f
        0x16 -> :sswitch_1107
        0x17 -> :sswitch_10f7
        0x18 -> :sswitch_10e7
        0x19 -> :sswitch_10d3
        0x1a -> :sswitch_10c3
        0x1b -> :sswitch_10ab
        0x1c -> :sswitch_1093
        0x1d -> :sswitch_107f
        0x1e -> :sswitch_1073
        0x1f -> :sswitch_1063
        0x20 -> :sswitch_1053
        0x21 -> :sswitch_1043
        0x22 -> :sswitch_1020
        0x23 -> :sswitch_1010
        0x24 -> :sswitch_1004
        0x25 -> :sswitch_ff8
        0x26 -> :sswitch_fe8
        0x27 -> :sswitch_fd8
        0x28 -> :sswitch_fc8
        0x29 -> :sswitch_fb4
        0x2a -> :sswitch_fa0
        0x2b -> :sswitch_f7d
        0x2c -> :sswitch_f6d
        0x2d -> :sswitch_f61
        0x2e -> :sswitch_f55
        0x2f -> :sswitch_f49
        0x30 -> :sswitch_f39
        0x31 -> :sswitch_f2d
        0x32 -> :sswitch_f0a
        0x33 -> :sswitch_ee7
        0x34 -> :sswitch_ed7
        0x35 -> :sswitch_ec7
        0x36 -> :sswitch_eb3
        0x37 -> :sswitch_ea7
        0x38 -> :sswitch_e97
        0x39 -> :sswitch_e8b
        0x3a -> :sswitch_e7b
        0x3b -> :sswitch_e67
        0x3c -> :sswitch_e4f
        0x3d -> :sswitch_e43
        0x3e -> :sswitch_e33
        0x3f -> :sswitch_e1b
        0x40 -> :sswitch_e07
        0x41 -> :sswitch_df7
        0x42 -> :sswitch_de3
        0x43 -> :sswitch_dd7
        0x44 -> :sswitch_dcb
        0x45 -> :sswitch_db7
        0x46 -> :sswitch_da3
        0x47 -> :sswitch_d8f
        0x48 -> :sswitch_d7b
        0x49 -> :sswitch_d67
        0x4a -> :sswitch_d53
        0x4b -> :sswitch_d3f
        0x4c -> :sswitch_d2b
        0x4d -> :sswitch_d1b
        0x4e -> :sswitch_d0b
        0x4f -> :sswitch_cfb
        0x50 -> :sswitch_cef
        0x51 -> :sswitch_ce3
        0x52 -> :sswitch_cd3
        0x53 -> :sswitch_cc7
        0x54 -> :sswitch_cbb
        0x55 -> :sswitch_caf
        0x56 -> :sswitch_c9b
        0x57 -> :sswitch_c8b
        0x58 -> :sswitch_c5c
        0x59 -> :sswitch_c48
        0x5a -> :sswitch_c30
        0x5b -> :sswitch_c08
        0x5c -> :sswitch_bfc
        0x5d -> :sswitch_be8
        0x5e -> :sswitch_bdc
        0x5f -> :sswitch_bcc
        0x60 -> :sswitch_bb8
        0x61 -> :sswitch_ba8
        0x62 -> :sswitch_b9c
        0x63 -> :sswitch_b90
        0x64 -> :sswitch_b7c
        0x65 -> :sswitch_b68
        0x66 -> :sswitch_b54
        0x67 -> :sswitch_b44
        0x68 -> :sswitch_b34
        0x69 -> :sswitch_b24
        0x6a -> :sswitch_b10
        0x6b -> :sswitch_b04
        0x6c -> :sswitch_aec
        0x6d -> :sswitch_ae0
        0x6e -> :sswitch_ad4
        0x6f -> :sswitch_ac8
        0x70 -> :sswitch_abc
        0x71 -> :sswitch_ab0
        0x72 -> :sswitch_a98
        0x73 -> :sswitch_a8c
        0x74 -> :sswitch_a7c
        0x75 -> :sswitch_a4d
        0x76 -> :sswitch_a39
        0x77 -> :sswitch_a25
        0x78 -> :sswitch_a02
        0x79 -> :sswitch_9f2
        0x7a -> :sswitch_9e2
        0x7b -> :sswitch_9bf
        0x7c -> :sswitch_9af
        0x7d -> :sswitch_99f
        0x7e -> :sswitch_98f
        0x7f -> :sswitch_97f
        0x80 -> :sswitch_973
        0x81 -> :sswitch_967
        0x82 -> :sswitch_94f
        0x83 -> :sswitch_937
        0x84 -> :sswitch_927
        0x85 -> :sswitch_917
        0x86 -> :sswitch_8ff
        0x87 -> :sswitch_8ef
        0x88 -> :sswitch_8e3
        0x89 -> :sswitch_8d3
        0x8a -> :sswitch_8c3
        0x8b -> :sswitch_8b3
        0x8c -> :sswitch_8a3
        0x8d -> :sswitch_88b
        0x8e -> :sswitch_85c
        0x8f -> :sswitch_848
        0x90 -> :sswitch_804
        0x91 -> :sswitch_7ec
        0x92 -> :sswitch_7e0
        0x93 -> :sswitch_78e
        0x94 -> :sswitch_77e
        0x95 -> :sswitch_74f
        0x96 -> :sswitch_737
        0x97 -> :sswitch_71f
        0x98 -> :sswitch_713
        0x99 -> :sswitch_703
        0x9a -> :sswitch_6e0
        0x9b -> :sswitch_6cc
        0x9c -> :sswitch_6b8
        0x9d -> :sswitch_6a8
        0x9e -> :sswitch_698
        0x9f -> :sswitch_688
        0xa0 -> :sswitch_678
        0xa1 -> :sswitch_66c
        0xa2 -> :sswitch_65c
        0xa3 -> :sswitch_650
        0xa4 -> :sswitch_640
        0xa5 -> :sswitch_62c
        0xa6 -> :sswitch_61c
        0xa7 -> :sswitch_60c
        0xa8 -> :sswitch_5f8
        0xa9 -> :sswitch_5e0
        0xaa -> :sswitch_5c8
        0xab -> :sswitch_5b4
        0xac -> :sswitch_5a0
        0xad -> :sswitch_590
        0xae -> :sswitch_57c
        0xaf -> :sswitch_564
        0xb0 -> :sswitch_550
        0xb1 -> :sswitch_53c
        0xb2 -> :sswitch_530
        0xb3 -> :sswitch_528
        0xb4 -> :sswitch_514
        0xb5 -> :sswitch_504
        0xb6 -> :sswitch_4f8
        0xb7 -> :sswitch_4e8
        0xb8 -> :sswitch_4d8
        0xb9 -> :sswitch_4c8
        0xba -> :sswitch_4b8
        0xbb -> :sswitch_4a8
        0xbc -> :sswitch_498
        0xbd -> :sswitch_488
        0xbe -> :sswitch_478
        0xbf -> :sswitch_468
        0xc0 -> :sswitch_45c
        0xc1 -> :sswitch_439
        0xc2 -> :sswitch_421
        0xc3 -> :sswitch_409
        0xc4 -> :sswitch_3f5
        0xc5 -> :sswitch_3dd
        0xc6 -> :sswitch_3cd
        0xc7 -> :sswitch_3b9
        0xc8 -> :sswitch_3a5
        0xc9 -> :sswitch_399
        0xca -> :sswitch_389
        0xcb -> :sswitch_36b
        0xcc -> :sswitch_357
        0xcd -> :sswitch_347
        0xce -> :sswitch_32f
        0xcf -> :sswitch_31b
        0xd0 -> :sswitch_30b
        0xd1 -> :sswitch_2f7
        0xd2 -> :sswitch_2e3
        0xd3 -> :sswitch_2bb
        0xd4 -> :sswitch_277
        0xd5 -> :sswitch_265
        0xd6 -> :sswitch_259
        0xd7 -> :sswitch_249
        0xd8 -> :sswitch_235
        0xd9 -> :sswitch_21d
        0xda -> :sswitch_20d
        0xdb -> :sswitch_201
        0xdc -> :sswitch_1f5
        0xdd -> :sswitch_1e1
        0xde -> :sswitch_1d5
        0xdf -> :sswitch_1c5
        0xe0 -> :sswitch_1b5
        0xe1 -> :sswitch_1a9
        0xe2 -> :sswitch_199
        0xe3 -> :sswitch_18d
        0xe4 -> :sswitch_17d
        0xe5 -> :sswitch_171
        0xe6 -> :sswitch_165
        0xe7 -> :sswitch_155
        0xe8 -> :sswitch_149
        0xe9 -> :sswitch_135
        0xea -> :sswitch_125
        0xeb -> :sswitch_111
        0xec -> :sswitch_101
        0xed -> :sswitch_f1
        0xee -> :sswitch_e5
        0xef -> :sswitch_d3
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_44
        0xf494e54 -> :sswitch_3c
        0xf4c5444 -> :sswitch_3a
        0xf504e47 -> :sswitch_2c
        0xf524546 -> :sswitch_1a
        0xf535953 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 4665
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4693
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.5::IMtkRadioEx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4694
    return-object p0

    .line 4696
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

    .line 4700
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->registerService(Ljava/lang/String;)V

    .line 4701
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 4655
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_5/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4687
    const/4 v0, 0x1

    return v0
.end method
