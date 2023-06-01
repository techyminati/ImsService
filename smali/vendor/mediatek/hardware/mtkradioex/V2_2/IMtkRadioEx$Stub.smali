.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioEx.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4171
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 4174
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

    .line 4189
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 4228
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4229
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 4230
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 4231
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 4232
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

    .line 4201
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_30

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_44

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_58

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_6c

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_30
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

    :array_44
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

    :array_58
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

    :array_6c
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4179
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.2::IMtkRadioEx"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.1::IMtkRadioEx"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 4195
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IMtkRadioEx"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 4216
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 4238
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 4240
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

    .line 4268
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    sparse-switch p1, :sswitch_data_1176

    goto/16 :goto_1174

    .line 6649
    :sswitch_10
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6651
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->notifySyspropsChanged()V

    .line 6652
    goto/16 :goto_1174

    .line 6638
    :sswitch_18
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6640
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 6641
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6642
    invoke-virtual {v0, v15}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 6643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6644
    goto/16 :goto_1174

    .line 6628
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6630
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->ping()V

    .line 6631
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6632
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6633
    goto/16 :goto_1174

    .line 6623
    :sswitch_38
    goto/16 :goto_1174

    .line 6615
    :sswitch_3a
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6617
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setHALInstrumentation()V

    .line 6618
    goto/16 :goto_1174

    .line 6581
    :sswitch_42
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6583
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 6584
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6586
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 6588
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6589
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 6590
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 6591
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 6592
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v3, :cond_8a

    .line 6594
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 6595
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 6597
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_82

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_82

    .line 6601
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 6602
    nop

    .line 6592
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 6598
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6605
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 6607
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 6609
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6610
    goto/16 :goto_1174

    .line 6570
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6572
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 6573
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6574
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 6575
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6576
    goto/16 :goto_1174

    .line 6558
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 6561
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6562
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 6563
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6564
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6565
    goto/16 :goto_1174

    .line 6547
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6549
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 6550
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6551
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 6552
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6553
    goto/16 :goto_1174

    .line 6537
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IMtkRadioEx"

    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6540
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6541
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    .line 6542
    goto/16 :goto_1174

    .line 6519
    .end local v0    # "serial":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_e3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 6522
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 6523
    .local v12, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6524
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 6525
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 6526
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 6527
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 6528
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 6529
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 6530
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 6531
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

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6532
    goto/16 :goto_1174

    .line 6505
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
    :sswitch_127
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6508
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6509
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6510
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 6511
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 6512
    .local v11, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 6513
    .local v12, "mtuSize":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 6514
    goto/16 :goto_1174

    .line 6494
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    .end local v12    # "mtuSize":I
    :sswitch_14f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6496
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6497
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6498
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6499
    .local v2, "isWifiEnabled":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendWifiEnabled(ILjava/lang/String;I)V

    .line 6500
    goto/16 :goto_1174

    .line 6483
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    :sswitch_163
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6485
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6486
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;-><init>()V

    .line 6487
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6488
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendRsuRequest(ILvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;)V

    .line 6489
    goto/16 :goto_1174

    .line 6473
    .end local v0    # "serial":I
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    :sswitch_177
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6476
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6477
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    .line 6478
    goto/16 :goto_1174

    .line 6462
    .end local v0    # "serial":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_187
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6465
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6466
    .local v1, "sar_cmd_type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6467
    .local v2, "sar_parameter":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendSarIndicator(IILjava/lang/String;)V

    .line 6468
    goto/16 :goto_1174

    .line 6450
    .end local v0    # "serial":I
    .end local v1    # "sar_cmd_type":I
    .end local v2    # "sar_parameter":Ljava/lang/String;
    :sswitch_19b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6453
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6454
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6455
    .local v2, "tGear":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6456
    .local v3, "lGear":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setSmartSceneSwitch(IIII)V

    .line 6457
    goto/16 :goto_1174

    .line 6440
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "tGear":I
    .end local v3    # "lGear":I
    :sswitch_1b3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6443
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6444
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getSmartRatSwitch(II)V

    .line 6445
    goto/16 :goto_1174

    .line 6429
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_1c3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6431
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6432
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6433
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6434
    .local v2, "rat":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->smartRatSwitch(III)V

    .line 6435
    goto/16 :goto_1174

    .line 6417
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "rat":I
    :sswitch_1d7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6419
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;

    move-result-object v0

    .line 6420
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;

    move-result-object v2

    .line 6421
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsSmartRatSwitch(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;)V

    .line 6422
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6423
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6424
    goto/16 :goto_1174

    .line 6407
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;
    :sswitch_1f5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6410
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6411
    .local v1, "ulSpeed":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setMaxUlSpeed(II)V

    .line 6412
    goto/16 :goto_1174

    .line 6398
    .end local v0    # "serial":I
    .end local v1    # "ulSpeed":I
    :sswitch_205
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6401
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getDeactivateNrScgCommunication(I)V

    .line 6402
    goto/16 :goto_1174

    .line 6387
    .end local v0    # "serial":I
    :sswitch_211
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6390
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6391
    .local v1, "deactivate":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6392
    .local v2, "allowSCGAdd":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->deactivateNrScgCommunication(IZZ)V

    .line 6393
    goto/16 :goto_1174

    .line 6376
    .end local v0    # "serial":I
    .end local v1    # "deactivate":Z
    .end local v2    # "allowSCGAdd":Z
    :sswitch_225
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6378
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6379
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6380
    .local v1, "approve":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6381
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->eccRedialApprove(III)V

    .line 6382
    goto/16 :goto_1174

    .line 6366
    .end local v0    # "serial":I
    .end local v1    # "approve":I
    .end local v2    # "callId":I
    :sswitch_239
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6369
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6370
    .local v1, "uid":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->abortCertificate(II)V

    .line 6371
    goto/16 :goto_1174

    .line 6354
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    :sswitch_249
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6356
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6357
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6358
    .local v1, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6359
    .local v2, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6360
    .local v3, "toActive":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->enableCapabaility(ILjava/lang/String;II)V

    .line 6361
    goto/16 :goto_1174

    .line 6343
    .end local v0    # "serial":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "toActive":I
    :sswitch_261
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6346
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6347
    .local v1, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6348
    .local v2, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->routeAuthMessage(IILjava/util/ArrayList;)V

    .line 6349
    goto/16 :goto_1174

    .line 6331
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_275
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6334
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6335
    .restart local v1    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6336
    .local v2, "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 6337
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->routeCertificate(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6338
    goto/16 :goto_1174

    .line 6319
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_28d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6322
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6323
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6324
    .local v2, "num":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6325
    .local v3, "timer":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getSuggestedPlmnList(IIII)V

    .line 6326
    goto/16 :goto_1174

    .line 6306
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "num":I
    .end local v3    # "timer":I
    :sswitch_2a5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6308
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6309
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 6310
    .local v7, "registerQuality":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6311
    .local v8, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6312
    .local v9, "thresholdValues":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 6313
    .local v10, "triggerTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6314
    goto/16 :goto_1174

    .line 6297
    .end local v6    # "serial":I
    .end local v7    # "registerQuality":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "thresholdValues":Ljava/lang/String;
    .end local v10    # "triggerTime":Ljava/lang/String;
    :sswitch_2c8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6300
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getDsdaStatus(I)V

    .line 6301
    goto/16 :goto_1174

    .line 6287
    .end local v0    # "serial":I
    :sswitch_2d4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6289
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6290
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6291
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->enableDsdaIndication(IZ)V

    .line 6292
    goto/16 :goto_1174

    .line 6277
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_2e4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6280
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6281
    .local v1, "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setKeepAliveByIpData(ILjava/lang/String;)V

    .line 6282
    goto/16 :goto_1174

    .line 6267
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_2f4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6270
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6271
    .restart local v1    # "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;)V

    .line 6272
    goto/16 :goto_1174

    .line 6257
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_304
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6260
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6261
    .local v1, "interval":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setIgnoreSameNumberInterval(II)V

    .line 6262
    goto/16 :goto_1174

    .line 6247
    .end local v0    # "serial":I
    .end local v1    # "interval":I
    :sswitch_314
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6249
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6250
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6251
    .local v1, "timer":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setCallValidTimer(II)V

    .line 6252
    goto/16 :goto_1174

    .line 6237
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_324
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6240
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6241
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setGwsdMode(ILjava/util/ArrayList;)V

    .line 6242
    goto/16 :goto_1174

    .line 6227
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_334
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6230
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6231
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setImsCallMode(II)V

    .line 6232
    goto/16 :goto_1174

    .line 6217
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_344
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6220
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6221
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setSipHeaderReport(ILjava/util/ArrayList;)V

    .line 6222
    goto/16 :goto_1174

    .line 6207
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_354
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6210
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6211
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setSipHeader(ILjava/util/ArrayList;)V

    .line 6212
    goto/16 :goto_1174

    .line 6198
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_364
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6200
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6201
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getVoiceDomainPreference(I)V

    .line 6202
    goto/16 :goto_1174

    .line 6188
    .end local v0    # "serial":I
    :sswitch_370
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6191
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6192
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->enableCAPlusBandWidthFilter(IZ)V

    .line 6193
    goto/16 :goto_1174

    .line 6177
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_380
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6179
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6180
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6181
    .local v1, "mcc":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6182
    .local v2, "mnc":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getPlmnNameFromSE13Table(III)V

    .line 6183
    goto/16 :goto_1174

    .line 6169
    .end local v0    # "serial":I
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :sswitch_394
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6171
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->notifyImsServiceReady()V

    .line 6172
    goto/16 :goto_1174

    .line 6160
    :sswitch_39c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6163
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->queryVopsStatus(I)V

    .line 6164
    goto/16 :goto_1174

    .line 6149
    .end local v0    # "serial":I
    :sswitch_3a8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6152
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6153
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6154
    .local v2, "audio":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->toggleRttAudioIndication(III)V

    .line 6155
    goto/16 :goto_1174

    .line 6138
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "audio":I
    :sswitch_3bc
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6141
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6142
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6143
    .local v2, "result":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->rttModifyRequestResponse(III)V

    .line 6144
    goto/16 :goto_1174

    .line 6126
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "result":I
    :sswitch_3d0
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6128
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6129
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6130
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6131
    .local v2, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6132
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendRttText(IIILjava/lang/String;)V

    .line 6133
    goto/16 :goto_1174

    .line 6115
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "lenOfString":I
    .end local v3    # "text":Ljava/lang/String;
    :sswitch_3e8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6117
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6118
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6119
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6120
    .local v2, "newMode":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendRttModifyRequest(III)V

    .line 6121
    goto/16 :goto_1174

    .line 6105
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "newMode":I
    :sswitch_3fc
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6107
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6108
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6109
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setRttMode(II)V

    .line 6110
    goto/16 :goto_1174

    .line 6094
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_40c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6097
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6098
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6099
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setVendorSetting(IILjava/lang/String;)V

    .line 6100
    goto/16 :goto_1174

    .line 6083
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_420
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6086
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6087
    .local v1, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 6088
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 6089
    goto/16 :goto_1174

    .line 6073
    .end local v0    # "serial":I
    .end local v1    # "reqType":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_434
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;

    move-result-object v0

    .line 6076
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;

    move-result-object v1

    .line 6077
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsRcs(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;)V

    .line 6078
    goto/16 :goto_1174

    .line 6063
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;
    :sswitch_44c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;

    move-result-object v0

    .line 6066
    .local v0, "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;

    move-result-object v1

    .line 6067
    .local v1, "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;)V

    .line 6068
    goto/16 :goto_1174

    .line 6052
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;
    .end local v1    # "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;
    :sswitch_464
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6054
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6055
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6056
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6057
    .local v2, "reason":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->hangupWithReason(III)V

    .line 6058
    goto/16 :goto_1174

    .line 6042
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "reason":I
    :sswitch_478
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6045
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6046
    .local v1, "state":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->notifyEPDGScreenState(II)V

    .line 6047
    goto/16 :goto_1174

    .line 6032
    .end local v0    # "serial":I
    .end local v1    # "state":I
    :sswitch_488
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6035
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6036
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 6037
    goto/16 :goto_1174

    .line 6021
    .end local v0    # "serial":I
    .end local v1    # "pwd":Ljava/lang/String;
    :sswitch_498
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6024
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6025
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6026
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6027
    goto/16 :goto_1174

    .line 6011
    .end local v0    # "serial":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_4ac
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6014
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6015
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setTxPowerStatus(II)V

    .line 6016
    goto/16 :goto_1174

    .line 6002
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_4bc
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6004
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6005
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getLteReleaseVersion(I)V

    .line 6006
    goto/16 :goto_1174

    .line 5992
    .end local v0    # "serial":I
    :sswitch_4c8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5995
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5996
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setLteReleaseVersion(II)V

    .line 5997
    goto/16 :goto_1174

    .line 5983
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_4d8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5985
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5986
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->resetAllConnections(I)V

    .line 5987
    goto/16 :goto_1174

    .line 5973
    .end local v0    # "serial":I
    :sswitch_4e4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5976
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5977
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->dataConnectionDetach(II)V

    .line 5978
    goto/16 :goto_1174

    .line 5963
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_4f4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5966
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5967
    .restart local v1    # "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->dataConnectionAttach(II)V

    .line 5968
    goto/16 :goto_1174

    .line 5953
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_504
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5956
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5957
    .local v1, "featureId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getImsCfgResourceCapValue(II)V

    .line 5958
    goto/16 :goto_1174

    .line 5943
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    :sswitch_514
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5945
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5946
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5947
    .local v1, "configId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getImsCfgProvisionValue(II)V

    .line 5948
    goto/16 :goto_1174

    .line 5932
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    :sswitch_524
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5935
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5936
    .restart local v1    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5937
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 5938
    goto/16 :goto_1174

    .line 5921
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_538
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5923
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5924
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5925
    .local v1, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5926
    .local v2, "network":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getImsCfgFeatureValue(III)V

    .line 5927
    goto/16 :goto_1174

    .line 5908
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    .end local v2    # "network":I
    :sswitch_54c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5911
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5912
    .local v7, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5913
    .local v8, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5914
    .local v9, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5915
    .local v10, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 5916
    goto/16 :goto_1174

    .line 5898
    .end local v6    # "serial":I
    .end local v7    # "featureId":I
    .end local v8    # "network":I
    .end local v9    # "value":I
    .end local v10    # "isLast":I
    :sswitch_56f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5901
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5902
    .local v1, "enable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setImsBearerNotification(II)V

    .line 5903
    goto/16 :goto_1174

    .line 5889
    .end local v0    # "serial":I
    .end local v1    # "enable":I
    :sswitch_57f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5892
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getApcInfo(I)V

    .line 5893
    goto/16 :goto_1174

    .line 5877
    .end local v0    # "serial":I
    :sswitch_58b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5880
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5881
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5882
    .local v2, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5883
    .local v3, "interval":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setApcMode(IIII)V

    .line 5884
    goto/16 :goto_1174

    .line 5865
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "reportMode":I
    .end local v3    # "interval":I
    :sswitch_5a3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5868
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5869
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5870
    .local v2, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5871
    .local v3, "pktloss":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setWifiPingResult(IIII)V

    .line 5872
    goto/16 :goto_1174

    .line 5850
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "latency":I
    .end local v3    # "pktloss":I
    :sswitch_5bb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5852
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5853
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 5854
    .local v9, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 5855
    .local v10, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 5856
    .local v11, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 5857
    .local v12, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 5858
    .local v16, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 5859
    .local v17, "dstPort":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 5860
    goto/16 :goto_1174

    .line 5840
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "enable":Z
    .end local v11    # "srcIp":Ljava/lang/String;
    .end local v12    # "srcPort":I
    .end local v16    # "dstIp":Ljava/lang/String;
    .end local v17    # "dstPort":I
    :sswitch_5ea
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5842
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5843
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5844
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 5845
    goto/16 :goto_1174

    .line 5820
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_5fa
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 5823
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 5824
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 5825
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 5826
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 5827
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 5828
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 5829
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 5830
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 5831
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 5832
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 5833
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 5834
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5835
    goto/16 :goto_1174

    .line 5811
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
    :sswitch_64c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5814
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->querySsacStatus(I)V

    .line 5815
    goto/16 :goto_1174

    .line 5799
    .end local v0    # "serial":I
    :sswitch_658
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5801
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5802
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5803
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5804
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5805
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V

    .line 5806
    goto/16 :goto_1174

    .line 5781
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_670
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 5784
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5785
    .local v12, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 5786
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 5787
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 5788
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 5789
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 5790
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 5791
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 5792
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 5793
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

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5794
    goto/16 :goto_1174

    .line 5770
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
    :sswitch_6b4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5773
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5774
    .local v1, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5775
    .local v2, "snr":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setWifiSignalLevel(III)V

    .line 5776
    goto/16 :goto_1174

    .line 5755
    .end local v0    # "serial":I
    .end local v1    # "rssi":I
    .end local v2    # "snr":I
    :sswitch_6c8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5757
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5758
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 5759
    .restart local v9    # "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5760
    .local v10, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 5761
    .local v11, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5762
    .local v12, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 5763
    .local v16, "mtuSize":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 5764
    .local v17, "ueMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5765
    goto/16 :goto_1174

    .line 5743
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "associated":I
    .end local v11    # "ssid":Ljava/lang/String;
    .end local v12    # "apMac":Ljava/lang/String;
    .end local v16    # "mtuSize":I
    .end local v17    # "ueMac":Ljava/lang/String;
    :sswitch_6f7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5745
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5746
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5747
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5748
    .local v2, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5749
    .local v3, "isFlightModeOn":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 5750
    goto/16 :goto_1174

    .line 5733
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    .end local v3    # "isFlightModeOn":I
    :sswitch_70f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5736
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5737
    .local v1, "vdp":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setVoiceDomainPreference(II)V

    .line 5738
    goto/16 :goto_1174

    .line 5723
    .end local v0    # "serial":I
    .end local v1    # "vdp":I
    :sswitch_71f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5726
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5727
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setRemoveRestrictEutranMode(II)V

    .line 5728
    goto/16 :goto_1174

    .line 5713
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_72f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5716
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5717
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 5718
    goto/16 :goto_1174

    .line 5703
    .end local v0    # "serial":I
    .end local v1    # "apn":Ljava/lang/String;
    :sswitch_73f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5706
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5707
    .local v1, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 5708
    goto/16 :goto_1174

    .line 5694
    .end local v0    # "serial":I
    .end local v1    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_74f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5697
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->restartRILD(I)V

    .line 5698
    goto/16 :goto_1174

    .line 5684
    .end local v0    # "serial":I
    :sswitch_75b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5687
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5688
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 5689
    goto/16 :goto_1174

    .line 5674
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_76b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;

    move-result-object v0

    .line 5677
    .local v0, "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;

    move-result-object v1

    .line 5678
    .local v1, "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;)V

    .line 5679
    goto/16 :goto_1174

    .line 5664
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;
    .end local v1    # "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;
    :sswitch_783
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5667
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5668
    .local v1, "resultCode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 5669
    goto/16 :goto_1174

    .line 5654
    .end local v0    # "serial":I
    .end local v1    # "resultCode":I
    :sswitch_793
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5657
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5658
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setTrm(II)V

    .line 5659
    goto/16 :goto_1174

    .line 5642
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_7a3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5644
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5645
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5646
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5647
    .local v2, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5648
    .local v3, "param2":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setFdMode(IIII)V

    .line 5649
    goto/16 :goto_1174

    .line 5630
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "param1":I
    .end local v3    # "param2":I
    :sswitch_7bb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5633
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5634
    .local v1, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5635
    .local v2, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5636
    .local v3, "nAct":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 5637
    goto/16 :goto_1174

    .line 5621
    .end local v0    # "serial":I
    .end local v1    # "index":I
    .end local v2    # "numeric":Ljava/lang/String;
    .end local v3    # "nAct":I
    :sswitch_7d3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5623
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5624
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getCurrentPOLList(I)V

    .line 5625
    goto/16 :goto_1174

    .line 5612
    .end local v0    # "serial":I
    :sswitch_7df
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5614
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5615
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getPOLCapability(I)V

    .line 5616
    goto/16 :goto_1174

    .line 5602
    .end local v0    # "serial":I
    :sswitch_7eb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5604
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5605
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5606
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getRxTestResult(II)V

    .line 5607
    goto/16 :goto_1174

    .line 5592
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_7fb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5595
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5596
    .local v1, "antType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setRxTestConfig(II)V

    .line 5597
    goto/16 :goto_1174

    .line 5582
    .end local v0    # "serial":I
    .end local v1    # "antType":I
    :sswitch_80b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5585
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5586
    .local v1, "sleepDuration":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setBgsrchDeltaSleepTimer(II)V

    .line 5587
    goto/16 :goto_1174

    .line 5572
    .end local v0    # "serial":I
    .end local v1    # "sleepDuration":I
    :sswitch_81b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5575
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5576
    .local v1, "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setSearchRat(ILjava/util/ArrayList;)V

    .line 5577
    goto/16 :goto_1174

    .line 5559
    .end local v0    # "serial":I
    .end local v1    # "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_82b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5562
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5563
    .local v7, "operation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5564
    .local v8, "plmn_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5565
    .local v9, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 5566
    .local v10, "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setSearchStoredFreqInfo(IIIILjava/util/ArrayList;)V

    .line 5567
    goto/16 :goto_1174

    .line 5549
    .end local v6    # "serial":I
    .end local v7    # "operation":I
    .end local v8    # "plmn_id":I
    .end local v9    # "rat":I
    .end local v10    # "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_84e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5552
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5553
    .local v1, "limitpower":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setTxPower(II)V

    .line 5554
    goto/16 :goto_1174

    .line 5539
    .end local v0    # "serial":I
    .end local v1    # "limitpower":I
    :sswitch_85e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5541
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5542
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5543
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->disableNR(IZ)V

    .line 5544
    goto/16 :goto_1174

    .line 5526
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_86e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5529
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 5530
    .local v7, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5531
    .local v8, "T1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5532
    .local v9, "P1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5533
    .local v10, "T2":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->enableSCGfailure(IZIII)V

    .line 5534
    goto/16 :goto_1174

    .line 5515
    .end local v6    # "serial":I
    .end local v7    # "enable":Z
    .end local v8    # "T1":I
    .end local v9    # "P1":I
    .end local v10    # "T2":I
    :sswitch_891
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5517
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5518
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5519
    .local v1, "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5520
    .local v2, "threshBound":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->cfgB1offset(III)V

    .line 5521
    goto/16 :goto_1174

    .line 5504
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_8a5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5507
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5508
    .restart local v1    # "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5509
    .restart local v2    # "threshBound":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->cfgA2offset(III)V

    .line 5510
    goto/16 :goto_1174

    .line 5489
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_8b9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5492
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5493
    .local v9, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5494
    .local v10, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 5495
    .local v11, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 5496
    .local v12, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 5497
    .local v16, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 5498
    .local v17, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setServiceStateToModem(IIIIIII)V

    .line 5499
    goto/16 :goto_1174

    .line 5479
    .end local v8    # "serial":I
    .end local v9    # "voiceRegState":I
    .end local v10    # "dataRegState":I
    .end local v11    # "voiceRoamingType":I
    .end local v12    # "dataRoamingType":I
    .end local v16    # "rilVoiceRegState":I
    .end local v17    # "rilDataRegState":I
    :sswitch_8e8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5482
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5483
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 5484
    goto/16 :goto_1174

    .line 5470
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_8f8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5472
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5473
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 5474
    goto/16 :goto_1174

    .line 5458
    .end local v0    # "serial":I
    :sswitch_904
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5461
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5462
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5463
    .local v2, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5464
    .local v3, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5465
    goto/16 :goto_1174

    .line 5449
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "csgId":Ljava/lang/String;
    :sswitch_91c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5452
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->abortFemtocellList(I)V

    .line 5453
    goto/16 :goto_1174

    .line 5440
    .end local v0    # "serial":I
    :sswitch_928
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5443
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getFemtocellList(I)V

    .line 5444
    goto/16 :goto_1174

    .line 5431
    .end local v0    # "serial":I
    :sswitch_934
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5434
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->cancelAvailableNetworks(I)V

    .line 5435
    goto/16 :goto_1174

    .line 5422
    .end local v0    # "serial":I
    :sswitch_940
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5425
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 5426
    goto/16 :goto_1174

    .line 5413
    .end local v0    # "serial":I
    :sswitch_94c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5416
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getAvailableNetworksWithAct(I)V

    .line 5417
    goto/16 :goto_1174

    .line 5401
    .end local v0    # "serial":I
    :sswitch_958
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5404
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5405
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5406
    .restart local v2    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5407
    .local v3, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5408
    goto/16 :goto_1174

    .line 5392
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "mode":Ljava/lang/String;
    :sswitch_970
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5395
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getSmsRuimMemoryStatus(I)V

    .line 5396
    goto/16 :goto_1174

    .line 5381
    .end local v0    # "serial":I
    :sswitch_97c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5384
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5385
    .local v1, "applyType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5386
    .local v2, "modemType":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->modifyModemType(III)V

    .line 5387
    goto/16 :goto_1174

    .line 5371
    .end local v0    # "serial":I
    .end local v1    # "applyType":I
    .end local v2    # "modemType":I
    :sswitch_990
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5373
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5374
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5375
    .local v1, "sessionId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResumeRegistration(II)V

    .line 5376
    goto/16 :goto_1174

    .line 5361
    .end local v0    # "serial":I
    .end local v1    # "sessionId":I
    :sswitch_9a0
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5364
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5365
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 5366
    goto/16 :goto_1174

    .line 5351
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9b0
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5354
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5355
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 5356
    goto/16 :goto_1174

    .line 5340
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_9c0
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5342
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5343
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 5344
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5345
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 5346
    goto/16 :goto_1174

    .line 5329
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_9d4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5332
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5333
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5334
    .local v2, "cause":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 5335
    goto/16 :goto_1174

    .line 5318
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_9e8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5321
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 5322
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5323
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 5324
    goto/16 :goto_1174

    .line 5309
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_9fc
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5312
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getGsmBroadcastActivation(I)V

    .line 5313
    goto/16 :goto_1174

    .line 5300
    .end local v0    # "serial":I
    :sswitch_a08
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5303
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getGsmBroadcastLangs(I)V

    .line 5304
    goto/16 :goto_1174

    .line 5290
    .end local v0    # "serial":I
    :sswitch_a14
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5293
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5294
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 5295
    goto/16 :goto_1174

    .line 5279
    .end local v0    # "serial":I
    .end local v1    # "langs":Ljava/lang/String;
    :sswitch_a24
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5282
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5283
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5284
    .local v2, "serialId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->removeCbMsg(III)V

    .line 5285
    goto/16 :goto_1174

    .line 5269
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    .end local v2    # "serialId":I
    :sswitch_a38
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5272
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5273
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setEtws(II)V

    .line 5274
    goto/16 :goto_1174

    .line 5260
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_a48
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5263
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getSmsMemStatus(I)V

    .line 5264
    goto/16 :goto_1174

    .line 5249
    .end local v0    # "serial":I
    :sswitch_a54
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5252
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;-><init>()V

    .line 5253
    .local v1, "message":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5254
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setSmsParameters(ILvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V

    .line 5255
    goto/16 :goto_1174

    .line 5240
    .end local v0    # "serial":I
    .end local v1    # "message":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    :sswitch_a68
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5243
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getSmsParameters(I)V

    .line 5244
    goto/16 :goto_1174

    .line 5226
    .end local v0    # "serial":I
    :sswitch_a74
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5229
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5230
    .local v8, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5231
    .local v9, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5232
    .local v10, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 5233
    .local v11, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v12

    .line 5234
    .local v12, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 5235
    goto/16 :goto_1174

    .line 5214
    .end local v7    # "serial":I
    .end local v8    # "transactionId":I
    .end local v9    # "eventId":I
    .end local v10    # "result":I
    .end local v11    # "dataLength":I
    .end local v12    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_a9c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5217
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5218
    .local v1, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5219
    .local v2, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5220
    .local v3, "simType":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendVsimNotification(IIII)V

    .line 5221
    goto/16 :goto_1174

    .line 5203
    .end local v0    # "serial":I
    .end local v1    # "transactionId":I
    .end local v2    # "eventId":I
    .end local v3    # "simType":I
    :sswitch_ab4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5206
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5207
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5208
    .local v2, "type":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 5209
    goto/16 :goto_1174

    .line 5188
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_ac8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5191
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5192
    .local v9, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 5193
    .local v10, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 5194
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 5195
    .local v12, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 5196
    .local v16, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 5197
    .local v17, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5198
    goto/16 :goto_1174

    .line 5178
    .end local v8    # "serial":I
    .end local v9    # "category":I
    .end local v10    # "lockop":I
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "data_imsi":Ljava/lang/String;
    .end local v16    # "gid1":Ljava/lang/String;
    .end local v17    # "gid2":Ljava/lang/String;
    :sswitch_af7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5181
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5182
    .local v1, "category":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->queryNetworkLock(II)V

    .line 5183
    goto/16 :goto_1174

    .line 5167
    .end local v0    # "serial":I
    .end local v1    # "category":I
    :sswitch_b07
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5170
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;-><init>()V

    .line 5171
    .local v1, "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5172
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;)V

    .line 5173
    goto/16 :goto_1174

    .line 5158
    .end local v0    # "serial":I
    .end local v1    # "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    :sswitch_b1b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5161
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getCurrentUiccCardProvisioningStatus(I)V

    .line 5162
    goto/16 :goto_1174

    .line 5149
    .end local v0    # "serial":I
    :sswitch_b27
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5152
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->deactivateUiccCard(I)V

    .line 5153
    goto/16 :goto_1174

    .line 5140
    .end local v0    # "serial":I
    :sswitch_b33
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5142
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5143
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->activateUiccCard(I)V

    .line 5144
    goto/16 :goto_1174

    .line 5130
    .end local v0    # "serial":I
    :sswitch_b3f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5133
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5134
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setSimPower(II)V

    .line 5135
    goto/16 :goto_1174

    .line 5121
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_b4f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5123
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5124
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getIccid(I)V

    .line 5125
    goto/16 :goto_1174

    .line 5112
    .end local v0    # "serial":I
    :sswitch_b5b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5115
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getATR(I)V

    .line 5116
    goto/16 :goto_1174

    .line 5102
    .end local v0    # "serial":I
    :sswitch_b67
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5105
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5106
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->triggerModeSwitchByEcc(II)V

    .line 5107
    goto/16 :goto_1174

    .line 5092
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_b77
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5095
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5096
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setModemPower(IZ)V

    .line 5097
    goto/16 :goto_1174

    .line 5082
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_b87
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5084
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5085
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5086
    .local v1, "ready":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setPhonebookReady(II)V

    .line 5087
    goto/16 :goto_1174

    .line 5071
    .end local v0    # "serial":I
    .end local v1    # "ready":I
    :sswitch_b97
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5074
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5075
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5076
    .local v2, "endIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->readUPBAasList(III)V

    .line 5077
    goto/16 :goto_1174

    .line 5060
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_bab
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5063
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5064
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5065
    .local v2, "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->readUPBAnrEntry(III)V

    .line 5066
    goto/16 :goto_1174

    .line 5049
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_bbf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5052
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5053
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5054
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->readUPBSneEntry(III)V

    .line 5055
    goto/16 :goto_1174

    .line 5038
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_bd3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5041
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5042
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5043
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->readUPBEmailEntry(III)V

    .line 5044
    goto/16 :goto_1174

    .line 5027
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_be7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5030
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5031
    .local v1, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5032
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->queryUPBAvailable(III)V

    .line 5033
    goto/16 :goto_1174

    .line 5016
    .end local v0    # "serial":I
    .end local v1    # "eftype":I
    .end local v2    # "fileIndex":I
    :sswitch_bfb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5019
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;-><init>()V

    .line 5020
    .local v1, "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5021
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;)V

    .line 5022
    goto/16 :goto_1174

    .line 5005
    .end local v0    # "serial":I
    .end local v1    # "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    :sswitch_c0f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5008
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5009
    .local v1, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5010
    .local v2, "index2":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->readPhoneBookEntryExt(III)V

    .line 5011
    goto/16 :goto_1174

    .line 4994
    .end local v0    # "serial":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :sswitch_c23
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4997
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4998
    .local v1, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4999
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 5000
    goto/16 :goto_1174

    .line 4985
    .end local v0    # "serial":I
    .end local v1    # "storage":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    :sswitch_c37
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4987
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4988
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getPhoneBookMemStorage(I)V

    .line 4989
    goto/16 :goto_1174

    .line 4976
    .end local v0    # "serial":I
    :sswitch_c43
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4979
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getPhoneBookStringsLength(I)V

    .line 4980
    goto/16 :goto_1174

    .line 4965
    .end local v0    # "serial":I
    :sswitch_c4f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4968
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4969
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4970
    .local v2, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 4971
    goto/16 :goto_1174

    .line 4955
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_c63
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4957
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4958
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4959
    .restart local v1    # "adnIndex":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->readUPBGrpEntry(II)V

    .line 4960
    goto/16 :goto_1174

    .line 4944
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    :sswitch_c73
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4946
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4947
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4948
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4949
    .local v2, "endIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->readUPBGasList(III)V

    .line 4950
    goto/16 :goto_1174

    .line 4932
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_c87
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4935
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4936
    .local v1, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4937
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4938
    .local v3, "entryIndex":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->deleteUPBEntry(IIII)V

    .line 4939
    goto/16 :goto_1174

    .line 4922
    .end local v0    # "serial":I
    .end local v1    # "entryType":I
    .end local v2    # "adnIndex":I
    .end local v3    # "entryIndex":I
    :sswitch_c9f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4925
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4926
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 4927
    goto/16 :goto_1174

    .line 4913
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_caf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4915
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4916
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->queryUPBCapability(I)V

    .line 4917
    goto/16 :goto_1174

    .line 4901
    .end local v0    # "serial":I
    :sswitch_cbb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4903
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4904
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4905
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4906
    .local v2, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4907
    .local v3, "eIndex":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->readPhbEntry(IIII)V

    .line 4908
    goto/16 :goto_1174

    .line 4890
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "bIndex":I
    .end local v3    # "eIndex":I
    :sswitch_cd3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4893
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;-><init>()V

    .line 4894
    .local v1, "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4895
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->writePhbEntry(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;)V

    .line 4896
    goto/16 :goto_1174

    .line 4880
    .end local v0    # "serial":I
    .end local v1    # "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    :sswitch_ce7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4882
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4883
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4884
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->queryPhbStorageInfo(II)V

    .line 4885
    goto/16 :goto_1174

    .line 4871
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_cf7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4874
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getCallSubAddress(I)V

    .line 4875
    goto/16 :goto_1174

    .line 4861
    .end local v0    # "serial":I
    :sswitch_d03
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4864
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4865
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setCallSubAddress(IZ)V

    .line 4866
    goto/16 :goto_1174

    .line 4852
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_d13
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4855
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getEccNum(I)V

    .line 4856
    goto/16 :goto_1174

    .line 4841
    .end local v0    # "serial":I
    :sswitch_d1f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4843
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4844
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4845
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4846
    .local v2, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 4847
    goto/16 :goto_1174

    .line 4831
    .end local v0    # "serial":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "ecc_list_no_card":Ljava/lang/String;
    :sswitch_d33
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4834
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4835
    .local v1, "status":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setVoicePreferStatus(II)V

    .line 4836
    goto/16 :goto_1174

    .line 4821
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :sswitch_d43
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4823
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4824
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4825
    .local v1, "phoneType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->eccPreferredRat(II)V

    .line 4826
    goto/16 :goto_1174

    .line 4808
    .end local v0    # "serial":I
    .end local v1    # "phoneType":I
    :sswitch_d53
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4811
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4812
    .local v7, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4813
    .local v8, "enable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 4814
    .local v9, "airplaneMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 4815
    .local v10, "imsReg":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setEccMode(ILjava/lang/String;III)V

    .line 4816
    goto/16 :goto_1174

    .line 4795
    .end local v6    # "serial":I
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "enable":I
    .end local v9    # "airplaneMode":I
    .end local v10    # "imsReg":I
    :sswitch_d76
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4797
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4798
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4799
    .local v7, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4800
    .local v8, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 4801
    .local v9, "seqNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 4802
    .local v10, "cause":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setCallIndication(IIIII)V

    .line 4803
    goto/16 :goto_1174

    .line 4786
    .end local v6    # "serial":I
    .end local v7    # "mode":I
    .end local v8    # "callId":I
    .end local v9    # "seqNumber":I
    .end local v10    # "cause":I
    :sswitch_d99
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4788
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4789
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->hangupAll(I)V

    .line 4790
    goto/16 :goto_1174

    .line 4776
    .end local v0    # "serial":I
    :sswitch_da5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4779
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4780
    .local v1, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 4781
    goto/16 :goto_1174

    .line 4767
    .end local v0    # "serial":I
    .end local v1    # "userAgent":Ljava/lang/String;
    :sswitch_db5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4769
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4770
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->resetSuppServ(I)V

    .line 4771
    goto/16 :goto_1174

    .line 4758
    .end local v0    # "serial":I
    :sswitch_dc1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4761
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getXcapStatus(I)V

    .line 4762
    goto/16 :goto_1174

    .line 4749
    .end local v0    # "serial":I
    :sswitch_dcd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4751
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4752
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->cancelUssi(I)V

    .line 4753
    goto/16 :goto_1174

    .line 4739
    .end local v0    # "serial":I
    :sswitch_dd9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4741
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4742
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4743
    .local v1, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendUssi(ILjava/lang/String;)V

    .line 4744
    goto/16 :goto_1174

    .line 4726
    .end local v0    # "serial":I
    .end local v1    # "ussiString":Ljava/lang/String;
    :sswitch_de9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4729
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4730
    .local v7, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 4731
    .local v8, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 4732
    .local v9, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 4733
    .local v10, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 4734
    goto/16 :goto_1174

    .line 4715
    .end local v6    # "serial":I
    .end local v7    # "nafFqdn":Ljava/lang/String;
    .end local v8    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v9    # "forceRun":Z
    .end local v10    # "netId":I
    :sswitch_e0c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4718
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 4719
    .local v1, "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4720
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 4721
    goto/16 :goto_1174

    .line 4704
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :sswitch_e20
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4707
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 4708
    .restart local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4709
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 4710
    goto/16 :goto_1174

    .line 4694
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :sswitch_e34
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4696
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4697
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4698
    .local v1, "colrEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setColr(II)V

    .line 4699
    goto/16 :goto_1174

    .line 4684
    .end local v0    # "serial":I
    .end local v1    # "colrEnable":I
    :sswitch_e44
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4687
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4688
    .local v1, "colpEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setColp(II)V

    .line 4689
    goto/16 :goto_1174

    .line 4674
    .end local v0    # "serial":I
    .end local v1    # "colpEnable":I
    :sswitch_e54
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4677
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4678
    .local v1, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendCnap(ILjava/lang/String;)V

    .line 4679
    goto/16 :goto_1174

    .line 4665
    .end local v0    # "serial":I
    .end local v1    # "cnapssMessage":Ljava/lang/String;
    :sswitch_e64
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4668
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getColr(I)V

    .line 4669
    goto/16 :goto_1174

    .line 4656
    .end local v0    # "serial":I
    :sswitch_e70
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4658
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4659
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getColp(I)V

    .line 4660
    goto/16 :goto_1174

    .line 4646
    .end local v0    # "serial":I
    :sswitch_e7c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4649
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4650
    .local v1, "clipEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setClip(II)V

    .line 4651
    goto/16 :goto_1174

    .line 4633
    .end local v0    # "serial":I
    .end local v1    # "clipEnable":I
    :sswitch_e8c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4636
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4637
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 4638
    .local v8, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 4639
    .local v9, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 4640
    .local v10, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4641
    goto/16 :goto_1174

    .line 4623
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "oldPassword":Ljava/lang/String;
    .end local v9    # "newPassword":Ljava/lang/String;
    .end local v10    # "cfmPassword":Ljava/lang/String;
    :sswitch_eaf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4625
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4626
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4627
    .local v1, "phoneId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getRoamingEnable(II)V

    .line 4628
    goto/16 :goto_1174

    .line 4613
    .end local v0    # "serial":I
    .end local v1    # "phoneId":I
    :sswitch_ebf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4616
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4617
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 4618
    goto/16 :goto_1174

    .line 4603
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_ecf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4606
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4607
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 4608
    goto/16 :goto_1174

    .line 4594
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/lang/String;
    :sswitch_edf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4596
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4597
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setImsRegistrationReport(I)V

    .line 4598
    goto/16 :goto_1174

    .line 4583
    .end local v0    # "serial":I
    :sswitch_eeb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4586
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4587
    .local v1, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4588
    .local v2, "isVideoCall":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 4589
    goto/16 :goto_1174

    .line 4571
    .end local v0    # "serial":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "isVideoCall":Z
    :sswitch_eff
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4574
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4575
    .local v1, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4576
    .local v2, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4577
    .local v3, "timer":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setImsRtpReport(IIII)V

    .line 4578
    goto/16 :goto_1174

    .line 4559
    .end local v0    # "serial":I
    .end local v1    # "pdnId":I
    .end local v2    # "networkId":I
    .end local v3    # "timer":I
    :sswitch_f17
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4561
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4562
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4563
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4564
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4565
    .local v3, "status":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->imsBearerStateConfirm(IIII)V

    .line 4566
    goto/16 :goto_1174

    .line 4549
    .end local v0    # "serial":I
    .end local v1    # "aid":I
    .end local v2    # "action":I
    .end local v3    # "status":I
    :sswitch_f2f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4551
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4552
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4553
    .local v1, "callId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->forceReleaseCall(II)V

    .line 4554
    goto/16 :goto_1174

    .line 4538
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    :sswitch_f3f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4541
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 4542
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4543
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 4544
    goto/16 :goto_1174

    .line 4528
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_f53
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4530
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4531
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4532
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 4533
    goto/16 :goto_1174

    .line 4518
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_f63
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4521
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4522
    .restart local v1    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 4523
    goto/16 :goto_1174

    .line 4506
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_f73
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4508
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4509
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4510
    .local v1, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4511
    .local v2, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4512
    .local v3, "type":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 4513
    goto/16 :goto_1174

    .line 4495
    .end local v0    # "serial":I
    .end local v1    # "keys":Ljava/lang/String;
    .end local v2    # "values":Ljava/lang/String;
    .end local v3    # "type":I
    :sswitch_f8b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4498
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;-><init>()V

    .line 4499
    .local v1, "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4500
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;)V

    .line 4501
    goto/16 :goto_1174

    .line 4485
    .end local v0    # "serial":I
    .end local v1    # "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    :sswitch_f9f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4488
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4489
    .local v1, "wfcPreference":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setWfcProfile(II)V

    .line 4490
    goto/16 :goto_1174

    .line 4472
    .end local v0    # "serial":I
    .end local v1    # "wfcPreference":I
    :sswitch_faf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4474
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4475
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4476
    .local v7, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4477
    .local v8, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 4478
    .local v9, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 4479
    .local v10, "callId":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 4480
    goto/16 :goto_1174

    .line 4461
    .end local v6    # "serial":I
    .end local v7    # "controlType":I
    .end local v8    # "confCallId":I
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "callId":I
    :sswitch_fd2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4464
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4465
    .local v1, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4466
    .local v2, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 4467
    goto/16 :goto_1174

    .line 4451
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    .end local v2    # "provisionValue":Ljava/lang/String;
    :sswitch_fe6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4453
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4454
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4455
    .restart local v1    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 4456
    goto/16 :goto_1174

    .line 4436
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    :sswitch_ff6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4439
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 4440
    .local v9, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 4441
    .local v10, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 4442
    .local v11, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 4443
    .local v12, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 4444
    .local v16, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 4445
    .local v17, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setImscfg(IZZZZZZ)V

    .line 4446
    goto/16 :goto_1174

    .line 4426
    .end local v8    # "serial":I
    .end local v9    # "volteEnable":Z
    .end local v10    # "vilteEnable":Z
    .end local v11    # "vowifiEnable":Z
    .end local v12    # "viwifiEnable":Z
    .end local v16    # "smsEnable":Z
    .end local v17    # "eimsEnable":Z
    :sswitch_1025
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4429
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4430
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setImsVideoEnable(IZ)V

    .line 4431
    goto/16 :goto_1174

    .line 4416
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_1035
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4419
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4420
    .restart local v1    # "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setImsEnable(IZ)V

    .line 4421
    goto/16 :goto_1174

    .line 4406
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_1045
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4409
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4410
    .local v1, "cause":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->imsDeregNotification(II)V

    .line 4411
    goto/16 :goto_1174

    .line 4395
    .end local v0    # "serial":I
    .end local v1    # "cause":I
    :sswitch_1055
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4398
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4399
    .local v1, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4400
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->controlCall(III)V

    .line 4401
    goto/16 :goto_1174

    .line 4384
    .end local v0    # "serial":I
    .end local v1    # "controlType":I
    .end local v2    # "callId":I
    :sswitch_1069
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4387
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4388
    .local v1, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4389
    .local v2, "type":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 4390
    goto/16 :goto_1174

    .line 4373
    .end local v0    # "serial":I
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_107d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4376
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4377
    .local v1, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4378
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->videoCallAccept(III)V

    .line 4379
    goto/16 :goto_1174

    .line 4361
    .end local v0    # "serial":I
    .end local v1    # "videoMode":I
    .end local v2    # "callId":I
    :sswitch_1091
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;

    move-result-object v0

    .line 4364
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;

    move-result-object v2

    .line 4365
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsRsu(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;)V

    .line 4366
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4367
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4368
    goto/16 :goto_1174

    .line 4350
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;
    :sswitch_10af
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;

    move-result-object v0

    .line 4353
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsCap(Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;)V

    .line 4354
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4356
    goto/16 :goto_1174

    .line 4339
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;
    :sswitch_10c5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;

    move-result-object v0

    .line 4342
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;)V

    .line 4343
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4344
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4345
    goto/16 :goto_1174

    .line 4327
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;
    :sswitch_10db
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4329
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;

    move-result-object v0

    .line 4330
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;

    move-result-object v2

    .line 4331
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsEm(Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;)V

    .line 4332
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4333
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4334
    goto/16 :goto_1174

    .line 4315
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;
    :sswitch_10f9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;

    move-result-object v0

    .line 4318
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;

    move-result-object v2

    .line 4319
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;)V

    .line 4320
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4321
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4322
    goto :goto_1174

    .line 4303
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;
    :sswitch_1116
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;

    move-result-object v0

    .line 4306
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;

    move-result-object v2

    .line 4307
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;)V

    .line 4308
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4309
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4310
    goto :goto_1174

    .line 4291
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;
    :sswitch_1133
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;

    move-result-object v0

    .line 4294
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;

    move-result-object v2

    .line 4295
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;)V

    .line 4296
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4298
    goto :goto_1174

    .line 4279
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;
    :sswitch_1150
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;

    move-result-object v0

    .line 4282
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;

    move-result-object v2

    .line 4283
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;)V

    .line 4284
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4285
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4286
    goto :goto_1174

    .line 4271
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
    :sswitch_116d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4273
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->responseAcknowledgementMtk()V

    .line 4274
    nop

    .line 6661
    :goto_1174
    return-void

    nop

    :sswitch_data_1176
    .sparse-switch
        0x1 -> :sswitch_116d
        0x2 -> :sswitch_1150
        0x3 -> :sswitch_1133
        0x4 -> :sswitch_1116
        0x5 -> :sswitch_10f9
        0x6 -> :sswitch_10db
        0x7 -> :sswitch_10c5
        0x8 -> :sswitch_10af
        0x9 -> :sswitch_1091
        0xa -> :sswitch_107d
        0xb -> :sswitch_1069
        0xc -> :sswitch_1055
        0xd -> :sswitch_1045
        0xe -> :sswitch_1035
        0xf -> :sswitch_1025
        0x10 -> :sswitch_ff6
        0x11 -> :sswitch_fe6
        0x12 -> :sswitch_fd2
        0x13 -> :sswitch_faf
        0x14 -> :sswitch_f9f
        0x15 -> :sswitch_f8b
        0x16 -> :sswitch_f73
        0x17 -> :sswitch_f63
        0x18 -> :sswitch_f53
        0x19 -> :sswitch_f3f
        0x1a -> :sswitch_f2f
        0x1b -> :sswitch_f17
        0x1c -> :sswitch_eff
        0x1d -> :sswitch_eeb
        0x1e -> :sswitch_edf
        0x1f -> :sswitch_ecf
        0x20 -> :sswitch_ebf
        0x21 -> :sswitch_eaf
        0x22 -> :sswitch_e8c
        0x23 -> :sswitch_e7c
        0x24 -> :sswitch_e70
        0x25 -> :sswitch_e64
        0x26 -> :sswitch_e54
        0x27 -> :sswitch_e44
        0x28 -> :sswitch_e34
        0x29 -> :sswitch_e20
        0x2a -> :sswitch_e0c
        0x2b -> :sswitch_de9
        0x2c -> :sswitch_dd9
        0x2d -> :sswitch_dcd
        0x2e -> :sswitch_dc1
        0x2f -> :sswitch_db5
        0x30 -> :sswitch_da5
        0x31 -> :sswitch_d99
        0x32 -> :sswitch_d76
        0x33 -> :sswitch_d53
        0x34 -> :sswitch_d43
        0x35 -> :sswitch_d33
        0x36 -> :sswitch_d1f
        0x37 -> :sswitch_d13
        0x38 -> :sswitch_d03
        0x39 -> :sswitch_cf7
        0x3a -> :sswitch_ce7
        0x3b -> :sswitch_cd3
        0x3c -> :sswitch_cbb
        0x3d -> :sswitch_caf
        0x3e -> :sswitch_c9f
        0x3f -> :sswitch_c87
        0x40 -> :sswitch_c73
        0x41 -> :sswitch_c63
        0x42 -> :sswitch_c4f
        0x43 -> :sswitch_c43
        0x44 -> :sswitch_c37
        0x45 -> :sswitch_c23
        0x46 -> :sswitch_c0f
        0x47 -> :sswitch_bfb
        0x48 -> :sswitch_be7
        0x49 -> :sswitch_bd3
        0x4a -> :sswitch_bbf
        0x4b -> :sswitch_bab
        0x4c -> :sswitch_b97
        0x4d -> :sswitch_b87
        0x4e -> :sswitch_b77
        0x4f -> :sswitch_b67
        0x50 -> :sswitch_b5b
        0x51 -> :sswitch_b4f
        0x52 -> :sswitch_b3f
        0x53 -> :sswitch_b33
        0x54 -> :sswitch_b27
        0x55 -> :sswitch_b1b
        0x56 -> :sswitch_b07
        0x57 -> :sswitch_af7
        0x58 -> :sswitch_ac8
        0x59 -> :sswitch_ab4
        0x5a -> :sswitch_a9c
        0x5b -> :sswitch_a74
        0x5c -> :sswitch_a68
        0x5d -> :sswitch_a54
        0x5e -> :sswitch_a48
        0x5f -> :sswitch_a38
        0x60 -> :sswitch_a24
        0x61 -> :sswitch_a14
        0x62 -> :sswitch_a08
        0x63 -> :sswitch_9fc
        0x64 -> :sswitch_9e8
        0x65 -> :sswitch_9d4
        0x66 -> :sswitch_9c0
        0x67 -> :sswitch_9b0
        0x68 -> :sswitch_9a0
        0x69 -> :sswitch_990
        0x6a -> :sswitch_97c
        0x6b -> :sswitch_970
        0x6c -> :sswitch_958
        0x6d -> :sswitch_94c
        0x6e -> :sswitch_940
        0x6f -> :sswitch_934
        0x70 -> :sswitch_928
        0x71 -> :sswitch_91c
        0x72 -> :sswitch_904
        0x73 -> :sswitch_8f8
        0x74 -> :sswitch_8e8
        0x75 -> :sswitch_8b9
        0x76 -> :sswitch_8a5
        0x77 -> :sswitch_891
        0x78 -> :sswitch_86e
        0x79 -> :sswitch_85e
        0x7a -> :sswitch_84e
        0x7b -> :sswitch_82b
        0x7c -> :sswitch_81b
        0x7d -> :sswitch_80b
        0x7e -> :sswitch_7fb
        0x7f -> :sswitch_7eb
        0x80 -> :sswitch_7df
        0x81 -> :sswitch_7d3
        0x82 -> :sswitch_7bb
        0x83 -> :sswitch_7a3
        0x84 -> :sswitch_793
        0x85 -> :sswitch_783
        0x86 -> :sswitch_76b
        0x87 -> :sswitch_75b
        0x88 -> :sswitch_74f
        0x89 -> :sswitch_73f
        0x8a -> :sswitch_72f
        0x8b -> :sswitch_71f
        0x8c -> :sswitch_70f
        0x8d -> :sswitch_6f7
        0x8e -> :sswitch_6c8
        0x8f -> :sswitch_6b4
        0x90 -> :sswitch_670
        0x91 -> :sswitch_658
        0x92 -> :sswitch_64c
        0x93 -> :sswitch_5fa
        0x94 -> :sswitch_5ea
        0x95 -> :sswitch_5bb
        0x96 -> :sswitch_5a3
        0x97 -> :sswitch_58b
        0x98 -> :sswitch_57f
        0x99 -> :sswitch_56f
        0x9a -> :sswitch_54c
        0x9b -> :sswitch_538
        0x9c -> :sswitch_524
        0x9d -> :sswitch_514
        0x9e -> :sswitch_504
        0x9f -> :sswitch_4f4
        0xa0 -> :sswitch_4e4
        0xa1 -> :sswitch_4d8
        0xa2 -> :sswitch_4c8
        0xa3 -> :sswitch_4bc
        0xa4 -> :sswitch_4ac
        0xa5 -> :sswitch_498
        0xa6 -> :sswitch_488
        0xa7 -> :sswitch_478
        0xa8 -> :sswitch_464
        0xa9 -> :sswitch_44c
        0xaa -> :sswitch_434
        0xab -> :sswitch_420
        0xac -> :sswitch_40c
        0xad -> :sswitch_3fc
        0xae -> :sswitch_3e8
        0xaf -> :sswitch_3d0
        0xb0 -> :sswitch_3bc
        0xb1 -> :sswitch_3a8
        0xb2 -> :sswitch_39c
        0xb3 -> :sswitch_394
        0xb4 -> :sswitch_380
        0xb5 -> :sswitch_370
        0xb6 -> :sswitch_364
        0xb7 -> :sswitch_354
        0xb8 -> :sswitch_344
        0xb9 -> :sswitch_334
        0xba -> :sswitch_324
        0xbb -> :sswitch_314
        0xbc -> :sswitch_304
        0xbd -> :sswitch_2f4
        0xbe -> :sswitch_2e4
        0xbf -> :sswitch_2d4
        0xc0 -> :sswitch_2c8
        0xc1 -> :sswitch_2a5
        0xc2 -> :sswitch_28d
        0xc3 -> :sswitch_275
        0xc4 -> :sswitch_261
        0xc5 -> :sswitch_249
        0xc6 -> :sswitch_239
        0xc7 -> :sswitch_225
        0xc8 -> :sswitch_211
        0xc9 -> :sswitch_205
        0xca -> :sswitch_1f5
        0xcb -> :sswitch_1d7
        0xcc -> :sswitch_1c3
        0xcd -> :sswitch_1b3
        0xce -> :sswitch_19b
        0xcf -> :sswitch_187
        0xd0 -> :sswitch_177
        0xd1 -> :sswitch_163
        0xd2 -> :sswitch_14f
        0xd3 -> :sswitch_127
        0xd4 -> :sswitch_e3
        0xd5 -> :sswitch_d1
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
        0xf485348 -> :sswitch_42
        0xf494e54 -> :sswitch_3a
        0xf4c5444 -> :sswitch_38
        0xf504e47 -> :sswitch_2a
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 4222
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 4250
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.2::IMtkRadioEx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4251
    return-object p0

    .line 4253
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

    .line 4257
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->registerService(Ljava/lang/String;)V

    .line 4258
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 4212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 4244
    const/4 v0, 0x1

    return v0
.end method
