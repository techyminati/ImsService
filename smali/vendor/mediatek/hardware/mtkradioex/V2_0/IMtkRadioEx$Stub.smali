.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioEx.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6237
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 6240
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

    .line 6253
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 6290
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 6291
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 6292
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 6293
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 6294
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

    .line 6265
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
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

    :array_34
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6245
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 6259
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 6278
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 6300
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 6302
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

    .line 6330
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v0, "android.hidl.base@1.0::IBase"

    const/4 v1, 0x0

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    sparse-switch p1, :sswitch_data_1164

    goto/16 :goto_1162

    .line 8701
    :sswitch_10
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8703
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->notifySyspropsChanged()V

    .line 8704
    goto/16 :goto_1162

    .line 8690
    :sswitch_18
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8692
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 8693
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8694
    invoke-virtual {v0, v15}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 8695
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8696
    goto/16 :goto_1162

    .line 8680
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8682
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->ping()V

    .line 8683
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8684
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8685
    goto/16 :goto_1162

    .line 8675
    :sswitch_38
    goto/16 :goto_1162

    .line 8667
    :sswitch_3a
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8669
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setHALInstrumentation()V

    .line 8670
    goto/16 :goto_1162

    .line 8633
    :sswitch_42
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8635
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8636
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8638
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 8640
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8641
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 8642
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 8643
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 8644
    .local v1, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v3, :cond_8a

    .line 8646
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 8647
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 8649
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_82

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_82

    .line 8653
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 8654
    nop

    .line 8644
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 8650
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 8657
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 8659
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v15, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 8661
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8662
    goto/16 :goto_1162

    .line 8622
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8624
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 8625
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8626
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 8627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8628
    goto/16 :goto_1162

    .line 8610
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 8613
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8614
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 8615
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8617
    goto/16 :goto_1162

    .line 8599
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {v14, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8601
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 8602
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8603
    invoke-virtual {v15, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 8604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8605
    goto/16 :goto_1162

    .line 8581
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8583
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 8584
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 8585
    .local v12, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 8586
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 8587
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 8588
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 8589
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 8590
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 8591
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 8592
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 8593
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

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 8594
    goto/16 :goto_1162

    .line 8567
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
    :sswitch_115
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 8570
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8571
    .local v8, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 8572
    .local v9, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8573
    .local v10, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 8574
    .local v11, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 8575
    .local v12, "mtuSize":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 8576
    goto/16 :goto_1162

    .line 8556
    .end local v7    # "serial":I
    .end local v8    # "ifName":Ljava/lang/String;
    .end local v9    # "associated":I
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "apMac":Ljava/lang/String;
    .end local v12    # "mtuSize":I
    :sswitch_13d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8559
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8560
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8561
    .local v2, "isWifiEnabled":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendWifiEnabled(ILjava/lang/String;I)V

    .line 8562
    goto/16 :goto_1162

    .line 8545
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    :sswitch_151
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8548
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;-><init>()V

    .line 8549
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 8550
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendRsuRequest(ILvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;)V

    .line 8551
    goto/16 :goto_1162

    .line 8535
    .end local v0    # "serial":I
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuRequestInfo;
    :sswitch_165
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8538
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8539
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    .line 8540
    goto/16 :goto_1162

    .line 8524
    .end local v0    # "serial":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_175
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8527
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8528
    .local v1, "sar_cmd_type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8529
    .local v2, "sar_parameter":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendSarIndicator(IILjava/lang/String;)V

    .line 8530
    goto/16 :goto_1162

    .line 8512
    .end local v0    # "serial":I
    .end local v1    # "sar_cmd_type":I
    .end local v2    # "sar_parameter":Ljava/lang/String;
    :sswitch_189
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8515
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8516
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8517
    .local v2, "tGear":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8518
    .local v3, "lGear":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setSmartSceneSwitch(IIII)V

    .line 8519
    goto/16 :goto_1162

    .line 8502
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "tGear":I
    .end local v3    # "lGear":I
    :sswitch_1a1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8505
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8506
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getSmartRatSwitch(II)V

    .line 8507
    goto/16 :goto_1162

    .line 8491
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_1b1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8494
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8495
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8496
    .local v2, "rat":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->smartRatSwitch(III)V

    .line 8497
    goto/16 :goto_1162

    .line 8479
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "rat":I
    :sswitch_1c5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8481
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;

    move-result-object v0

    .line 8482
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;

    move-result-object v2

    .line 8483
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsSmartRatSwitch(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;)V

    .line 8484
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 8485
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 8486
    goto/16 :goto_1162

    .line 8469
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISmartRatSwitchRadioIndication;
    :sswitch_1e3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8471
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8472
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8473
    .local v1, "ulSpeed":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setMaxUlSpeed(II)V

    .line 8474
    goto/16 :goto_1162

    .line 8460
    .end local v0    # "serial":I
    .end local v1    # "ulSpeed":I
    :sswitch_1f3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8462
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8463
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getDeactivateNrScgCommunication(I)V

    .line 8464
    goto/16 :goto_1162

    .line 8449
    .end local v0    # "serial":I
    :sswitch_1ff
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8452
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 8453
    .local v1, "deactivate":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 8454
    .local v2, "allowSCGAdd":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->deactivateNrScgCommunication(IZZ)V

    .line 8455
    goto/16 :goto_1162

    .line 8438
    .end local v0    # "serial":I
    .end local v1    # "deactivate":Z
    .end local v2    # "allowSCGAdd":Z
    :sswitch_213
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8441
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8442
    .local v1, "approve":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8443
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->eccRedialApprove(III)V

    .line 8444
    goto/16 :goto_1162

    .line 8428
    .end local v0    # "serial":I
    .end local v1    # "approve":I
    .end local v2    # "callId":I
    :sswitch_227
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8431
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8432
    .local v1, "uid":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->abortCertificate(II)V

    .line 8433
    goto/16 :goto_1162

    .line 8416
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    :sswitch_237
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8419
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8420
    .local v1, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8421
    .local v2, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8422
    .local v3, "toActive":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->enableCapabaility(ILjava/lang/String;II)V

    .line 8423
    goto/16 :goto_1162

    .line 8405
    .end local v0    # "serial":I
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "toActive":I
    :sswitch_24f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8407
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8408
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8409
    .local v1, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8410
    .local v2, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->routeAuthMessage(IILjava/util/ArrayList;)V

    .line 8411
    goto/16 :goto_1162

    .line 8393
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_263
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8396
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8397
    .restart local v1    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8398
    .local v2, "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 8399
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->routeCertificate(IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 8400
    goto/16 :goto_1162

    .line 8381
    .end local v0    # "serial":I
    .end local v1    # "uid":I
    .end local v2    # "cert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_27b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8384
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8385
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8386
    .local v2, "num":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 8387
    .local v3, "timer":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getSuggestedPlmnList(IIII)V

    .line 8388
    goto/16 :goto_1162

    .line 8368
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "num":I
    .end local v3    # "timer":I
    :sswitch_293
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 8371
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 8372
    .local v7, "registerQuality":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 8373
    .local v8, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 8374
    .local v9, "thresholdValues":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 8375
    .local v10, "triggerTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->registerCellQltyReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8376
    goto/16 :goto_1162

    .line 8359
    .end local v6    # "serial":I
    .end local v7    # "registerQuality":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "thresholdValues":Ljava/lang/String;
    .end local v10    # "triggerTime":Ljava/lang/String;
    :sswitch_2b6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8362
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getDsdaStatus(I)V

    .line 8363
    goto/16 :goto_1162

    .line 8349
    .end local v0    # "serial":I
    :sswitch_2c2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8351
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8352
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 8353
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->enableDsdaIndication(IZ)V

    .line 8354
    goto/16 :goto_1162

    .line 8339
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_2d2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8342
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8343
    .local v1, "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setKeepAliveByIpData(ILjava/lang/String;)V

    .line 8344
    goto/16 :goto_1162

    .line 8329
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_2e2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8332
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8333
    .restart local v1    # "config":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setKeepAliveByPDCPCtrlPDU(ILjava/lang/String;)V

    .line 8334
    goto/16 :goto_1162

    .line 8319
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/lang/String;
    :sswitch_2f2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8322
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8323
    .local v1, "interval":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setIgnoreSameNumberInterval(II)V

    .line 8324
    goto/16 :goto_1162

    .line 8309
    .end local v0    # "serial":I
    .end local v1    # "interval":I
    :sswitch_302
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8312
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8313
    .local v1, "timer":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setCallValidTimer(II)V

    .line 8314
    goto/16 :goto_1162

    .line 8299
    .end local v0    # "serial":I
    .end local v1    # "timer":I
    :sswitch_312
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8301
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8302
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8303
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setGwsdMode(ILjava/util/ArrayList;)V

    .line 8304
    goto/16 :goto_1162

    .line 8289
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_322
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8292
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8293
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setImsCallMode(II)V

    .line 8294
    goto/16 :goto_1162

    .line 8279
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_332
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8282
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8283
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setSipHeaderReport(ILjava/util/ArrayList;)V

    .line 8284
    goto/16 :goto_1162

    .line 8269
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_342
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8272
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 8273
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setSipHeader(ILjava/util/ArrayList;)V

    .line 8274
    goto/16 :goto_1162

    .line 8260
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_352
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8263
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getVoiceDomainPreference(I)V

    .line 8264
    goto/16 :goto_1162

    .line 8250
    .end local v0    # "serial":I
    :sswitch_35e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8253
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 8254
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->enableCAPlusBandWidthFilter(IZ)V

    .line 8255
    goto/16 :goto_1162

    .line 8239
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_36e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8242
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8243
    .local v1, "mcc":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8244
    .local v2, "mnc":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getPlmnNameFromSE13Table(III)V

    .line 8245
    goto/16 :goto_1162

    .line 8231
    .end local v0    # "serial":I
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :sswitch_382
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8233
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->notifyImsServiceReady()V

    .line 8234
    goto/16 :goto_1162

    .line 8222
    :sswitch_38a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8225
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->queryVopsStatus(I)V

    .line 8226
    goto/16 :goto_1162

    .line 8211
    .end local v0    # "serial":I
    :sswitch_396
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8214
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8215
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8216
    .local v2, "audio":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->toggleRttAudioIndication(III)V

    .line 8217
    goto/16 :goto_1162

    .line 8200
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "audio":I
    :sswitch_3aa
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8203
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8204
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8205
    .local v2, "result":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->rttModifyRequestResponse(III)V

    .line 8206
    goto/16 :goto_1162

    .line 8188
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "result":I
    :sswitch_3be
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8191
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8192
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8193
    .local v2, "lenOfString":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 8194
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendRttText(IIILjava/lang/String;)V

    .line 8195
    goto/16 :goto_1162

    .line 8177
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "lenOfString":I
    .end local v3    # "text":Ljava/lang/String;
    :sswitch_3d6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8179
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8180
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8181
    .restart local v1    # "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8182
    .local v2, "newMode":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendRttModifyRequest(III)V

    .line 8183
    goto/16 :goto_1162

    .line 8167
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "newMode":I
    :sswitch_3ea
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8170
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8171
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setRttMode(II)V

    .line 8172
    goto/16 :goto_1162

    .line 8156
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_3fa
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8158
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8159
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8160
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8161
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setVendorSetting(IILjava/lang/String;)V

    .line 8162
    goto/16 :goto_1162

    .line 8145
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_40e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8147
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8148
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8149
    .local v1, "reqType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 8150
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendSubsidyLockRequest(IILjava/util/ArrayList;)V

    .line 8151
    goto/16 :goto_1162

    .line 8135
    .end local v0    # "serial":I
    .end local v1    # "reqType":I
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_422
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;

    move-result-object v0

    .line 8138
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;

    move-result-object v1

    .line 8139
    .local v1, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsRcs(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;)V

    .line 8140
    goto/16 :goto_1162

    .line 8125
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioResponse;
    .end local v1    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRcsRadioIndication;
    :sswitch_43a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8127
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;

    move-result-object v0

    .line 8128
    .local v0, "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;

    move-result-object v1

    .line 8129
    .local v1, "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsSubsidyLock(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;)V

    .line 8130
    goto/16 :goto_1162

    .line 8114
    .end local v0    # "sublockResp":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockResponse;
    .end local v1    # "sublockInd":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISubsidyLockIndication;
    :sswitch_452
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8116
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8117
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8118
    .local v1, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 8119
    .local v2, "reason":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->hangupWithReason(III)V

    .line 8120
    goto/16 :goto_1162

    .line 8104
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    .end local v2    # "reason":I
    :sswitch_466
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8107
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8108
    .local v1, "state":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->notifyEPDGScreenState(II)V

    .line 8109
    goto/16 :goto_1162

    .line 8094
    .end local v0    # "serial":I
    .end local v1    # "state":I
    :sswitch_476
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8097
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8098
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->supplyDeviceNetworkDepersonalization(ILjava/lang/String;)V

    .line 8099
    goto/16 :goto_1162

    .line 8083
    .end local v0    # "serial":I
    .end local v1    # "pwd":Ljava/lang/String;
    :sswitch_486
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8086
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 8087
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8088
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setSuppServProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 8089
    goto/16 :goto_1162

    .line 8073
    .end local v0    # "serial":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_49a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8076
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8077
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setTxPowerStatus(II)V

    .line 8078
    goto/16 :goto_1162

    .line 8064
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_4aa
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8067
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getLteReleaseVersion(I)V

    .line 8068
    goto/16 :goto_1162

    .line 8054
    .end local v0    # "serial":I
    :sswitch_4b6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8057
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8058
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setLteReleaseVersion(II)V

    .line 8059
    goto/16 :goto_1162

    .line 8045
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_4c6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8048
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->resetAllConnections(I)V

    .line 8049
    goto/16 :goto_1162

    .line 8035
    .end local v0    # "serial":I
    :sswitch_4d2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8038
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8039
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->dataConnectionDetach(II)V

    .line 8040
    goto/16 :goto_1162

    .line 8025
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_4e2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8027
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8028
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8029
    .restart local v1    # "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->dataConnectionAttach(II)V

    .line 8030
    goto/16 :goto_1162

    .line 8015
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_4f2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8017
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8018
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8019
    .local v1, "featureId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getImsCfgResourceCapValue(II)V

    .line 8020
    goto/16 :goto_1162

    .line 8005
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    :sswitch_502
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 8007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 8008
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 8009
    .local v1, "configId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getImsCfgProvisionValue(II)V

    .line 8010
    goto/16 :goto_1162

    .line 7994
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    :sswitch_512
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7997
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7998
    .restart local v1    # "configId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7999
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 8000
    goto/16 :goto_1162

    .line 7983
    .end local v0    # "serial":I
    .end local v1    # "configId":I
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_526
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7985
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7986
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7987
    .local v1, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7988
    .local v2, "network":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getImsCfgFeatureValue(III)V

    .line 7989
    goto/16 :goto_1162

    .line 7970
    .end local v0    # "serial":I
    .end local v1    # "featureId":I
    .end local v2    # "network":I
    :sswitch_53a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7972
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7973
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7974
    .local v7, "featureId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7975
    .local v8, "network":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7976
    .local v9, "value":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7977
    .local v10, "isLast":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setImsCfgFeatureValue(IIIII)V

    .line 7978
    goto/16 :goto_1162

    .line 7960
    .end local v6    # "serial":I
    .end local v7    # "featureId":I
    .end local v8    # "network":I
    .end local v9    # "value":I
    .end local v10    # "isLast":I
    :sswitch_55d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7962
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7963
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7964
    .local v1, "enable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setImsBearerNotification(II)V

    .line 7965
    goto/16 :goto_1162

    .line 7951
    .end local v0    # "serial":I
    .end local v1    # "enable":I
    :sswitch_56d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7953
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7954
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getApcInfo(I)V

    .line 7955
    goto/16 :goto_1162

    .line 7939
    .end local v0    # "serial":I
    :sswitch_579
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7941
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7942
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7943
    .local v1, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7944
    .local v2, "reportMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7945
    .local v3, "interval":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setApcMode(IIII)V

    .line 7946
    goto/16 :goto_1162

    .line 7927
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "reportMode":I
    .end local v3    # "interval":I
    :sswitch_591
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7929
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7930
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7931
    .local v1, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7932
    .local v2, "latency":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7933
    .local v3, "pktloss":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setWifiPingResult(IIII)V

    .line 7934
    goto/16 :goto_1162

    .line 7912
    .end local v0    # "serial":I
    .end local v1    # "rat":I
    .end local v2    # "latency":I
    .end local v3    # "pktloss":I
    :sswitch_5a9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7914
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7915
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 7916
    .local v9, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 7917
    .local v10, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 7918
    .local v11, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7919
    .local v12, "srcPort":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 7920
    .local v16, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 7921
    .local v17, "dstPort":I
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setNattKeepAliveStatus(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;I)V

    .line 7922
    goto/16 :goto_1162

    .line 7902
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "enable":Z
    .end local v11    # "srcIp":Ljava/lang/String;
    .end local v12    # "srcPort":I
    .end local v16    # "dstIp":Ljava/lang/String;
    .end local v17    # "dstPort":I
    :sswitch_5d8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7904
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7905
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7906
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setEmergencyAddressId(ILjava/lang/String;)V

    .line 7907
    goto/16 :goto_1162

    .line 7882
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :sswitch_5e8
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 7885
    .local v16, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 7886
    .local v17, "accountId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 7887
    .local v18, "broadcastFlag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 7888
    .local v19, "latitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 7889
    .local v20, "longitude":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 7890
    .local v21, "accuracy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 7891
    .local v22, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 7892
    .local v23, "city":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 7893
    .local v24, "state":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 7894
    .local v25, "zip":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 7895
    .local v26, "countryCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 7896
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

    invoke-virtual/range {v0 .. v12}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7897
    goto/16 :goto_1162

    .line 7873
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
    :sswitch_63a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7875
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7876
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->querySsacStatus(I)V

    .line 7877
    goto/16 :goto_1162

    .line 7861
    .end local v0    # "serial":I
    :sswitch_646
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7864
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7865
    .local v1, "setting":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7866
    .local v2, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7867
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setWfcConfig(IILjava/lang/String;Ljava/lang/String;)V

    .line 7868
    goto/16 :goto_1162

    .line 7843
    .end local v0    # "serial":I
    .end local v1    # "setting":I
    .end local v2    # "ifName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :sswitch_65e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7845
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7846
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 7847
    .local v12, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 7848
    .local v16, "ipv4Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 7849
    .local v17, "ipv6Addr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 7850
    .local v18, "ipv4PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 7851
    .local v19, "ipv6PrefixLen":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 7852
    .local v20, "ipv4Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 7853
    .local v21, "ipv6Gateway":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v22

    .line 7854
    .local v22, "dnsCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 7855
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

    invoke-virtual/range {v0 .. v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setWifiIpAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 7856
    goto/16 :goto_1162

    .line 7832
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
    :sswitch_6a2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7835
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7836
    .local v1, "rssi":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7837
    .local v2, "snr":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setWifiSignalLevel(III)V

    .line 7838
    goto/16 :goto_1162

    .line 7817
    .end local v0    # "serial":I
    .end local v1    # "rssi":I
    .end local v2    # "snr":I
    :sswitch_6b6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7819
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7820
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 7821
    .restart local v9    # "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7822
    .local v10, "associated":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 7823
    .local v11, "ssid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 7824
    .local v12, "apMac":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 7825
    .local v16, "mtuSize":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 7826
    .local v17, "ueMac":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setWifiAssociated(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 7827
    goto/16 :goto_1162

    .line 7805
    .end local v8    # "serial":I
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "associated":I
    .end local v11    # "ssid":Ljava/lang/String;
    .end local v12    # "apMac":Ljava/lang/String;
    .end local v16    # "mtuSize":I
    .end local v17    # "ueMac":Ljava/lang/String;
    :sswitch_6e5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7808
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7809
    .local v1, "ifName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7810
    .local v2, "isWifiEnabled":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7811
    .local v3, "isFlightModeOn":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setWifiEnabled(ILjava/lang/String;II)V

    .line 7812
    goto/16 :goto_1162

    .line 7795
    .end local v0    # "serial":I
    .end local v1    # "ifName":Ljava/lang/String;
    .end local v2    # "isWifiEnabled":I
    .end local v3    # "isFlightModeOn":I
    :sswitch_6fd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7797
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7798
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7799
    .local v1, "vdp":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setVoiceDomainPreference(II)V

    .line 7800
    goto/16 :goto_1162

    .line 7785
    .end local v0    # "serial":I
    .end local v1    # "vdp":I
    :sswitch_70d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7787
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7788
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7789
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setRemoveRestrictEutranMode(II)V

    .line 7790
    goto/16 :goto_1162

    .line 7775
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_71d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7778
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7779
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->resetMdDataRetryCount(ILjava/lang/String;)V

    .line 7780
    goto/16 :goto_1162

    .line 7765
    .end local v0    # "serial":I
    .end local v1    # "apn":Ljava/lang/String;
    :sswitch_72d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7768
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7769
    .local v1, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->syncDataSettingsToMd(ILjava/util/ArrayList;)V

    .line 7770
    goto/16 :goto_1162

    .line 7756
    .end local v0    # "serial":I
    .end local v1    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_73d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7759
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->restartRILD(I)V

    .line 7760
    goto/16 :goto_1162

    .line 7746
    .end local v0    # "serial":I
    :sswitch_749
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7749
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7750
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendAtciRequest(ILjava/util/ArrayList;)V

    .line 7751
    goto/16 :goto_1162

    .line 7736
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_759
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;

    move-result-object v0

    .line 7739
    .local v0, "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;

    move-result-object v1

    .line 7740
    .local v1, "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsForAtci(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;)V

    .line 7741
    goto/16 :goto_1162

    .line 7726
    .end local v0    # "atciResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciResponse;
    .end local v1    # "atciIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAtciIndication;
    :sswitch_771
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7728
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7729
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7730
    .local v1, "resultCode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->handleStkCallSetupRequestFromSimWithResCode(II)V

    .line 7731
    goto/16 :goto_1162

    .line 7716
    .end local v0    # "serial":I
    .end local v1    # "resultCode":I
    :sswitch_781
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7719
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7720
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setTrm(II)V

    .line 7721
    goto/16 :goto_1162

    .line 7704
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_791
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7706
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7707
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7708
    .restart local v1    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7709
    .local v2, "param1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7710
    .local v3, "param2":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setFdMode(IIII)V

    .line 7711
    goto/16 :goto_1162

    .line 7692
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    .end local v2    # "param1":I
    .end local v3    # "param2":I
    :sswitch_7a9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7695
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7696
    .local v1, "index":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7697
    .local v2, "numeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7698
    .local v3, "nAct":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setPOLEntry(IILjava/lang/String;I)V

    .line 7699
    goto/16 :goto_1162

    .line 7683
    .end local v0    # "serial":I
    .end local v1    # "index":I
    .end local v2    # "numeric":Ljava/lang/String;
    .end local v3    # "nAct":I
    :sswitch_7c1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7686
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getCurrentPOLList(I)V

    .line 7687
    goto/16 :goto_1162

    .line 7674
    .end local v0    # "serial":I
    :sswitch_7cd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7677
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getPOLCapability(I)V

    .line 7678
    goto/16 :goto_1162

    .line 7664
    .end local v0    # "serial":I
    :sswitch_7d9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7667
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7668
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getRxTestResult(II)V

    .line 7669
    goto/16 :goto_1162

    .line 7654
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_7e9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7657
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7658
    .local v1, "antType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setRxTestConfig(II)V

    .line 7659
    goto/16 :goto_1162

    .line 7644
    .end local v0    # "serial":I
    .end local v1    # "antType":I
    :sswitch_7f9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7646
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7647
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7648
    .local v1, "sleepDuration":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setBgsrchDeltaSleepTimer(II)V

    .line 7649
    goto/16 :goto_1162

    .line 7634
    .end local v0    # "serial":I
    .end local v1    # "sleepDuration":I
    :sswitch_809
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7636
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7637
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7638
    .local v1, "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setSearchRat(ILjava/util/ArrayList;)V

    .line 7639
    goto/16 :goto_1162

    .line 7621
    .end local v0    # "serial":I
    .end local v1    # "rat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_819
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7623
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7624
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7625
    .local v7, "operation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7626
    .local v8, "plmn_id":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7627
    .local v9, "rat":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v10

    .line 7628
    .local v10, "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setSearchStoredFreqInfo(IIIILjava/util/ArrayList;)V

    .line 7629
    goto/16 :goto_1162

    .line 7611
    .end local v6    # "serial":I
    .end local v7    # "operation":I
    .end local v8    # "plmn_id":I
    .end local v9    # "rat":I
    .end local v10    # "freq":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_83c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7613
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7614
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7615
    .local v1, "limitpower":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setTxPower(II)V

    .line 7616
    goto/16 :goto_1162

    .line 7601
    .end local v0    # "serial":I
    .end local v1    # "limitpower":I
    :sswitch_84c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7603
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7604
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7605
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->disableNR(IZ)V

    .line 7606
    goto/16 :goto_1162

    .line 7588
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_85c
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 7591
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v7

    .line 7592
    .local v7, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7593
    .local v8, "T1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7594
    .local v9, "P1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7595
    .local v10, "T2":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->enableSCGfailure(IZIII)V

    .line 7596
    goto/16 :goto_1162

    .line 7577
    .end local v6    # "serial":I
    .end local v7    # "enable":Z
    .end local v8    # "T1":I
    .end local v9    # "P1":I
    .end local v10    # "T2":I
    :sswitch_87f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7580
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7581
    .local v1, "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7582
    .local v2, "threshBound":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->cfgB1offset(III)V

    .line 7583
    goto/16 :goto_1162

    .line 7566
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_893
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7569
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7570
    .restart local v1    # "offset":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7571
    .restart local v2    # "threshBound":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->cfgA2offset(III)V

    .line 7572
    goto/16 :goto_1162

    .line 7551
    .end local v0    # "serial":I
    .end local v1    # "offset":I
    .end local v2    # "threshBound":I
    :sswitch_8a7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7553
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7554
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7555
    .local v9, "voiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7556
    .local v10, "dataRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7557
    .local v11, "voiceRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 7558
    .local v12, "dataRoamingType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 7559
    .local v16, "rilVoiceRegState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 7560
    .local v17, "rilDataRegState":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setServiceStateToModem(IIIIIII)V

    .line 7561
    goto/16 :goto_1162

    .line 7541
    .end local v8    # "serial":I
    .end local v9    # "voiceRegState":I
    .end local v10    # "dataRegState":I
    .end local v11    # "voiceRoamingType":I
    .end local v12    # "dataRoamingType":I
    .end local v16    # "rilVoiceRegState":I
    .end local v17    # "rilDataRegState":I
    :sswitch_8d6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7544
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7545
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setFemtoCellSystemSelectionMode(II)V

    .line 7546
    goto/16 :goto_1162

    .line 7532
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_8e6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7535
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->queryFemtoCellSystemSelectionMode(I)V

    .line 7536
    goto/16 :goto_1162

    .line 7520
    .end local v0    # "serial":I
    :sswitch_8f2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7522
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7523
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7524
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7525
    .local v2, "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7526
    .local v3, "csgId":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->selectFemtocell(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7527
    goto/16 :goto_1162

    .line 7511
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "csgId":Ljava/lang/String;
    :sswitch_90a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7513
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7514
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->abortFemtocellList(I)V

    .line 7515
    goto/16 :goto_1162

    .line 7502
    .end local v0    # "serial":I
    :sswitch_916
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7504
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7505
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getFemtocellList(I)V

    .line 7506
    goto/16 :goto_1162

    .line 7493
    .end local v0    # "serial":I
    :sswitch_922
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7495
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7496
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->cancelAvailableNetworks(I)V

    .line 7497
    goto/16 :goto_1162

    .line 7484
    .end local v0    # "serial":I
    :sswitch_92e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7486
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7487
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getSignalStrengthWithWcdmaEcio(I)V

    .line 7488
    goto/16 :goto_1162

    .line 7475
    .end local v0    # "serial":I
    :sswitch_93a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7478
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getAvailableNetworksWithAct(I)V

    .line 7479
    goto/16 :goto_1162

    .line 7463
    .end local v0    # "serial":I
    :sswitch_946
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7466
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7467
    .restart local v1    # "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7468
    .restart local v2    # "act":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7469
    .local v3, "mode":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setNetworkSelectionModeManualWithAct(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7470
    goto/16 :goto_1162

    .line 7454
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "act":Ljava/lang/String;
    .end local v3    # "mode":Ljava/lang/String;
    :sswitch_95e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7456
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7457
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getSmsRuimMemoryStatus(I)V

    .line 7458
    goto/16 :goto_1162

    .line 7443
    .end local v0    # "serial":I
    :sswitch_96a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7446
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7447
    .local v1, "applyType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7448
    .local v2, "modemType":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->modifyModemType(III)V

    .line 7449
    goto/16 :goto_1162

    .line 7433
    .end local v0    # "serial":I
    .end local v1    # "applyType":I
    .end local v2    # "modemType":I
    :sswitch_97e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7435
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7436
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7437
    .local v1, "sessionId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResumeRegistration(II)V

    .line 7438
    goto/16 :goto_1162

    .line 7423
    .end local v0    # "serial":I
    .end local v1    # "sessionId":I
    :sswitch_98e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7426
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7427
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendRequestStrings(ILjava/util/ArrayList;)V

    .line 7428
    goto/16 :goto_1162

    .line 7413
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_99e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7416
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 7417
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendRequestRaw(ILjava/util/ArrayList;)V

    .line 7418
    goto/16 :goto_1162

    .line 7402
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_9ae
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7405
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 7406
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7407
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 7408
    goto/16 :goto_1162

    .line 7391
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :sswitch_9c2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7394
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7395
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7396
    .local v2, "cause":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 7397
    goto/16 :goto_1162

    .line 7380
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :sswitch_9d6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7383
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 7384
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7385
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 7386
    goto/16 :goto_1162

    .line 7371
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :sswitch_9ea
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7373
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7374
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getGsmBroadcastActivation(I)V

    .line 7375
    goto/16 :goto_1162

    .line 7362
    .end local v0    # "serial":I
    :sswitch_9f6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7365
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getGsmBroadcastLangs(I)V

    .line 7366
    goto/16 :goto_1162

    .line 7352
    .end local v0    # "serial":I
    :sswitch_a02
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7355
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7356
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setGsmBroadcastLangs(ILjava/lang/String;)V

    .line 7357
    goto/16 :goto_1162

    .line 7341
    .end local v0    # "serial":I
    .end local v1    # "langs":Ljava/lang/String;
    :sswitch_a12
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7344
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7345
    .local v1, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7346
    .local v2, "serialId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->removeCbMsg(III)V

    .line 7347
    goto/16 :goto_1162

    .line 7331
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    .end local v2    # "serialId":I
    :sswitch_a26
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7333
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7334
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7335
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setEtws(II)V

    .line 7336
    goto/16 :goto_1162

    .line 7322
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_a36
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7325
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getSmsMemStatus(I)V

    .line 7326
    goto/16 :goto_1162

    .line 7311
    .end local v0    # "serial":I
    :sswitch_a42
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7314
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;-><init>()V

    .line 7315
    .local v1, "message":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7316
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setSmsParameters(ILvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V

    .line 7317
    goto/16 :goto_1162

    .line 7302
    .end local v0    # "serial":I
    .end local v1    # "message":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    :sswitch_a56
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7304
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7305
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getSmsParameters(I)V

    .line 7306
    goto/16 :goto_1162

    .line 7288
    .end local v0    # "serial":I
    :sswitch_a62
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 7291
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7292
    .local v8, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7293
    .local v9, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7294
    .local v10, "result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 7295
    .local v11, "dataLength":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v12

    .line 7296
    .local v12, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendVsimOperation(IIIIILjava/util/ArrayList;)V

    .line 7297
    goto/16 :goto_1162

    .line 7276
    .end local v7    # "serial":I
    .end local v8    # "transactionId":I
    .end local v9    # "eventId":I
    .end local v10    # "result":I
    .end local v11    # "dataLength":I
    .end local v12    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_a8a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7279
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7280
    .local v1, "transactionId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7281
    .local v2, "eventId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7282
    .local v3, "simType":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendVsimNotification(IIII)V

    .line 7283
    goto/16 :goto_1162

    .line 7265
    .end local v0    # "serial":I
    .end local v1    # "transactionId":I
    .end local v2    # "eventId":I
    .end local v3    # "simType":I
    :sswitch_aa2
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7267
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7268
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7269
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7270
    .local v2, "type":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->supplyDepersonalization(ILjava/lang/String;I)V

    .line 7271
    goto/16 :goto_1162

    .line 7250
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_ab6
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7252
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 7253
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 7254
    .local v9, "category":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 7255
    .local v10, "lockop":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 7256
    .local v11, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 7257
    .local v12, "data_imsi":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 7258
    .local v16, "gid1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 7259
    .local v17, "gid2":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setNetworkLock(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7260
    goto/16 :goto_1162

    .line 7240
    .end local v8    # "serial":I
    .end local v9    # "category":I
    .end local v10    # "lockop":I
    .end local v11    # "password":Ljava/lang/String;
    .end local v12    # "data_imsi":Ljava/lang/String;
    .end local v16    # "gid1":Ljava/lang/String;
    .end local v17    # "gid2":Ljava/lang/String;
    :sswitch_ae5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7243
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7244
    .local v1, "category":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->queryNetworkLock(II)V

    .line 7245
    goto/16 :goto_1162

    .line 7229
    .end local v0    # "serial":I
    .end local v1    # "category":I
    :sswitch_af5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7232
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;-><init>()V

    .line 7233
    .local v1, "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7234
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->doGeneralSimAuthentication(ILvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;)V

    .line 7235
    goto/16 :goto_1162

    .line 7220
    .end local v0    # "serial":I
    .end local v1    # "simAuth":Lvendor/mediatek/hardware/mtkradioex/V2_0/SimAuthStructure;
    :sswitch_b09
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7223
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getCurrentUiccCardProvisioningStatus(I)V

    .line 7224
    goto/16 :goto_1162

    .line 7211
    .end local v0    # "serial":I
    :sswitch_b15
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7214
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->deactivateUiccCard(I)V

    .line 7215
    goto/16 :goto_1162

    .line 7202
    .end local v0    # "serial":I
    :sswitch_b21
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7205
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->activateUiccCard(I)V

    .line 7206
    goto/16 :goto_1162

    .line 7192
    .end local v0    # "serial":I
    :sswitch_b2d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7195
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7196
    .local v1, "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setSimPower(II)V

    .line 7197
    goto/16 :goto_1162

    .line 7183
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_b3d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7186
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getIccid(I)V

    .line 7187
    goto/16 :goto_1162

    .line 7174
    .end local v0    # "serial":I
    :sswitch_b49
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7177
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getATR(I)V

    .line 7178
    goto/16 :goto_1162

    .line 7164
    .end local v0    # "serial":I
    :sswitch_b55
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7167
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7168
    .restart local v1    # "mode":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->triggerModeSwitchByEcc(II)V

    .line 7169
    goto/16 :goto_1162

    .line 7154
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :sswitch_b65
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7157
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 7158
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setModemPower(IZ)V

    .line 7159
    goto/16 :goto_1162

    .line 7144
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_b75
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7147
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7148
    .local v1, "ready":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setPhonebookReady(II)V

    .line 7149
    goto/16 :goto_1162

    .line 7133
    .end local v0    # "serial":I
    .end local v1    # "ready":I
    :sswitch_b85
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7136
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7137
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7138
    .local v2, "endIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->readUPBAasList(III)V

    .line 7139
    goto/16 :goto_1162

    .line 7122
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_b99
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7124
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7125
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7126
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7127
    .local v2, "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->readUPBAnrEntry(III)V

    .line 7128
    goto/16 :goto_1162

    .line 7111
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_bad
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7114
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7115
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7116
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->readUPBSneEntry(III)V

    .line 7117
    goto/16 :goto_1162

    .line 7100
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_bc1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7103
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7104
    .restart local v1    # "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7105
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->readUPBEmailEntry(III)V

    .line 7106
    goto/16 :goto_1162

    .line 7089
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "fileIndex":I
    :sswitch_bd5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7092
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7093
    .local v1, "eftype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7094
    .restart local v2    # "fileIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->queryUPBAvailable(III)V

    .line 7095
    goto/16 :goto_1162

    .line 7078
    .end local v0    # "serial":I
    .end local v1    # "eftype":I
    .end local v2    # "fileIndex":I
    :sswitch_be9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7081
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;-><init>()V

    .line 7082
    .local v1, "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->readFromParcel(Landroid/os/HwParcel;)V

    .line 7083
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->writePhoneBookEntryExt(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;)V

    .line 7084
    goto/16 :goto_1162

    .line 7067
    .end local v0    # "serial":I
    .end local v1    # "phbEntryExt":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;
    :sswitch_bfd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7070
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7071
    .local v1, "index1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7072
    .local v2, "index2":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->readPhoneBookEntryExt(III)V

    .line 7073
    goto/16 :goto_1162

    .line 7056
    .end local v0    # "serial":I
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    :sswitch_c11
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7059
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 7060
    .local v1, "storage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7061
    .local v2, "password":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setPhoneBookMemStorage(ILjava/lang/String;Ljava/lang/String;)V

    .line 7062
    goto/16 :goto_1162

    .line 7047
    .end local v0    # "serial":I
    .end local v1    # "storage":Ljava/lang/String;
    .end local v2    # "password":Ljava/lang/String;
    :sswitch_c25
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7050
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getPhoneBookMemStorage(I)V

    .line 7051
    goto/16 :goto_1162

    .line 7038
    .end local v0    # "serial":I
    :sswitch_c31
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7041
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getPhoneBookStringsLength(I)V

    .line 7042
    goto/16 :goto_1162

    .line 7027
    .end local v0    # "serial":I
    :sswitch_c3d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7029
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7030
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7031
    .local v1, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 7032
    .local v2, "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->writeUPBGrpEntry(IILjava/util/ArrayList;)V

    .line 7033
    goto/16 :goto_1162

    .line 7017
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    .end local v2    # "grpIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_c51
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7020
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7021
    .restart local v1    # "adnIndex":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->readUPBGrpEntry(II)V

    .line 7022
    goto/16 :goto_1162

    .line 7006
    .end local v0    # "serial":I
    .end local v1    # "adnIndex":I
    :sswitch_c61
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 7008
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 7009
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 7010
    .local v1, "startIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 7011
    .local v2, "endIndex":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->readUPBGasList(III)V

    .line 7012
    goto/16 :goto_1162

    .line 6994
    .end local v0    # "serial":I
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :sswitch_c75
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6997
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6998
    .local v1, "entryType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6999
    .local v2, "adnIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 7000
    .local v3, "entryIndex":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->deleteUPBEntry(IIII)V

    .line 7001
    goto/16 :goto_1162

    .line 6984
    .end local v0    # "serial":I
    .end local v1    # "entryType":I
    .end local v2    # "adnIndex":I
    .end local v3    # "entryIndex":I
    :sswitch_c8d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6987
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6988
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->editUPBEntry(ILjava/util/ArrayList;)V

    .line 6989
    goto/16 :goto_1162

    .line 6975
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c9d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6977
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6978
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->queryUPBCapability(I)V

    .line 6979
    goto/16 :goto_1162

    .line 6963
    .end local v0    # "serial":I
    :sswitch_ca9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6966
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6967
    .local v1, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6968
    .local v2, "bIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6969
    .local v3, "eIndex":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->readPhbEntry(IIII)V

    .line 6970
    goto/16 :goto_1162

    .line 6952
    .end local v0    # "serial":I
    .end local v1    # "type":I
    .end local v2    # "bIndex":I
    .end local v3    # "eIndex":I
    :sswitch_cc1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6955
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;-><init>()V

    .line 6956
    .local v1, "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6957
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->writePhbEntry(ILvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;)V

    .line 6958
    goto/16 :goto_1162

    .line 6942
    .end local v0    # "serial":I
    .end local v1    # "phbEntry":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;
    :sswitch_cd5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6944
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6945
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6946
    .local v1, "type":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->queryPhbStorageInfo(II)V

    .line 6947
    goto/16 :goto_1162

    .line 6933
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :sswitch_ce5
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6936
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getCallSubAddress(I)V

    .line 6937
    goto/16 :goto_1162

    .line 6923
    .end local v0    # "serial":I
    :sswitch_cf1
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6925
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6926
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6927
    .local v1, "enable":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setCallSubAddress(IZ)V

    .line 6928
    goto/16 :goto_1162

    .line 6914
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :sswitch_d01
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6917
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getEccNum(I)V

    .line 6918
    goto/16 :goto_1162

    .line 6903
    .end local v0    # "serial":I
    :sswitch_d0d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6905
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6906
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6907
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6908
    .local v2, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setEccNum(ILjava/lang/String;Ljava/lang/String;)V

    .line 6909
    goto/16 :goto_1162

    .line 6893
    .end local v0    # "serial":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "ecc_list_no_card":Ljava/lang/String;
    :sswitch_d21
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6895
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6896
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6897
    .local v1, "status":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setVoicePreferStatus(II)V

    .line 6898
    goto/16 :goto_1162

    .line 6883
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :sswitch_d31
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6885
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6886
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6887
    .local v1, "phoneType":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->eccPreferredRat(II)V

    .line 6888
    goto/16 :goto_1162

    .line 6870
    .end local v0    # "serial":I
    .end local v1    # "phoneType":I
    :sswitch_d41
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6872
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6873
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 6874
    .local v7, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6875
    .local v8, "enable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6876
    .local v9, "airplaneMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6877
    .local v10, "imsReg":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setEccMode(ILjava/lang/String;III)V

    .line 6878
    goto/16 :goto_1162

    .line 6857
    .end local v6    # "serial":I
    .end local v7    # "number":Ljava/lang/String;
    .end local v8    # "enable":I
    .end local v9    # "airplaneMode":I
    .end local v10    # "imsReg":I
    :sswitch_d64
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6860
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6861
    .local v7, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6862
    .local v8, "callId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 6863
    .local v9, "seqNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6864
    .local v10, "cause":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setCallIndication(IIIII)V

    .line 6865
    goto/16 :goto_1162

    .line 6848
    .end local v6    # "serial":I
    .end local v7    # "mode":I
    .end local v8    # "callId":I
    .end local v9    # "seqNumber":I
    .end local v10    # "cause":I
    :sswitch_d87
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6850
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6851
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->hangupAll(I)V

    .line 6852
    goto/16 :goto_1162

    .line 6838
    .end local v0    # "serial":I
    :sswitch_d93
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6841
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6842
    .local v1, "userAgent":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 6843
    goto/16 :goto_1162

    .line 6829
    .end local v0    # "serial":I
    .end local v1    # "userAgent":Ljava/lang/String;
    :sswitch_da3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6832
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->resetSuppServ(I)V

    .line 6833
    goto/16 :goto_1162

    .line 6820
    .end local v0    # "serial":I
    :sswitch_daf
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6823
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getXcapStatus(I)V

    .line 6824
    goto/16 :goto_1162

    .line 6811
    .end local v0    # "serial":I
    :sswitch_dbb
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6813
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6814
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->cancelUssi(I)V

    .line 6815
    goto/16 :goto_1162

    .line 6801
    .end local v0    # "serial":I
    :sswitch_dc7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6803
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6804
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6805
    .local v1, "ussiString":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendUssi(ILjava/lang/String;)V

    .line 6806
    goto/16 :goto_1162

    .line 6788
    .end local v0    # "serial":I
    .end local v1    # "ussiString":Ljava/lang/String;
    :sswitch_dd7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6791
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 6792
    .local v7, "nafFqdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6793
    .local v8, "nafSecureProtocolId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 6794
    .local v9, "forceRun":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6795
    .local v10, "netId":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 6796
    goto/16 :goto_1162

    .line 6777
    .end local v6    # "serial":I
    .end local v7    # "nafFqdn":Ljava/lang/String;
    .end local v8    # "nafSecureProtocolId":Ljava/lang/String;
    .end local v9    # "forceRun":Z
    .end local v10    # "netId":I
    :sswitch_dfa
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6780
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 6781
    .local v1, "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6782
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 6783
    goto/16 :goto_1162

    .line 6766
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :sswitch_e0e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6768
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6769
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 6770
    .restart local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6771
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 6772
    goto/16 :goto_1162

    .line 6756
    .end local v0    # "serial":I
    .end local v1    # "callInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :sswitch_e22
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6758
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6759
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6760
    .local v1, "colrEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setColr(II)V

    .line 6761
    goto/16 :goto_1162

    .line 6746
    .end local v0    # "serial":I
    .end local v1    # "colrEnable":I
    :sswitch_e32
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6748
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6749
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6750
    .local v1, "colpEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setColp(II)V

    .line 6751
    goto/16 :goto_1162

    .line 6736
    .end local v0    # "serial":I
    .end local v1    # "colpEnable":I
    :sswitch_e42
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6738
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6739
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6740
    .local v1, "cnapssMessage":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendCnap(ILjava/lang/String;)V

    .line 6741
    goto/16 :goto_1162

    .line 6727
    .end local v0    # "serial":I
    .end local v1    # "cnapssMessage":Ljava/lang/String;
    :sswitch_e52
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6729
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6730
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getColr(I)V

    .line 6731
    goto/16 :goto_1162

    .line 6718
    .end local v0    # "serial":I
    :sswitch_e5e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6721
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getColp(I)V

    .line 6722
    goto/16 :goto_1162

    .line 6708
    .end local v0    # "serial":I
    :sswitch_e6a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6711
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6712
    .local v1, "clipEnable":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setClip(II)V

    .line 6713
    goto/16 :goto_1162

    .line 6695
    .end local v0    # "serial":I
    .end local v1    # "clipEnable":I
    :sswitch_e7a
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6697
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6698
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 6699
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 6700
    .local v8, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6701
    .local v9, "newPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 6702
    .local v10, "cfmPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setBarringPasswordCheckedByNW(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6703
    goto/16 :goto_1162

    .line 6685
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "oldPassword":Ljava/lang/String;
    .end local v9    # "newPassword":Ljava/lang/String;
    .end local v10    # "cfmPassword":Ljava/lang/String;
    :sswitch_e9d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6688
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6689
    .local v1, "phoneId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getRoamingEnable(II)V

    .line 6690
    goto/16 :goto_1162

    .line 6675
    .end local v0    # "serial":I
    .end local v1    # "phoneId":I
    :sswitch_ead
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6678
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 6679
    .local v1, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setRoamingEnable(ILjava/util/ArrayList;)V

    .line 6680
    goto/16 :goto_1162

    .line 6665
    .end local v0    # "serial":I
    .end local v1    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_ebd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6668
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6669
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->sendEmbmsAtCommand(ILjava/lang/String;)V

    .line 6670
    goto/16 :goto_1162

    .line 6656
    .end local v0    # "serial":I
    .end local v1    # "data":Ljava/lang/String;
    :sswitch_ecd
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6658
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6659
    .restart local v0    # "serial":I
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setImsRegistrationReport(I)V

    .line 6660
    goto/16 :goto_1162

    .line 6645
    .end local v0    # "serial":I
    :sswitch_ed9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6648
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6649
    .local v1, "target":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 6650
    .local v2, "isVideoCall":Z
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->pullCall(ILjava/lang/String;Z)V

    .line 6651
    goto/16 :goto_1162

    .line 6633
    .end local v0    # "serial":I
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "isVideoCall":Z
    :sswitch_eed
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6636
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6637
    .local v1, "pdnId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6638
    .local v2, "networkId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6639
    .local v3, "timer":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setImsRtpReport(IIII)V

    .line 6640
    goto/16 :goto_1162

    .line 6621
    .end local v0    # "serial":I
    .end local v1    # "pdnId":I
    .end local v2    # "networkId":I
    .end local v3    # "timer":I
    :sswitch_f05
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6623
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6624
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6625
    .local v1, "aid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6626
    .local v2, "action":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6627
    .local v3, "status":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->imsBearerStateConfirm(IIII)V

    .line 6628
    goto/16 :goto_1162

    .line 6611
    .end local v0    # "serial":I
    .end local v1    # "aid":I
    .end local v2    # "action":I
    .end local v3    # "status":I
    :sswitch_f1d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6613
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6614
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6615
    .local v1, "callId":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->forceReleaseCall(II)V

    .line 6616
    goto/16 :goto_1162

    .line 6600
    .end local v0    # "serial":I
    .end local v1    # "callId":I
    :sswitch_f2d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6603
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 6604
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v14}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6605
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 6606
    goto/16 :goto_1162

    .line 6590
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :sswitch_f41
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6593
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6594
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 6595
    goto/16 :goto_1162

    .line 6580
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_f51
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6582
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6583
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6584
    .restart local v1    # "address":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->dialWithSipUri(ILjava/lang/String;)V

    .line 6585
    goto/16 :goto_1162

    .line 6568
    .end local v0    # "serial":I
    .end local v1    # "address":Ljava/lang/String;
    :sswitch_f61
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6571
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6572
    .local v1, "keys":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6573
    .local v2, "values":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 6574
    .local v3, "type":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 6575
    goto/16 :goto_1162

    .line 6557
    .end local v0    # "serial":I
    .end local v1    # "keys":Ljava/lang/String;
    .end local v2    # "values":Ljava/lang/String;
    .end local v3    # "type":I
    :sswitch_f79
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6560
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;-><init>()V

    .line 6561
    .local v1, "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    invoke-virtual {v1, v14}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 6562
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;)V

    .line 6563
    goto/16 :goto_1162

    .line 6547
    .end local v0    # "serial":I
    .end local v1    # "dailInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    :sswitch_f8d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6549
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6550
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6551
    .local v1, "wfcPreference":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setWfcProfile(II)V

    .line 6552
    goto/16 :goto_1162

    .line 6534
    .end local v0    # "serial":I
    .end local v1    # "wfcPreference":I
    :sswitch_f9d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 6537
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 6538
    .local v7, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6539
    .local v8, "confCallId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 6540
    .local v9, "address":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 6541
    .local v10, "callId":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 6542
    goto/16 :goto_1162

    .line 6523
    .end local v6    # "serial":I
    .end local v7    # "controlType":I
    .end local v8    # "confCallId":I
    .end local v9    # "address":Ljava/lang/String;
    .end local v10    # "callId":I
    :sswitch_fc0
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6525
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6526
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6527
    .local v1, "provisionstring":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6528
    .local v2, "provisionValue":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setProvisionValue(ILjava/lang/String;Ljava/lang/String;)V

    .line 6529
    goto/16 :goto_1162

    .line 6513
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    .end local v2    # "provisionValue":Ljava/lang/String;
    :sswitch_fd4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6515
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6516
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6517
    .restart local v1    # "provisionstring":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->getProvisionValue(ILjava/lang/String;)V

    .line 6518
    goto/16 :goto_1162

    .line 6498
    .end local v0    # "serial":I
    .end local v1    # "provisionstring":Ljava/lang/String;
    :sswitch_fe4
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 6501
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 6502
    .local v9, "volteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v10

    .line 6503
    .local v10, "vilteEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 6504
    .local v11, "vowifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 6505
    .local v12, "viwifiEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 6506
    .local v16, "smsEnable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 6507
    .local v17, "eimsEnable":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setImscfg(IZZZZZZ)V

    .line 6508
    goto/16 :goto_1162

    .line 6488
    .end local v8    # "serial":I
    .end local v9    # "volteEnable":Z
    .end local v10    # "vilteEnable":Z
    .end local v11    # "vowifiEnable":Z
    .end local v12    # "viwifiEnable":Z
    .end local v16    # "smsEnable":Z
    .end local v17    # "eimsEnable":Z
    :sswitch_1013
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6490
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6491
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6492
    .local v1, "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setImsVideoEnable(IZ)V

    .line 6493
    goto/16 :goto_1162

    .line 6478
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_1023
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6480
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6481
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 6482
    .restart local v1    # "isOn":Z
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setImsEnable(IZ)V

    .line 6483
    goto/16 :goto_1162

    .line 6468
    .end local v0    # "serial":I
    .end local v1    # "isOn":Z
    :sswitch_1033
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6470
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6471
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6472
    .local v1, "cause":I
    invoke-virtual {v13, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->imsDeregNotification(II)V

    .line 6473
    goto/16 :goto_1162

    .line 6457
    .end local v0    # "serial":I
    .end local v1    # "cause":I
    :sswitch_1043
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6460
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6461
    .local v1, "controlType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6462
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->controlCall(III)V

    .line 6463
    goto/16 :goto_1162

    .line 6446
    .end local v0    # "serial":I
    .end local v1    # "controlType":I
    .end local v2    # "callId":I
    :sswitch_1057
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6449
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6450
    .local v1, "number":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6451
    .local v2, "type":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->imsEctCommand(ILjava/lang/String;I)V

    .line 6452
    goto/16 :goto_1162

    .line 6435
    .end local v0    # "serial":I
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "type":I
    :sswitch_106b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 6438
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 6439
    .local v1, "videoMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 6440
    .local v2, "callId":I
    invoke-virtual {v13, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->videoCallAccept(III)V

    .line 6441
    goto/16 :goto_1162

    .line 6423
    .end local v0    # "serial":I
    .end local v1    # "videoMode":I
    .end local v2    # "callId":I
    :sswitch_107f
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;

    move-result-object v0

    .line 6426
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;

    move-result-object v2

    .line 6427
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsRsu(Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;)V

    .line 6428
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6429
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6430
    goto/16 :goto_1162

    .line 6412
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IRsuRadioIndication;
    :sswitch_109d
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;

    move-result-object v0

    .line 6415
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsCap(Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;)V

    .line 6416
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6418
    goto/16 :goto_1162

    .line 6401
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ICapRadioResponse;
    :sswitch_10b3
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;

    move-result-object v0

    .line 6404
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;
    invoke-virtual {v13, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsAssist(Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;)V

    .line 6405
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6407
    goto/16 :goto_1162

    .line 6389
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IAssistRadioResponse;
    :sswitch_10c9
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;

    move-result-object v0

    .line 6392
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;

    move-result-object v2

    .line 6393
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsEm(Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;)V

    .line 6394
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6396
    goto/16 :goto_1162

    .line 6377
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IEmRadioIndication;
    :sswitch_10e7
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;

    move-result-object v0

    .line 6380
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;

    move-result-object v2

    .line 6381
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsSE(Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;)V

    .line 6382
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6383
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6384
    goto :goto_1162

    .line 6365
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/ISERadioIndication;
    :sswitch_1104
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6367
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;

    move-result-object v0

    .line 6368
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;

    move-result-object v2

    .line 6369
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsMwi(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;)V

    .line 6370
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6372
    goto :goto_1162

    .line 6353
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioIndication;
    :sswitch_1121
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;

    move-result-object v0

    .line 6356
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;

    move-result-object v2

    .line 6357
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsIms(Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;)V

    .line 6358
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6359
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6360
    goto :goto_1162

    .line 6341
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IImsRadioIndication;
    :sswitch_113e
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;

    move-result-object v0

    .line 6344
    .local v0, "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;

    move-result-object v2

    .line 6345
    .local v2, "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
    invoke-virtual {v13, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->setResponseFunctionsMtk(Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;)V

    .line 6346
    invoke-virtual {v15, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 6347
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 6348
    goto :goto_1162

    .line 6333
    .end local v0    # "radioResponse":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExResponse;
    .end local v2    # "radioIndication":Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
    :sswitch_115b
    invoke-virtual {v14, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 6335
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->responseAcknowledgementMtk()V

    .line 6336
    nop

    .line 8713
    :goto_1162
    return-void

    nop

    :sswitch_data_1164
    .sparse-switch
        0x1 -> :sswitch_115b
        0x2 -> :sswitch_113e
        0x3 -> :sswitch_1121
        0x4 -> :sswitch_1104
        0x5 -> :sswitch_10e7
        0x6 -> :sswitch_10c9
        0x7 -> :sswitch_10b3
        0x8 -> :sswitch_109d
        0x9 -> :sswitch_107f
        0xa -> :sswitch_106b
        0xb -> :sswitch_1057
        0xc -> :sswitch_1043
        0xd -> :sswitch_1033
        0xe -> :sswitch_1023
        0xf -> :sswitch_1013
        0x10 -> :sswitch_fe4
        0x11 -> :sswitch_fd4
        0x12 -> :sswitch_fc0
        0x13 -> :sswitch_f9d
        0x14 -> :sswitch_f8d
        0x15 -> :sswitch_f79
        0x16 -> :sswitch_f61
        0x17 -> :sswitch_f51
        0x18 -> :sswitch_f41
        0x19 -> :sswitch_f2d
        0x1a -> :sswitch_f1d
        0x1b -> :sswitch_f05
        0x1c -> :sswitch_eed
        0x1d -> :sswitch_ed9
        0x1e -> :sswitch_ecd
        0x1f -> :sswitch_ebd
        0x20 -> :sswitch_ead
        0x21 -> :sswitch_e9d
        0x22 -> :sswitch_e7a
        0x23 -> :sswitch_e6a
        0x24 -> :sswitch_e5e
        0x25 -> :sswitch_e52
        0x26 -> :sswitch_e42
        0x27 -> :sswitch_e32
        0x28 -> :sswitch_e22
        0x29 -> :sswitch_e0e
        0x2a -> :sswitch_dfa
        0x2b -> :sswitch_dd7
        0x2c -> :sswitch_dc7
        0x2d -> :sswitch_dbb
        0x2e -> :sswitch_daf
        0x2f -> :sswitch_da3
        0x30 -> :sswitch_d93
        0x31 -> :sswitch_d87
        0x32 -> :sswitch_d64
        0x33 -> :sswitch_d41
        0x34 -> :sswitch_d31
        0x35 -> :sswitch_d21
        0x36 -> :sswitch_d0d
        0x37 -> :sswitch_d01
        0x38 -> :sswitch_cf1
        0x39 -> :sswitch_ce5
        0x3a -> :sswitch_cd5
        0x3b -> :sswitch_cc1
        0x3c -> :sswitch_ca9
        0x3d -> :sswitch_c9d
        0x3e -> :sswitch_c8d
        0x3f -> :sswitch_c75
        0x40 -> :sswitch_c61
        0x41 -> :sswitch_c51
        0x42 -> :sswitch_c3d
        0x43 -> :sswitch_c31
        0x44 -> :sswitch_c25
        0x45 -> :sswitch_c11
        0x46 -> :sswitch_bfd
        0x47 -> :sswitch_be9
        0x48 -> :sswitch_bd5
        0x49 -> :sswitch_bc1
        0x4a -> :sswitch_bad
        0x4b -> :sswitch_b99
        0x4c -> :sswitch_b85
        0x4d -> :sswitch_b75
        0x4e -> :sswitch_b65
        0x4f -> :sswitch_b55
        0x50 -> :sswitch_b49
        0x51 -> :sswitch_b3d
        0x52 -> :sswitch_b2d
        0x53 -> :sswitch_b21
        0x54 -> :sswitch_b15
        0x55 -> :sswitch_b09
        0x56 -> :sswitch_af5
        0x57 -> :sswitch_ae5
        0x58 -> :sswitch_ab6
        0x59 -> :sswitch_aa2
        0x5a -> :sswitch_a8a
        0x5b -> :sswitch_a62
        0x5c -> :sswitch_a56
        0x5d -> :sswitch_a42
        0x5e -> :sswitch_a36
        0x5f -> :sswitch_a26
        0x60 -> :sswitch_a12
        0x61 -> :sswitch_a02
        0x62 -> :sswitch_9f6
        0x63 -> :sswitch_9ea
        0x64 -> :sswitch_9d6
        0x65 -> :sswitch_9c2
        0x66 -> :sswitch_9ae
        0x67 -> :sswitch_99e
        0x68 -> :sswitch_98e
        0x69 -> :sswitch_97e
        0x6a -> :sswitch_96a
        0x6b -> :sswitch_95e
        0x6c -> :sswitch_946
        0x6d -> :sswitch_93a
        0x6e -> :sswitch_92e
        0x6f -> :sswitch_922
        0x70 -> :sswitch_916
        0x71 -> :sswitch_90a
        0x72 -> :sswitch_8f2
        0x73 -> :sswitch_8e6
        0x74 -> :sswitch_8d6
        0x75 -> :sswitch_8a7
        0x76 -> :sswitch_893
        0x77 -> :sswitch_87f
        0x78 -> :sswitch_85c
        0x79 -> :sswitch_84c
        0x7a -> :sswitch_83c
        0x7b -> :sswitch_819
        0x7c -> :sswitch_809
        0x7d -> :sswitch_7f9
        0x7e -> :sswitch_7e9
        0x7f -> :sswitch_7d9
        0x80 -> :sswitch_7cd
        0x81 -> :sswitch_7c1
        0x82 -> :sswitch_7a9
        0x83 -> :sswitch_791
        0x84 -> :sswitch_781
        0x85 -> :sswitch_771
        0x86 -> :sswitch_759
        0x87 -> :sswitch_749
        0x88 -> :sswitch_73d
        0x89 -> :sswitch_72d
        0x8a -> :sswitch_71d
        0x8b -> :sswitch_70d
        0x8c -> :sswitch_6fd
        0x8d -> :sswitch_6e5
        0x8e -> :sswitch_6b6
        0x8f -> :sswitch_6a2
        0x90 -> :sswitch_65e
        0x91 -> :sswitch_646
        0x92 -> :sswitch_63a
        0x93 -> :sswitch_5e8
        0x94 -> :sswitch_5d8
        0x95 -> :sswitch_5a9
        0x96 -> :sswitch_591
        0x97 -> :sswitch_579
        0x98 -> :sswitch_56d
        0x99 -> :sswitch_55d
        0x9a -> :sswitch_53a
        0x9b -> :sswitch_526
        0x9c -> :sswitch_512
        0x9d -> :sswitch_502
        0x9e -> :sswitch_4f2
        0x9f -> :sswitch_4e2
        0xa0 -> :sswitch_4d2
        0xa1 -> :sswitch_4c6
        0xa2 -> :sswitch_4b6
        0xa3 -> :sswitch_4aa
        0xa4 -> :sswitch_49a
        0xa5 -> :sswitch_486
        0xa6 -> :sswitch_476
        0xa7 -> :sswitch_466
        0xa8 -> :sswitch_452
        0xa9 -> :sswitch_43a
        0xaa -> :sswitch_422
        0xab -> :sswitch_40e
        0xac -> :sswitch_3fa
        0xad -> :sswitch_3ea
        0xae -> :sswitch_3d6
        0xaf -> :sswitch_3be
        0xb0 -> :sswitch_3aa
        0xb1 -> :sswitch_396
        0xb2 -> :sswitch_38a
        0xb3 -> :sswitch_382
        0xb4 -> :sswitch_36e
        0xb5 -> :sswitch_35e
        0xb6 -> :sswitch_352
        0xb7 -> :sswitch_342
        0xb8 -> :sswitch_332
        0xb9 -> :sswitch_322
        0xba -> :sswitch_312
        0xbb -> :sswitch_302
        0xbc -> :sswitch_2f2
        0xbd -> :sswitch_2e2
        0xbe -> :sswitch_2d2
        0xbf -> :sswitch_2c2
        0xc0 -> :sswitch_2b6
        0xc1 -> :sswitch_293
        0xc2 -> :sswitch_27b
        0xc3 -> :sswitch_263
        0xc4 -> :sswitch_24f
        0xc5 -> :sswitch_237
        0xc6 -> :sswitch_227
        0xc7 -> :sswitch_213
        0xc8 -> :sswitch_1ff
        0xc9 -> :sswitch_1f3
        0xca -> :sswitch_1e3
        0xcb -> :sswitch_1c5
        0xcc -> :sswitch_1b1
        0xcd -> :sswitch_1a1
        0xce -> :sswitch_189
        0xcf -> :sswitch_175
        0xd0 -> :sswitch_165
        0xd1 -> :sswitch_151
        0xd2 -> :sswitch_13d
        0xd3 -> :sswitch_115
        0xd4 -> :sswitch_d1
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

    .line 6284
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 6312
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioEx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6313
    return-object p0

    .line 6315
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

    .line 6319
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->registerService(Ljava/lang/String;)V

    .line 6320
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 6274
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 6324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 6306
    const/4 v0, 0x1

    return v0
.end method
