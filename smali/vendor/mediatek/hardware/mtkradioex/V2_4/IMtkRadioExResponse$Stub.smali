.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioExResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3183
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 3186
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

    .line 3200
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 3238
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3239
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3240
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3241
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3242
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

    .line 3212
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
        -0x22t
        -0x6dt
        -0x5at
        -0x9t
        0x20t
        0x3t
        0x6ct
        -0x40t
        -0x1dt
        -0x77t
        0x60t
        0x3ft
        0x27t
        -0x21t
        0x6ct
        -0x2et
        0x6ft
        -0x19t
        0x6dt
        0x41t
        -0x6ft
        0x45t
        -0x38t
        0x4bt
        0x26t
        -0x45t
        -0x1et
        0x37t
        0x5t
        0x39t
        -0x3t
        0x52t
    .end array-data

    :array_3c
    .array-data 1
        -0x4dt
        -0x60t
        0x27t
        0x11t
        -0x50t
        -0x34t
        0x10t
        -0x60t
        0x2dt
        0x2bt
        0x1bt
        -0x66t
        0x19t
        0x57t
        -0x58t
        -0x55t
        0x61t
        0x10t
        0x54t
        -0x6ct
        0x36t
        0x6bt
        -0x1dt
        -0x35t
        0x55t
        0x7ct
        -0x14t
        0x1ft
        -0x8t
        -0x63t
        -0x7dt
        -0x70t
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

    .line 3191
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExResponse"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExResponse"

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

    .line 3206
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3226
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 3248
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3250
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 25
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3278
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExResponse"

    const-string v3, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExResponse"

    sparse-switch p1, :sswitch_data_bd0

    goto/16 :goto_bcf

    .line 5002
    :sswitch_12
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5004
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->notifySyspropsChanged()V

    .line 5005
    goto/16 :goto_bcf

    .line 4991
    :sswitch_1a
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4993
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 4994
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4995
    invoke-virtual {v1, v11}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4996
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4997
    goto/16 :goto_bcf

    .line 4981
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_2c
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4983
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->ping()V

    .line 4984
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4986
    goto/16 :goto_bcf

    .line 4976
    :sswitch_3a
    goto/16 :goto_bcf

    .line 4968
    :sswitch_3c
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4970
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setHALInstrumentation()V

    .line 4971
    goto/16 :goto_bcf

    .line 4934
    :sswitch_44
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4936
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 4937
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4939
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 4941
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4942
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4943
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4944
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4945
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_6b
    if-ge v4, v3, :cond_8c

    .line 4947
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 4948
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 4950
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_84

    array-length v8, v7

    const/16 v12, 0x20

    if-ne v8, v12, :cond_84

    .line 4954
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4955
    nop

    .line 4945
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 4951
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_84
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v8, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4958
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8c
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4960
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4962
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4963
    goto/16 :goto_bcf

    .line 4923
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_99
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4925
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 4926
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4927
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4928
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4929
    goto/16 :goto_bcf

    .line 4911
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_ab
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 4914
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4915
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4916
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4918
    goto/16 :goto_bcf

    .line 4900
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c1
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4902
    invoke-virtual/range {p0 .. p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 4903
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4904
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4906
    goto/16 :goto_bcf

    .line 4889
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d3
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4891
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4892
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4894
    .local v1, "duration":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getLteScanDurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4895
    goto/16 :goto_bcf

    .line 4879
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "duration":I
    :sswitch_e7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4881
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4882
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4883
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setLteScanDurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4884
    goto/16 :goto_bcf

    .line 4867
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_f7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4869
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4870
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4872
    .local v1, "fddOrTdd":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4873
    .local v2, "enabled":Z
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getTm9EnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZZ)V

    .line 4874
    goto/16 :goto_bcf

    .line 4857
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "fddOrTdd":Z
    .end local v2    # "enabled":Z
    :sswitch_10f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4859
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4860
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4861
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setTm9EnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4862
    goto/16 :goto_bcf

    .line 4845
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_11f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4847
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4848
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4850
    .local v1, "ulOrDl":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4851
    .restart local v2    # "enabled":Z
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getQamEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZZ)V

    .line 4852
    goto/16 :goto_bcf

    .line 4835
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "ulOrDl":Z
    .end local v2    # "enabled":Z
    :sswitch_137
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4837
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4838
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4839
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setQamEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4840
    goto/16 :goto_bcf

    .line 4824
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_147
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4826
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4827
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4829
    .local v1, "femto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getCampedFemtoCellInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4830
    goto/16 :goto_bcf

    .line 4813
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "femto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_15b
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4815
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4816
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4818
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getCaBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4819
    goto/16 :goto_bcf

    .line 4802
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_16f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4804
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4805
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4806
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4807
    .restart local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4808
    goto/16 :goto_bcf

    .line 4792
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_183
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4794
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4795
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4796
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->clearLteAvailableFileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4797
    goto/16 :goto_bcf

    .line 4781
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_193
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4783
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4784
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4785
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/Lte1xRttCellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4786
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_4/Lte1xRttCellInfo;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getLte1xRttCellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4787
    goto/16 :goto_bcf

    .line 4770
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_4/Lte1xRttCellInfo;>;"
    :sswitch_1a7
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4772
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4773
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4774
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4775
    .local v1, "timer":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4776
    goto/16 :goto_bcf

    .line 4760
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "timer":I
    :sswitch_1bb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4763
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4764
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setLteBsrTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4765
    goto/16 :goto_bcf

    .line 4749
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1cb
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4751
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4752
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4754
    .local v1, "enabled_bitmask":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->get4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4755
    goto/16 :goto_bcf

    .line 4739
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enabled_bitmask":I
    :sswitch_1df
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4741
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4742
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4743
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->set4x4MimoEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4744
    goto/16 :goto_bcf

    .line 4729
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1ef
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4731
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4732
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4733
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4734
    goto/16 :goto_bcf

    .line 4718
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_1ff
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4720
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4721
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4723
    .local v1, "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getBandPriorityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4724
    goto/16 :goto_bcf

    .line 4708
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "bandPriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_213
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4710
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4711
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4712
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setLteBandEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4713
    goto/16 :goto_bcf

    .line 4697
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_223
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4699
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4700
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4702
    .local v1, "state":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getLteRRCStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4703
    goto/16 :goto_bcf

    .line 4685
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "state":I
    :sswitch_237
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4687
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4688
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4689
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;-><init>()V

    .line 4690
    .local v1, "data":Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4691
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getLteDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;)V

    .line 4692
    goto/16 :goto_bcf

    .line 4674
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Lvendor/mediatek/hardware/mtkradioex/V2_4/LteData;
    :sswitch_24f
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4676
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4677
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4678
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4679
    .local v1, "linkCapabilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getCALinkCapabilityListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4680
    goto/16 :goto_bcf

    .line 4664
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "linkCapabilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_263
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4666
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4667
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4668
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4669
    goto/16 :goto_bcf

    .line 4653
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_273
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4655
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4656
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4658
    .local v1, "status":Z
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getCALinkEnableStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4659
    goto/16 :goto_bcf

    .line 4643
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Z
    :sswitch_287
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4645
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4646
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4647
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->disableAllCALinksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4648
    goto/16 :goto_bcf

    .line 4630
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_297
    invoke-virtual {v10, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4632
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4633
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4635
    .local v1, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4636
    .local v2, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4637
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v9, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getTOEInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4638
    goto/16 :goto_bcf

    .line 4620
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "shortName":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :sswitch_2b3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4622
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4623
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4624
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->sendWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4625
    goto/16 :goto_bcf

    .line 4610
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2c3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4612
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4613
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4614
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->sendWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4615
    goto/16 :goto_bcf

    .line 4600
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2d3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4602
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4603
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4604
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->sendWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4605
    goto/16 :goto_bcf

    .line 4588
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_2e3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4590
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4591
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4592
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;-><init>()V

    .line 4593
    .local v1, "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4594
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->sendRsuRequestResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;)V

    .line 4595
    goto/16 :goto_bcf

    .line 4578
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "rri":Lvendor/mediatek/hardware/mtkradioex/V2_0/RsuResponseInfo;
    :sswitch_2fb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4580
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4581
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4582
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->sendSarIndicatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4583
    goto/16 :goto_bcf

    .line 4568
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_30b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4570
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4571
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4572
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setMaxUlSpeedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4573
    goto/16 :goto_bcf

    .line 4556
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_31b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4558
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4559
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4561
    .local v1, "deactivate":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4562
    .local v2, "allowSCGAdd":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getDeactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 4563
    goto/16 :goto_bcf

    .line 4546
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "deactivate":I
    .end local v2    # "allowSCGAdd":I
    :sswitch_333
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4548
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4549
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4550
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->deactivateNrScgCommunicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4551
    goto/16 :goto_bcf

    .line 4535
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_343
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4537
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4538
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4540
    .local v1, "plmnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getSuggestedPlmnListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4541
    goto/16 :goto_bcf

    .line 4525
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "plmnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_357
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4527
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4528
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4529
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->registerCellQltyReportResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4530
    goto/16 :goto_bcf

    .line 4514
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_367
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4516
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4517
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4518
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4519
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getDsdaStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4520
    goto/16 :goto_bcf

    .line 4504
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_37b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4506
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4507
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4508
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->enableDsdaIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4509
    goto/16 :goto_bcf

    .line 4494
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_38b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4496
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4497
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4498
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setKeepAliveByIpDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4499
    goto/16 :goto_bcf

    .line 4484
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_39b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4486
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4487
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4488
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4489
    goto/16 :goto_bcf

    .line 4474
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3ab
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4476
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4477
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4478
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4479
    goto/16 :goto_bcf

    .line 4464
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3bb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4466
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4467
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4468
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setCallValidTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4469
    goto/16 :goto_bcf

    .line 4454
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3cb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4456
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4457
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4458
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setGwsdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4459
    goto/16 :goto_bcf

    .line 4444
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3db
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4446
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4447
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4448
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->enableCAPlusBandWidthFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4449
    goto/16 :goto_bcf

    .line 4433
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_3eb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4435
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4436
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4437
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4438
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getPlmnNameFromSE13TableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4439
    goto/16 :goto_bcf

    .line 4423
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "name":Ljava/lang/String;
    :sswitch_3ff
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4425
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4426
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4427
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setVendorSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4428
    goto/16 :goto_bcf

    .line 4413
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_40f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4415
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4416
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4417
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->hangupWithReasonResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4418
    goto/16 :goto_bcf

    .line 4402
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_41f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4404
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4405
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4407
    .local v1, "remainingRetries":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->supplyDeviceNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4408
    goto/16 :goto_bcf

    .line 4392
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_433
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4394
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4395
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4396
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setSuppServPropertyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4397
    goto/16 :goto_bcf

    .line 4382
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_443
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4384
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4385
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4386
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setTxPowerStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4387
    goto/16 :goto_bcf

    .line 4371
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_453
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4373
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4374
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4376
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4377
    goto/16 :goto_bcf

    .line 4361
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_467
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4363
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4364
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4365
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setLteReleaseVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4366
    goto/16 :goto_bcf

    .line 4351
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_477
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4353
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4354
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4355
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->resetAllConnectionsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4356
    goto/16 :goto_bcf

    .line 4341
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_487
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4343
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4344
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4345
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->dataConnectionDetachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4346
    goto/16 :goto_bcf

    .line 4331
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_497
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4333
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4334
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4335
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->dataConnectionAttachResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4336
    goto/16 :goto_bcf

    .line 4320
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4a7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4322
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4323
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4325
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getApcInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4326
    goto/16 :goto_bcf

    .line 4310
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_4bb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4312
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4313
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4314
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setApcModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4315
    goto/16 :goto_bcf

    .line 4300
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4cb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4302
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4303
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4304
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setRemoveRestrictEutranModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4305
    goto/16 :goto_bcf

    .line 4290
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4db
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4292
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4293
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4294
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->resetMdDataRetryCountResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4295
    goto/16 :goto_bcf

    .line 4280
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4eb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4282
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4283
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4284
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->syncDataSettingsToMdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4285
    goto/16 :goto_bcf

    .line 4270
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_4fb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4272
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4273
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4274
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->restartRILDResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4275
    goto/16 :goto_bcf

    .line 4260
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_50b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4262
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4263
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4264
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->handleStkCallSetupRequestFromSimWithResCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4265
    goto/16 :goto_bcf

    .line 4250
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_51b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4252
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4253
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4254
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setTrmResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4255
    goto/16 :goto_bcf

    .line 4240
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_52b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4242
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4243
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4244
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setFdModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4245
    goto/16 :goto_bcf

    .line 4230
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_53b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4232
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4233
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4234
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setPOLEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4235
    goto/16 :goto_bcf

    .line 4219
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_54b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4221
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4222
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4223
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4224
    .local v1, "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getCurrentPOLListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4225
    goto/16 :goto_bcf

    .line 4208
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "polList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_55f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4210
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4211
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4213
    .local v1, "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getPOLCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4214
    goto/16 :goto_bcf

    .line 4197
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "polCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_573
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4199
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4200
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4201
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4202
    .local v1, "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getRxTestResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4203
    goto/16 :goto_bcf

    .line 4186
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respAntInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_587
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4188
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4189
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4191
    .local v1, "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setRxTestConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4192
    goto/16 :goto_bcf

    .line 4176
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "respAntConf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_59b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4178
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4179
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4180
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setBgsrchDeltaSleepTimerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4181
    goto/16 :goto_bcf

    .line 4166
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5ab
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4168
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4169
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4170
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setSearchRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4171
    goto/16 :goto_bcf

    .line 4156
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5bb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4158
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4159
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4160
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setSearchStoredFreqInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4161
    goto/16 :goto_bcf

    .line 4146
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5cb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4148
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4149
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4150
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setTxPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4151
    goto/16 :goto_bcf

    .line 4136
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5db
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4138
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4139
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4140
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->disableNRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4141
    goto/16 :goto_bcf

    .line 4126
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5eb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4128
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4129
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4130
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->enableSCGfailureResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4131
    goto/16 :goto_bcf

    .line 4116
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_5fb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4119
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4120
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->cfgB1offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4121
    goto/16 :goto_bcf

    .line 4106
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_60b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4108
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4109
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4110
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->cfgA2offsetResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4111
    goto/16 :goto_bcf

    .line 4096
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_61b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4098
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4099
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4100
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setServiceStateToModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4101
    goto/16 :goto_bcf

    .line 4086
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_62b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4088
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4089
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4090
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4091
    goto/16 :goto_bcf

    .line 4075
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_63b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4077
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4078
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4079
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4080
    .local v1, "mode":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->queryFemtoCellSystemSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4081
    goto/16 :goto_bcf

    .line 4065
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "mode":I
    :sswitch_64f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4067
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4068
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4069
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->selectFemtocellResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4070
    goto/16 :goto_bcf

    .line 4055
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_65f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4057
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4058
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4059
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->abortFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4060
    goto/16 :goto_bcf

    .line 4044
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_66f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4046
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4047
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4049
    .local v1, "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getFemtocellListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4050
    goto/16 :goto_bcf

    .line 4034
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "femtoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_683
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4036
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4037
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4038
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->cancelAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4039
    goto/16 :goto_bcf

    .line 4022
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_693
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4024
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4025
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4026
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 4027
    .local v1, "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4028
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getSignalStrengthWithWcdmaEcioResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V

    .line 4029
    goto/16 :goto_bcf

    .line 4011
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;
    :sswitch_6ab
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4013
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4014
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4015
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4016
    .local v1, "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getAvailableNetworksWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4017
    goto/16 :goto_bcf

    .line 4001
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "networkInfosWithAct":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/OperatorInfoWithAct;>;"
    :sswitch_6bf
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4003
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4004
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4005
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setNetworkSelectionModeManualWithActResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4006
    goto/16 :goto_bcf

    .line 3989
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_6cf
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3991
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3992
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3993
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;-><init>()V

    .line 3994
    .local v1, "memStatus":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3995
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getSmsRuimMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V

    .line 3996
    goto/16 :goto_bcf

    .line 3978
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "memStatus":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;
    :sswitch_6e7
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3980
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3981
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3983
    .local v1, "applyType":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->modifyModemTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3984
    goto/16 :goto_bcf

    .line 3968
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "applyType":I
    :sswitch_6fb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3970
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3971
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3972
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setResumeRegistrationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3973
    goto/16 :goto_bcf

    .line 3957
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_70b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3959
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3960
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3962
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3963
    goto/16 :goto_bcf

    .line 3946
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_71f
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3948
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3949
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3951
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3952
    goto/16 :goto_bcf

    .line 3935
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_733
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3937
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3938
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3939
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3940
    .local v1, "active":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getGsmBroadcastActivationRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3941
    goto/16 :goto_bcf

    .line 3924
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "active":I
    :sswitch_747
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3926
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3927
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3929
    .local v1, "langs":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3930
    goto/16 :goto_bcf

    .line 3914
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "langs":Ljava/lang/String;
    :sswitch_75b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3916
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3917
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3918
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setGsmBroadcastLangsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3919
    goto/16 :goto_bcf

    .line 3904
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_76b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3906
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3907
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3908
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->removeCbMsgResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3909
    goto/16 :goto_bcf

    .line 3894
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_77b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3896
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3897
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3898
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setEtwsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3899
    goto/16 :goto_bcf

    .line 3882
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_78b
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3884
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3885
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3886
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;-><init>()V

    .line 3887
    .local v1, "status":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3888
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getSmsMemStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;)V

    .line 3889
    goto/16 :goto_bcf

    .line 3872
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "status":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsMemStatus;
    :sswitch_7a3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3874
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3875
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3876
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3877
    goto/16 :goto_bcf

    .line 3860
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7b3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3862
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3863
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3864
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;-><init>()V

    .line 3865
    .local v1, "param":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3866
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getSmsParametersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;)V

    .line 3867
    goto/16 :goto_bcf

    .line 3850
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "param":Lvendor/mediatek/hardware/mtkradioex/V2_0/SmsParams;
    :sswitch_7cb
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3852
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3853
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3854
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->vsimOperationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3855
    goto/16 :goto_bcf

    .line 3838
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_7db
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3840
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3841
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3842
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;-><init>()V

    .line 3843
    .local v1, "event":Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3844
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->vsimNotificationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;)V

    .line 3845
    goto/16 :goto_bcf

    .line 3827
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "event":Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimEvent;
    :sswitch_7f3
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3829
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3830
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3831
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3832
    .local v1, "remainingRetries":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->supplyDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3833
    goto/16 :goto_bcf

    .line 3817
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "remainingRetries":I
    :sswitch_807
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3819
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3820
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3821
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3822
    goto/16 :goto_bcf

    .line 3800
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_817
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3802
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v12, v0

    .line 3803
    .local v12, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v12, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3805
    .local v13, "catagory":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 3806
    .local v14, "state":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3807
    .local v15, "retry_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v16

    .line 3808
    .local v16, "autolock_cnt":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 3809
    .local v17, "num_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 3810
    .local v18, "total_set":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 3811
    .local v19, "key_state":I
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->queryNetworkLockResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;IIIIIII)V

    .line 3812
    goto/16 :goto_bcf

    .line 3789
    .end local v12    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v13    # "catagory":I
    .end local v14    # "state":I
    .end local v15    # "retry_cnt":I
    .end local v16    # "autolock_cnt":I
    .end local v17    # "num_set":I
    .end local v18    # "total_set":I
    .end local v19    # "key_state":I
    :sswitch_852
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3791
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3792
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3793
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3794
    .local v1, "simPowerOnOffStatus":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getCurrentUiccCardProvisioningStatusRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3795
    goto/16 :goto_bcf

    .line 3778
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffStatus":I
    :sswitch_866
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3780
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3781
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3782
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3783
    .local v1, "simPowerOnOffResponse":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->deactivateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3784
    goto/16 :goto_bcf

    .line 3767
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffResponse":I
    :sswitch_87a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3769
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3770
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3771
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3772
    .restart local v1    # "simPowerOnOffResponse":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->activateUiccCardRsp(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3773
    goto/16 :goto_bcf

    .line 3757
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "simPowerOnOffResponse":I
    :sswitch_88e
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3759
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3760
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3761
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setSimPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3762
    goto/16 :goto_bcf

    .line 3746
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_89e
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3748
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3749
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3750
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3751
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getIccidResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3752
    goto/16 :goto_bcf

    .line 3735
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_8b2
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3737
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3738
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3739
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3740
    .restart local v1    # "response":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getATRResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3741
    goto/16 :goto_bcf

    .line 3725
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "response":Ljava/lang/String;
    :sswitch_8c6
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3727
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3728
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3729
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->triggerModeSwitchByEccResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3730
    goto/16 :goto_bcf

    .line 3715
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8d6
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3717
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3718
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3719
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setModemPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3720
    goto/16 :goto_bcf

    .line 3704
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_8e6
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3706
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3707
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3708
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3709
    .local v1, "enable":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3710
    goto/16 :goto_bcf

    .line 3694
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "enable":I
    :sswitch_8fa
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3696
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3697
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3698
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setCallSubAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3699
    goto/16 :goto_bcf

    .line 3684
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_90a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3686
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3687
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3688
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3689
    goto/16 :goto_bcf

    .line 3674
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_91a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3676
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3677
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3678
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setEccNumResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3679
    goto/16 :goto_bcf

    .line 3664
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_92a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3666
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3667
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3668
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setVoicePreferStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3669
    goto/16 :goto_bcf

    .line 3654
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_93a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3657
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3658
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->eccPreferredRatResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3659
    goto/16 :goto_bcf

    .line 3644
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_94a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3646
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3647
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3648
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setEccModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3649
    goto/16 :goto_bcf

    .line 3634
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_95a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3636
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3637
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3638
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setCallIndicationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3639
    goto/16 :goto_bcf

    .line 3624
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_96a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3626
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3627
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3628
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->hangupAllResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3629
    goto/16 :goto_bcf

    .line 3613
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_97a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3615
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3616
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3618
    .local v1, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->runGbaAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3619
    goto/16 :goto_bcf

    .line 3603
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_98e
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3605
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3606
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3607
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setCallForwardInTimeSlotResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3608
    goto/16 :goto_bcf

    .line 3592
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_99e
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3594
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3595
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3596
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3597
    .local v1, "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3598
    goto/16 :goto_bcf

    .line 3582
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "callForwardInfoExs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;>;"
    :sswitch_9b2
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3584
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3585
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3586
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3587
    goto/16 :goto_bcf

    .line 3572
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9c2
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3574
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3575
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3576
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3577
    goto/16 :goto_bcf

    .line 3560
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_9d2
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3562
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3563
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3565
    .local v1, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3566
    .local v2, "m":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->sendCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3567
    goto/16 :goto_bcf

    .line 3549
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_9ea
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3551
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3552
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3553
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3554
    .restart local v1    # "n":I
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getColrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3555
    goto/16 :goto_bcf

    .line 3537
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    :sswitch_9fe
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3539
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3540
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3541
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3542
    .restart local v1    # "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3543
    .restart local v2    # "m":I
    invoke-virtual {v9, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getColpResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3544
    goto/16 :goto_bcf

    .line 3527
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "n":I
    .end local v2    # "m":I
    :sswitch_a16
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3529
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3530
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3531
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3532
    goto/16 :goto_bcf

    .line 3517
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a26
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3519
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3520
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3521
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setPhonebookReadyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3522
    goto/16 :goto_bcf

    .line 3506
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_a36
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3508
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3509
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3511
    .local v1, "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->readUPBAasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3512
    goto/16 :goto_bcf

    .line 3495
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "aasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_a4a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3497
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3498
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3499
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3500
    .local v1, "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->readUPBAnrEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3501
    goto/16 :goto_bcf

    .line 3484
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "anrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    :sswitch_a5e
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3486
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3487
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3489
    .local v1, "sne":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->readUPBSneEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3490
    goto/16 :goto_bcf

    .line 3473
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "sne":Ljava/lang/String;
    :sswitch_a72
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3475
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3476
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3478
    .local v1, "email":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->readUPBEmailEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3479
    goto/16 :goto_bcf

    .line 3462
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "email":Ljava/lang/String;
    :sswitch_a86
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3464
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3465
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3467
    .local v1, "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->queryUPBAvailableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3468
    goto/16 :goto_bcf

    .line 3452
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "upbAvailable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_a9a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3454
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3455
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3456
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->writePhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3457
    goto/16 :goto_bcf

    .line 3441
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_aaa
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3443
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3444
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3445
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3446
    .local v1, "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->readPhoneBookEntryExtResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3447
    goto/16 :goto_bcf

    .line 3431
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbEntryExts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryExt;>;"
    :sswitch_abe
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3433
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3434
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3435
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3436
    goto/16 :goto_bcf

    .line 3419
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_ace
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3421
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3422
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3423
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;-><init>()V

    .line 3424
    .local v1, "phbMemStorage":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;
    invoke-virtual {v1, v10}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3425
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getPhoneBookMemStorageResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;)V

    .line 3426
    goto/16 :goto_bcf

    .line 3408
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbMemStorage":Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbMemStorageResponse;
    :sswitch_ae6
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3410
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3411
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3412
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3413
    .local v1, "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getPhoneBookStringsLengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3414
    goto/16 :goto_bcf

    .line 3398
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "stringLengthInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_afa
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3400
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3401
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3402
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->writeUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3403
    goto/16 :goto_bcf

    .line 3387
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b0a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3389
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3390
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3392
    .local v1, "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->readUPBGrpEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3393
    goto/16 :goto_bcf

    .line 3376
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "grpEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b1e
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3378
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3379
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3381
    .local v1, "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->readUPBGasListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3382
    goto/16 :goto_bcf

    .line 3366
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "gasList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b32
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3368
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3369
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3370
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->deleteUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3371
    goto/16 :goto_bcf

    .line 3356
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b42
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3358
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3359
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3360
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->editUPBEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3361
    goto/16 :goto_bcf

    .line 3345
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b52
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3347
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3348
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3350
    .local v1, "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->queryUPBCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3351
    goto :goto_bcf

    .line 3334
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "upbCapability":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b65
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3336
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3337
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3338
    invoke-static/range {p2 .. p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3339
    .local v1, "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->readPhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3340
    goto :goto_bcf

    .line 3324
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "phbEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/PhbEntryStructure;>;"
    :sswitch_b78
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3326
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3327
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3328
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->writePhbEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3329
    goto :goto_bcf

    .line 3313
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_b87
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3315
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3316
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3318
    .local v1, "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->queryPhbStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3319
    goto :goto_bcf

    .line 3302
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "storageInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_b9a
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3304
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3305
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3307
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->getRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3308
    goto :goto_bcf

    .line 3292
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_bad
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3294
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3295
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3296
    invoke-virtual {v9, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->setRoamingEnableResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3297
    goto :goto_bcf

    .line 3281
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_bbc
    invoke-virtual {v10, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3283
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3284
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v10}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3286
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v9, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->sendEmbmsAtCommandResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3287
    nop

    .line 5014
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "data":Ljava/lang/String;
    :goto_bcf
    return-void

    :sswitch_data_bd0
    .sparse-switch
        0x1 -> :sswitch_bbc
        0x2 -> :sswitch_bad
        0x3 -> :sswitch_b9a
        0x4 -> :sswitch_b87
        0x5 -> :sswitch_b78
        0x6 -> :sswitch_b65
        0x7 -> :sswitch_b52
        0x8 -> :sswitch_b42
        0x9 -> :sswitch_b32
        0xa -> :sswitch_b1e
        0xb -> :sswitch_b0a
        0xc -> :sswitch_afa
        0xd -> :sswitch_ae6
        0xe -> :sswitch_ace
        0xf -> :sswitch_abe
        0x10 -> :sswitch_aaa
        0x11 -> :sswitch_a9a
        0x12 -> :sswitch_a86
        0x13 -> :sswitch_a72
        0x14 -> :sswitch_a5e
        0x15 -> :sswitch_a4a
        0x16 -> :sswitch_a36
        0x17 -> :sswitch_a26
        0x18 -> :sswitch_a16
        0x19 -> :sswitch_9fe
        0x1a -> :sswitch_9ea
        0x1b -> :sswitch_9d2
        0x1c -> :sswitch_9c2
        0x1d -> :sswitch_9b2
        0x1e -> :sswitch_99e
        0x1f -> :sswitch_98e
        0x20 -> :sswitch_97a
        0x21 -> :sswitch_96a
        0x22 -> :sswitch_95a
        0x23 -> :sswitch_94a
        0x24 -> :sswitch_93a
        0x25 -> :sswitch_92a
        0x26 -> :sswitch_91a
        0x27 -> :sswitch_90a
        0x28 -> :sswitch_8fa
        0x29 -> :sswitch_8e6
        0x2a -> :sswitch_8d6
        0x2b -> :sswitch_8c6
        0x2c -> :sswitch_8b2
        0x2d -> :sswitch_89e
        0x2e -> :sswitch_88e
        0x2f -> :sswitch_87a
        0x30 -> :sswitch_866
        0x31 -> :sswitch_852
        0x32 -> :sswitch_817
        0x33 -> :sswitch_807
        0x34 -> :sswitch_7f3
        0x35 -> :sswitch_7db
        0x36 -> :sswitch_7cb
        0x37 -> :sswitch_7b3
        0x38 -> :sswitch_7a3
        0x39 -> :sswitch_78b
        0x3a -> :sswitch_77b
        0x3b -> :sswitch_76b
        0x3c -> :sswitch_75b
        0x3d -> :sswitch_747
        0x3e -> :sswitch_733
        0x3f -> :sswitch_71f
        0x40 -> :sswitch_70b
        0x41 -> :sswitch_6fb
        0x42 -> :sswitch_6e7
        0x43 -> :sswitch_6cf
        0x44 -> :sswitch_6bf
        0x45 -> :sswitch_6ab
        0x46 -> :sswitch_693
        0x47 -> :sswitch_683
        0x48 -> :sswitch_66f
        0x49 -> :sswitch_65f
        0x4a -> :sswitch_64f
        0x4b -> :sswitch_63b
        0x4c -> :sswitch_62b
        0x4d -> :sswitch_61b
        0x4e -> :sswitch_60b
        0x4f -> :sswitch_5fb
        0x50 -> :sswitch_5eb
        0x51 -> :sswitch_5db
        0x52 -> :sswitch_5cb
        0x53 -> :sswitch_5bb
        0x54 -> :sswitch_5ab
        0x55 -> :sswitch_59b
        0x56 -> :sswitch_587
        0x57 -> :sswitch_573
        0x58 -> :sswitch_55f
        0x59 -> :sswitch_54b
        0x5a -> :sswitch_53b
        0x5b -> :sswitch_52b
        0x5c -> :sswitch_51b
        0x5d -> :sswitch_50b
        0x5e -> :sswitch_4fb
        0x5f -> :sswitch_4eb
        0x60 -> :sswitch_4db
        0x61 -> :sswitch_4cb
        0x62 -> :sswitch_4bb
        0x63 -> :sswitch_4a7
        0x64 -> :sswitch_497
        0x65 -> :sswitch_487
        0x66 -> :sswitch_477
        0x67 -> :sswitch_467
        0x68 -> :sswitch_453
        0x69 -> :sswitch_443
        0x6a -> :sswitch_433
        0x6b -> :sswitch_41f
        0x6c -> :sswitch_40f
        0x6d -> :sswitch_3ff
        0x6e -> :sswitch_3eb
        0x6f -> :sswitch_3db
        0x70 -> :sswitch_3cb
        0x71 -> :sswitch_3bb
        0x72 -> :sswitch_3ab
        0x73 -> :sswitch_39b
        0x74 -> :sswitch_38b
        0x75 -> :sswitch_37b
        0x76 -> :sswitch_367
        0x77 -> :sswitch_357
        0x78 -> :sswitch_343
        0x79 -> :sswitch_333
        0x7a -> :sswitch_31b
        0x7b -> :sswitch_30b
        0x7c -> :sswitch_2fb
        0x7d -> :sswitch_2e3
        0x7e -> :sswitch_2d3
        0x7f -> :sswitch_2c3
        0x80 -> :sswitch_2b3
        0x81 -> :sswitch_297
        0x82 -> :sswitch_287
        0x83 -> :sswitch_273
        0x84 -> :sswitch_263
        0x85 -> :sswitch_24f
        0x86 -> :sswitch_237
        0x87 -> :sswitch_223
        0x88 -> :sswitch_213
        0x89 -> :sswitch_1ff
        0x8a -> :sswitch_1ef
        0x8b -> :sswitch_1df
        0x8c -> :sswitch_1cb
        0x8d -> :sswitch_1bb
        0x8e -> :sswitch_1a7
        0x8f -> :sswitch_193
        0x90 -> :sswitch_183
        0x91 -> :sswitch_16f
        0x92 -> :sswitch_15b
        0x93 -> :sswitch_147
        0x94 -> :sswitch_137
        0x95 -> :sswitch_11f
        0x96 -> :sswitch_10f
        0x97 -> :sswitch_f7
        0x98 -> :sswitch_e7
        0x99 -> :sswitch_d3
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

    .line 3232
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3260
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.4::IMtkRadioExResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3261
    return-object p0

    .line 3263
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

    .line 3267
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 3268
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 3222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_4/IMtkRadioExResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 3254
    const/4 v0, 0x1

    return v0
.end method
