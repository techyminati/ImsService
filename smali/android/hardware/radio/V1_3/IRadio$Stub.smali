.class public abstract Landroid/hardware/radio/V1_3/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_3/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_3/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2833
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2836
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

    .line 2852
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2892
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2893
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2894
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2895
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2896
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

    .line 2864
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
        -0x5ft
        -0x3at
        -0x50t
        0x76t
        0x1bt
        -0x35t
        -0x77t
        -0x2at
        -0x41t
        0x15t
        -0x5ft
        0x56t
        -0x7t
        0x30t
        0x6bt
        -0x80t
        -0x70t
        -0x4dt
        -0x57t
        0x16t
        -0x5ft
        0x5ft
        -0x16t
        0x16t
        -0x77t
        -0x4ct
        -0x50t
        -0x3ft
        0x73t
        -0x72t
        0x38t
        0x2ft
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

    .line 2841
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.3::IRadio"

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

    .line 2858
    const-string v0, "android.hardware.radio@1.3::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2880
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2902
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2904
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 23
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2932
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hardware.radio@1.3::IRadio"

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hardware.radio@1.0::IRadio"

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 5294
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    move v0, v5

    .line 5295
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_136

    .line 5296
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5297
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5298
    goto/16 :goto_8

    .line 5281
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v5, v6

    :cond_1
    move v1, v5

    .line 5282
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_2

    .line 5283
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5285
    goto/16 :goto_8

    .line 5286
    :cond_2
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5288
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->notifySyspropsChanged()V

    .line 5289
    goto/16 :goto_8

    .line 5265
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    move v1, v6

    .line 5266
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 5267
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5268
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5269
    goto/16 :goto_8

    .line 5270
    :cond_4
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5272
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5273
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5274
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5276
    goto/16 :goto_8

    .line 5250
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

    .line 5251
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 5252
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5254
    goto/16 :goto_8

    .line 5255
    :cond_6
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5257
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->ping()V

    .line 5258
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5260
    goto/16 :goto_8

    .line 5240
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v5, v6

    :cond_7
    move v0, v5

    .line 5241
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_136

    .line 5242
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5243
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5244
    goto/16 :goto_8

    .line 5227
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v5, v6

    :cond_8
    move v1, v5

    .line 5228
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_9

    .line 5229
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5230
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5231
    goto/16 :goto_8

    .line 5232
    :cond_9
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5234
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setHALInstrumentation()V

    .line 5235
    goto/16 :goto_8

    .line 5188
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v6, v5

    :goto_2
    move v1, v6

    .line 5189
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 5190
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5192
    goto/16 :goto_8

    .line 5193
    :cond_b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5195
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5196
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5198
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5200
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5201
    .local v3, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v2, v6, v7, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5202
    const-wide/16 v6, 0xc

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5203
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 5204
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 5206
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 5207
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 5209
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v13, 0x20

    if-ne v9, v13, :cond_c

    .line 5213
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5214
    nop

    .line 5204
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5210
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v9, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 5217
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5219
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5221
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5222
    goto/16 :goto_8

    .line 5172
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

    .line 5173
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 5174
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5175
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5176
    goto/16 :goto_8

    .line 5177
    :cond_f
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5179
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5180
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5181
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5183
    goto/16 :goto_8

    .line 5155
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

    .line 5156
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 5157
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5159
    goto/16 :goto_8

    .line 5160
    :cond_11
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5163
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5164
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5165
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5166
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5167
    goto/16 :goto_8

    .line 5139
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

    .line 5140
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 5141
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5143
    goto/16 :goto_8

    .line 5144
    :cond_13
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5146
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5147
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5148
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5149
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5150
    goto/16 :goto_8

    .line 5125
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_14

    move v5, v6

    :cond_14
    move v1, v5

    .line 5126
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_15

    .line 5127
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5129
    goto/16 :goto_8

    .line 5130
    :cond_15
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5133
    .local v0, "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getModemStackStatus(I)V

    .line 5134
    goto/16 :goto_8

    .line 5110
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_16

    move v5, v6

    :cond_16
    move v1, v5

    .line 5111
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_17

    .line 5112
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5113
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5114
    goto/16 :goto_8

    .line 5115
    :cond_17
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5117
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5118
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5119
    .local v2, "on":Z
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->enableModem(IZ)V

    .line 5120
    goto/16 :goto_8

    .line 5094
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "on":Z
    :pswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_18

    move v5, v6

    :cond_18
    move v1, v5

    .line 5095
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v6, :cond_19

    .line 5096
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5098
    goto/16 :goto_8

    .line 5099
    :cond_19
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5102
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5103
    .local v2, "specifyChannels":Z
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5104
    .local v3, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 5105
    goto/16 :goto_8

    .line 5078
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "specifyChannels":Z
    .end local v3    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v5, v6

    :cond_1a
    move v0, v5

    .line 5079
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_1b

    .line 5080
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5082
    goto/16 :goto_8

    .line 5083
    :cond_1b
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5086
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5087
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5088
    .local v3, "reason":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 5089
    goto/16 :goto_8

    .line 5055
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v5, v6

    :cond_1c
    move v13, v5

    .line 5056
    .local v13, "_hidl_is_oneway":Z
    if-eq v13, v6, :cond_1d

    .line 5057
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5059
    goto/16 :goto_8

    .line 5060
    :cond_1d
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5063
    .local v14, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5064
    .local v15, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 5065
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 5067
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 5068
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 5069
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 5070
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 5071
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 5072
    .local v21, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

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

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5073
    goto/16 :goto_8

    .line 5035
    .end local v13    # "_hidl_is_oneway":Z
    .end local v14    # "serial":I
    .end local v15    # "accessNetwork":I
    .end local v16    # "modemCognitive":Z
    .end local v17    # "roamingAllowed":Z
    .end local v18    # "isRoaming":Z
    .end local v19    # "reason":I
    .end local v20    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v5, v6

    :cond_1e
    move v8, v5

    .line 5036
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v6, :cond_1f

    .line 5037
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5038
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5039
    goto/16 :goto_8

    .line 5040
    :cond_1f
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5042
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5043
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5044
    .local v13, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5045
    .local v14, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5046
    .local v15, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 5047
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 5048
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 5049
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5050
    goto/16 :goto_8

    .line 5017
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v13    # "hysteresisMs":I
    .end local v14    # "hysteresisDlKbps":I
    .end local v15    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v5, v6

    :cond_20
    move v7, v5

    .line 5018
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_21

    .line 5019
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5020
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5021
    goto/16 :goto_8

    .line 5022
    :cond_21
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5024
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5025
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5026
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5027
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 5028
    .local v13, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5029
    .local v14, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 5030
    goto/16 :goto_8

    .line 5002
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v13    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "accessNetwork":I
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v5, v6

    :cond_22
    move v0, v5

    .line 5003
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_23

    .line 5004
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5005
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5006
    goto/16 :goto_8

    .line 5007
    :cond_23
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5010
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5011
    .local v2, "indicationFilter":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 5012
    goto/16 :goto_8

    .line 4986
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v5, v6

    :cond_24
    move v0, v5

    .line 4987
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_25

    .line 4988
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4989
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4990
    goto/16 :goto_8

    .line 4991
    :cond_25
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4993
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4994
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 4995
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4996
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 4997
    goto/16 :goto_8

    .line 4971
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v5, v6

    :cond_26
    move v0, v5

    .line 4972
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_27

    .line 4973
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4974
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4975
    goto/16 :goto_8

    .line 4976
    :cond_27
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4979
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4980
    .local v2, "sessionHandle":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopKeepalive(II)V

    .line 4981
    goto/16 :goto_8

    .line 4955
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v5, v6

    :cond_28
    move v0, v5

    .line 4956
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_29

    .line 4957
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4958
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4959
    goto/16 :goto_8

    .line 4960
    :cond_29
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4962
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4963
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4964
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4965
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4966
    goto/16 :goto_8

    .line 4941
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v5, v6

    :cond_2a
    move v0, v5

    .line 4942
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2b

    .line 4943
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4944
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4945
    goto/16 :goto_8

    .line 4946
    :cond_2b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4948
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4949
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopNetworkScan(I)V

    .line 4950
    goto/16 :goto_8

    .line 4925
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v5, v6

    :cond_2c
    move v0, v5

    .line 4926
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2d

    .line 4927
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4928
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4929
    goto/16 :goto_8

    .line 4930
    :cond_2d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4933
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4934
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4935
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4936
    goto/16 :goto_8

    .line 4910
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v5, v6

    :cond_2e
    move v0, v5

    .line 4911
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_2f

    .line 4912
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4914
    goto/16 :goto_8

    .line 4915
    :cond_2f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4917
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4918
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4919
    .local v2, "powerUp":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4920
    goto/16 :goto_8

    .line 4894
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v5, v6

    :cond_30
    move v0, v5

    .line 4895
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_31

    .line 4896
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4898
    goto/16 :goto_8

    .line 4899
    :cond_31
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4902
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4903
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4904
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4905
    goto/16 :goto_8

    .line 4881
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v5, v6

    :cond_32
    move v0, v5

    .line 4882
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_33

    .line 4883
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4884
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4885
    goto/16 :goto_8

    .line 4886
    :cond_33
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4888
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->responseAcknowledgement()V

    .line 4889
    goto/16 :goto_8

    .line 4866
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v5, v6

    :cond_34
    move v0, v5

    .line 4867
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_35

    .line 4868
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4869
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4870
    goto/16 :goto_8

    .line 4871
    :cond_35
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4873
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4874
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4875
    .local v2, "powerUp":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4876
    goto/16 :goto_8

    .line 4851
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v5, v6

    :cond_36
    move v0, v5

    .line 4852
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_37

    .line 4853
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4854
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4855
    goto/16 :goto_8

    .line 4856
    :cond_37
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4858
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4859
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4860
    .local v2, "indicationFilter":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setIndicationFilter(II)V

    .line 4861
    goto/16 :goto_8

    .line 4835
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v5, v6

    :cond_38
    move v0, v5

    .line 4836
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_39

    .line 4837
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4838
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4839
    goto/16 :goto_8

    .line 4840
    :cond_39
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4842
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4843
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4844
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4845
    .local v3, "state":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4846
    goto/16 :goto_8

    .line 4821
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v5, v6

    :cond_3a
    move v0, v5

    .line 4822
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3b

    .line 4823
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4824
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4825
    goto/16 :goto_8

    .line 4826
    :cond_3b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4829
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4830
    goto/16 :goto_8

    .line 4804
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v5, v6

    :cond_3c
    move v0, v5

    .line 4805
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3d

    .line 4806
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4807
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4808
    goto/16 :goto_8

    .line 4809
    :cond_3d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4812
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4813
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4814
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4815
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4816
    goto/16 :goto_8

    .line 4790
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v5, v6

    :cond_3e
    move v0, v5

    .line 4791
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_3f

    .line 4792
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4793
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4794
    goto/16 :goto_8

    .line 4795
    :cond_3f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4797
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4798
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4799
    goto/16 :goto_8

    .line 4776
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v5, v6

    :cond_40
    move v0, v5

    .line 4777
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_41

    .line 4778
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4780
    goto/16 :goto_8

    .line 4781
    :cond_41
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4783
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4784
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->pullLceData(I)V

    .line 4785
    goto/16 :goto_8

    .line 4762
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v5, v6

    :cond_42
    move v0, v5

    .line 4763
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_43

    .line 4764
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4765
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4766
    goto/16 :goto_8

    .line 4767
    :cond_43
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4769
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4770
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopLceService(I)V

    .line 4771
    goto/16 :goto_8

    .line 4746
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v5, v6

    :cond_44
    move v0, v5

    .line 4747
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_45

    .line 4748
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4750
    goto/16 :goto_8

    .line 4751
    :cond_45
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4754
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4755
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4756
    .local v3, "pullMode":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startLceService(IIZ)V

    .line 4757
    goto/16 :goto_8

    .line 4730
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v5, v6

    :cond_46
    move v0, v5

    .line 4731
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_47

    .line 4732
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4734
    goto/16 :goto_8

    .line 4735
    :cond_47
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4738
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4739
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4740
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4741
    goto/16 :goto_8

    .line 4716
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v5, v6

    :cond_48
    move v0, v5

    .line 4717
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_49

    .line 4718
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4720
    goto/16 :goto_8

    .line 4721
    :cond_49
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4724
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getRadioCapability(I)V

    .line 4725
    goto/16 :goto_8

    .line 4702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v5, v6

    :cond_4a
    move v0, v5

    .line 4703
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4b

    .line 4704
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4706
    goto/16 :goto_8

    .line 4707
    :cond_4b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4710
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestShutdown(I)V

    .line 4711
    goto/16 :goto_8

    .line 4686
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v5, v6

    :cond_4c
    move v0, v5

    .line 4687
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4d

    .line 4688
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4690
    goto/16 :goto_8

    .line 4691
    :cond_4d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4694
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4695
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4696
    .local v3, "isRoaming":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4697
    goto/16 :goto_8

    .line 4669
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v5, v6

    :cond_4e
    move v0, v5

    .line 4670
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_4f

    .line 4671
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4672
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4673
    goto/16 :goto_8

    .line 4674
    :cond_4f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4677
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4678
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4679
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4680
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4681
    goto/16 :goto_8

    .line 4655
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v5, v6

    :cond_50
    move v0, v5

    .line 4656
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_51

    .line 4657
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4659
    goto/16 :goto_8

    .line 4660
    :cond_51
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4662
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4663
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getHardwareConfig(I)V

    .line 4664
    goto/16 :goto_8

    .line 4640
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v5, v6

    :cond_52
    move v0, v5

    .line 4641
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_53

    .line 4642
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4644
    goto/16 :goto_8

    .line 4645
    :cond_53
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4647
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4648
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4649
    .local v2, "allow":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4650
    goto/16 :goto_8

    .line 4624
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v5, v6

    :cond_54
    move v0, v5

    .line 4625
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_55

    .line 4626
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4628
    goto/16 :goto_8

    .line 4629
    :cond_55
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4632
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4633
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4634
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4635
    goto/16 :goto_8

    .line 4609
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v5, v6

    :cond_56
    move v0, v5

    .line 4610
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_57

    .line 4611
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4612
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4613
    goto/16 :goto_8

    .line 4614
    :cond_57
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4616
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4617
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4618
    .local v2, "resetType":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvResetConfig(II)V

    .line 4619
    goto/16 :goto_8

    .line 4594
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v5, v6

    :cond_58
    move v0, v5

    .line 4595
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_59

    .line 4596
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4597
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4598
    goto/16 :goto_8

    .line 4599
    :cond_59
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4602
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4603
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4604
    goto/16 :goto_8

    .line 4578
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v5, v6

    :cond_5a
    move v0, v5

    .line 4579
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5b

    .line 4580
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4581
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4582
    goto/16 :goto_8

    .line 4583
    :cond_5b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4586
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4587
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4588
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4589
    goto/16 :goto_8

    .line 4563
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v5, v6

    :cond_5c
    move v0, v5

    .line 4564
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5d

    .line 4565
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4566
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4567
    goto/16 :goto_8

    .line 4568
    :cond_5d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4571
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4572
    .local v2, "itemId":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->nvReadItem(II)V

    .line 4573
    goto/16 :goto_8

    .line 4547
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v5, v6

    :cond_5e
    move v0, v5

    .line 4548
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_5f

    .line 4549
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4551
    goto/16 :goto_8

    .line 4552
    :cond_5f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4555
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4556
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4557
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4558
    goto/16 :goto_8

    .line 4532
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v5, v6

    :cond_60
    move v0, v5

    .line 4533
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_61

    .line 4534
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4535
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4536
    goto/16 :goto_8

    .line 4537
    :cond_61
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4540
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4541
    .local v2, "channelId":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4542
    goto/16 :goto_8

    .line 4516
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v5, v6

    :cond_62
    move v0, v5

    .line 4517
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_63

    .line 4518
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4520
    goto/16 :goto_8

    .line 4521
    :cond_63
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4523
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4524
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4525
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4526
    .local v3, "p2":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4527
    goto/16 :goto_8

    .line 4500
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v5, v6

    :cond_64
    move v0, v5

    .line 4501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_65

    .line 4502
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4504
    goto/16 :goto_8

    .line 4505
    :cond_65
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4508
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4509
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4510
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4511
    goto/16 :goto_8

    .line 4484
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v5, v6

    :cond_66
    move v0, v5

    .line 4485
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_67

    .line 4486
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4488
    goto/16 :goto_8

    .line 4489
    :cond_67
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4492
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4493
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4494
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4495
    goto/16 :goto_8

    .line 4470
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v5, v6

    :cond_68
    move v0, v5

    .line 4471
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_69

    .line 4472
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4473
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4474
    goto/16 :goto_8

    .line 4475
    :cond_69
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4478
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4479
    goto/16 :goto_8

    .line 4452
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v5, v6

    :cond_6a
    move v0, v5

    .line 4453
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6b

    .line 4454
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4455
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4456
    goto/16 :goto_8

    .line 4457
    :cond_6b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4460
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4461
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4462
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4463
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4464
    .local v4, "isRoaming":Z
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4465
    goto/16 :goto_8

    .line 4437
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v5, v6

    :cond_6c
    move v0, v5

    .line 4438
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6d

    .line 4439
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4441
    goto/16 :goto_8

    .line 4442
    :cond_6d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4445
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4446
    .local v2, "rate":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4447
    goto/16 :goto_8

    .line 4423
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v5, v6

    :cond_6e
    move v0, v5

    .line 4424
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_6f

    .line 4425
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4426
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4427
    goto/16 :goto_8

    .line 4428
    :cond_6f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4431
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCellInfoList(I)V

    .line 4432
    goto/16 :goto_8

    .line 4409
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v5, v6

    :cond_70
    move v0, v5

    .line 4410
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_71

    .line 4411
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4412
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4413
    goto/16 :goto_8

    .line 4414
    :cond_71
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4417
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4418
    goto/16 :goto_8

    .line 4394
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v5, v6

    :cond_72
    move v0, v5

    .line 4395
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_73

    .line 4396
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4398
    goto/16 :goto_8

    .line 4399
    :cond_73
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4402
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4403
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4404
    goto/16 :goto_8

    .line 4378
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v5, v6

    :cond_74
    move v0, v5

    .line 4379
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_75

    .line 4380
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4381
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4382
    goto/16 :goto_8

    .line 4383
    :cond_75
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4386
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4387
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4388
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4389
    goto/16 :goto_8

    .line 4363
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v5, v6

    :cond_76
    move v0, v5

    .line 4364
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_77

    .line 4365
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4367
    goto/16 :goto_8

    .line 4368
    :cond_77
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4371
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4372
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4373
    goto/16 :goto_8

    .line 4349
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v5, v6

    :cond_78
    move v0, v5

    .line 4350
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_79

    .line 4351
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4352
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4353
    goto/16 :goto_8

    .line 4354
    :cond_79
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4356
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4357
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4358
    goto/16 :goto_8

    .line 4335
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v5, v6

    :cond_7a
    move v0, v5

    .line 4336
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7b

    .line 4337
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4338
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4339
    goto/16 :goto_8

    .line 4340
    :cond_7b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4342
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4343
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4344
    goto/16 :goto_8

    .line 4320
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v5, v6

    :cond_7c
    move v0, v5

    .line 4321
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7d

    .line 4322
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4323
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4324
    goto/16 :goto_8

    .line 4325
    :cond_7d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4327
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4328
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4329
    .local v2, "available":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4330
    goto/16 :goto_8

    .line 4305
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v5, v6

    :cond_7e
    move v0, v5

    .line 4306
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_7f

    .line 4307
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4308
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4309
    goto/16 :goto_8

    .line 4310
    :cond_7f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4313
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4314
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4315
    goto/16 :goto_8

    .line 4291
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v5, v6

    :cond_80
    move v0, v5

    .line 4292
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_81

    .line 4293
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4294
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4295
    goto/16 :goto_8

    .line 4296
    :cond_81
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4298
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4299
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getSmscAddress(I)V

    .line 4300
    goto/16 :goto_8

    .line 4277
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v5, v6

    :cond_82
    move v0, v5

    .line 4278
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_83

    .line 4279
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4280
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4281
    goto/16 :goto_8

    .line 4282
    :cond_83
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4285
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 4286
    goto/16 :goto_8

    .line 4263
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v5, v6

    :cond_84
    move v0, v5

    .line 4264
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_85

    .line 4265
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4267
    goto/16 :goto_8

    .line 4268
    :cond_85
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4270
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4271
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDeviceIdentity(I)V

    .line 4272
    goto/16 :goto_8

    .line 4248
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v5, v6

    :cond_86
    move v0, v5

    .line 4249
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_87

    .line 4250
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4251
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4252
    goto/16 :goto_8

    .line 4253
    :cond_87
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4256
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4257
    .local v2, "index":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 4258
    goto/16 :goto_8

    .line 4232
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v5, v6

    :cond_88
    move v0, v5

    .line 4233
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_89

    .line 4234
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4235
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4236
    goto/16 :goto_8

    .line 4237
    :cond_89
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4240
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 4241
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4242
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 4243
    goto/16 :goto_8

    .line 4218
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v5, v6

    :cond_8a
    move v0, v5

    .line 4219
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8b

    .line 4220
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4221
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4222
    goto/16 :goto_8

    .line 4223
    :cond_8b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4225
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4226
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCDMASubscription(I)V

    .line 4227
    goto/16 :goto_8

    .line 4203
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v5, v6

    :cond_8c
    move v0, v5

    .line 4204
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8d

    .line 4205
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4206
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4207
    goto/16 :goto_8

    .line 4208
    :cond_8d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4210
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4211
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4212
    .local v2, "activate":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 4213
    goto/16 :goto_8

    .line 4188
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v5, v6

    :cond_8e
    move v0, v5

    .line 4189
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_8f

    .line 4190
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4192
    goto/16 :goto_8

    .line 4193
    :cond_8f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4196
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4197
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4198
    goto/16 :goto_8

    .line 4174
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v5, v6

    :cond_90
    move v0, v5

    .line 4175
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_91

    .line 4176
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4178
    goto/16 :goto_8

    .line 4179
    :cond_91
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4182
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 4183
    goto/16 :goto_8

    .line 4159
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v5, v6

    :cond_92
    move v0, v5

    .line 4160
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_93

    .line 4161
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4162
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4163
    goto/16 :goto_8

    .line 4164
    :cond_93
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4167
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4168
    .local v2, "activate":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 4169
    goto/16 :goto_8

    .line 4144
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v5, v6

    :cond_94
    move v0, v5

    .line 4145
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_95

    .line 4146
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4147
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4148
    goto/16 :goto_8

    .line 4149
    :cond_95
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4152
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4153
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4154
    goto/16 :goto_8

    .line 4130
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v5, v6

    :cond_96
    move v0, v5

    .line 4131
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_97

    .line 4132
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4134
    goto/16 :goto_8

    .line 4135
    :cond_97
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4138
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 4139
    goto/16 :goto_8

    .line 4114
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v5, v6

    :cond_98
    move v0, v5

    .line 4115
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_99

    .line 4116
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4117
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4118
    goto/16 :goto_8

    .line 4119
    :cond_99
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4122
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 4123
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4124
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 4125
    goto/16 :goto_8

    .line 4098
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v5, v6

    :cond_9a
    move v0, v5

    .line 4099
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9b

    .line 4100
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4101
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4102
    goto/16 :goto_8

    .line 4103
    :cond_9b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4105
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4106
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 4107
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4108
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 4109
    goto/16 :goto_8

    .line 4081
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v5, v6

    :cond_9c
    move v0, v5

    .line 4082
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9d

    .line 4083
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4085
    goto/16 :goto_8

    .line 4086
    :cond_9d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4089
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4090
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4091
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4092
    .local v4, "off":I
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 4093
    goto/16 :goto_8

    .line 4066
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v5, v6

    :cond_9e
    move v0, v5

    .line 4067
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_9f

    .line 4068
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4069
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4070
    goto/16 :goto_8

    .line 4071
    :cond_9f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4074
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4075
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 4076
    goto/16 :goto_8

    .line 4052
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v5, v6

    :cond_a0
    move v0, v5

    .line 4053
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a1

    .line 4054
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4055
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4056
    goto/16 :goto_8

    .line 4057
    :cond_a1
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4060
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 4061
    goto/16 :goto_8

    .line 4037
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v5, v6

    :cond_a2
    move v0, v5

    .line 4038
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a3

    .line 4039
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4040
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4041
    goto/16 :goto_8

    .line 4042
    :cond_a3
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4044
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4045
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4046
    .local v2, "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4047
    goto/16 :goto_8

    .line 4023
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v5, v6

    :cond_a4
    move v0, v5

    .line 4024
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a5

    .line 4025
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4027
    goto/16 :goto_8

    .line 4028
    :cond_a5
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4031
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getTTYMode(I)V

    .line 4032
    goto/16 :goto_8

    .line 4008
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v5, v6

    :cond_a6
    move v0, v5

    .line 4009
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a7

    .line 4010
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4011
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4012
    goto/16 :goto_8

    .line 4013
    :cond_a7
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4015
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4016
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4017
    .local v2, "mode":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setTTYMode(II)V

    .line 4018
    goto/16 :goto_8

    .line 3994
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v5, v6

    :cond_a8
    move v0, v5

    .line 3995
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_a9

    .line 3996
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3997
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3998
    goto/16 :goto_8

    .line 3999
    :cond_a9
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4002
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4003
    goto/16 :goto_8

    .line 3979
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v5, v6

    :cond_aa
    move v0, v5

    .line 3980
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ab

    .line 3981
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3982
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3983
    goto/16 :goto_8

    .line 3984
    :cond_ab
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3987
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3988
    .local v2, "type":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3989
    goto/16 :goto_8

    .line 3964
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v5, v6

    :cond_ac
    move v0, v5

    .line 3965
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ad

    .line 3966
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3967
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3968
    goto/16 :goto_8

    .line 3969
    :cond_ad
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3972
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3973
    .local v2, "cdmaSub":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3974
    goto/16 :goto_8

    .line 3949
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v5, v6

    :cond_ae
    move v0, v5

    .line 3950
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_af

    .line 3951
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3952
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3953
    goto/16 :goto_8

    .line 3954
    :cond_af
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3956
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3957
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3958
    .local v2, "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3959
    goto/16 :goto_8

    .line 3935
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v5, v6

    :cond_b0
    move v0, v5

    .line 3936
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b1

    .line 3937
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3939
    goto/16 :goto_8

    .line 3940
    :cond_b1
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3943
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getNeighboringCids(I)V

    .line 3944
    goto/16 :goto_8

    .line 3921
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v5, v6

    :cond_b2
    move v0, v5

    .line 3922
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b3

    .line 3923
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3924
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3925
    goto/16 :goto_8

    .line 3926
    :cond_b3
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3929
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3930
    goto/16 :goto_8

    .line 3906
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v5, v6

    :cond_b4
    move v0, v5

    .line 3907
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b5

    .line 3908
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3909
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3910
    goto/16 :goto_8

    .line 3911
    :cond_b5
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3914
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3915
    .local v2, "nwType":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3916
    goto/16 :goto_8

    .line 3892
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v5, v6

    :cond_b6
    move v0, v5

    .line 3893
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b7

    .line 3894
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3895
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3896
    goto/16 :goto_8

    .line 3897
    :cond_b7
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3899
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3900
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3901
    goto/16 :goto_8

    .line 3877
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v5, v6

    :cond_b8
    move v0, v5

    .line 3878
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_b9

    .line 3879
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3880
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3881
    goto/16 :goto_8

    .line 3882
    :cond_b9
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3885
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3886
    .local v2, "accept":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3887
    goto/16 :goto_8

    .line 3862
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v5, v6

    :cond_ba
    move v0, v5

    .line 3863
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bb

    .line 3864
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3865
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3866
    goto/16 :goto_8

    .line 3867
    :cond_bb
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3870
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3871
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3872
    goto/16 :goto_8

    .line 3847
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v5, v6

    :cond_bc
    move v0, v5

    .line 3848
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bd

    .line 3849
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3851
    goto/16 :goto_8

    .line 3852
    :cond_bd
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3855
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3856
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3857
    goto/16 :goto_8

    .line 3833
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v5, v6

    :cond_be
    move v0, v5

    .line 3834
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_bf

    .line 3835
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3837
    goto/16 :goto_8

    .line 3838
    :cond_bf
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3841
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3842
    goto/16 :goto_8

    .line 3818
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v5, v6

    :cond_c0
    move v0, v5

    .line 3819
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c1

    .line 3820
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3822
    goto/16 :goto_8

    .line 3823
    :cond_c1
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3825
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3826
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3827
    .local v2, "mode":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setBandMode(II)V

    .line 3828
    goto/16 :goto_8

    .line 3803
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v5, v6

    :cond_c2
    move v0, v5

    .line 3804
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c3

    .line 3805
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3807
    goto/16 :goto_8

    .line 3808
    :cond_c3
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3811
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3812
    .local v2, "index":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3813
    goto/16 :goto_8

    .line 3787
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v5, v6

    :cond_c4
    move v0, v5

    .line 3788
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c5

    .line 3789
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3791
    goto/16 :goto_8

    .line 3792
    :cond_c5
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3795
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3796
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3797
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3798
    goto/16 :goto_8

    .line 3772
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v5, v6

    :cond_c6
    move v0, v5

    .line 3773
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c7

    .line 3774
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3776
    goto/16 :goto_8

    .line 3777
    :cond_c7
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3780
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3781
    .local v2, "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3782
    goto/16 :goto_8

    .line 3758
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v5, v6

    :cond_c8
    move v0, v5

    .line 3759
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_c9

    .line 3760
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3762
    goto/16 :goto_8

    .line 3763
    :cond_c9
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3766
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDataCallList(I)V

    .line 3767
    goto/16 :goto_8

    .line 3744
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v5, v6

    :cond_ca
    move v0, v5

    .line 3745
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cb

    .line 3746
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3747
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3748
    goto/16 :goto_8

    .line 3749
    :cond_cb
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3751
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3752
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getClip(I)V

    .line 3753
    goto/16 :goto_8

    .line 3730
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v5, v6

    :cond_cc
    move v0, v5

    .line 3731
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cd

    .line 3732
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3734
    goto/16 :goto_8

    .line 3735
    :cond_cd
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3738
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getMute(I)V

    .line 3739
    goto/16 :goto_8

    .line 3715
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v5, v6

    :cond_ce
    move v0, v5

    .line 3716
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_cf

    .line 3717
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3718
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3719
    goto/16 :goto_8

    .line 3720
    :cond_cf
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3722
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3723
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3724
    .restart local v2    # "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setMute(IZ)V

    .line 3725
    goto/16 :goto_8

    .line 3700
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v5, v6

    :cond_d0
    move v0, v5

    .line 3701
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d1

    .line 3702
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3703
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3704
    goto/16 :goto_8

    .line 3705
    :cond_d1
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3707
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3708
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3709
    .local v2, "gsmIndex":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->separateConnection(II)V

    .line 3710
    goto/16 :goto_8

    .line 3686
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v5, v6

    :cond_d2
    move v0, v5

    .line 3687
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d3

    .line 3688
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3690
    goto/16 :goto_8

    .line 3691
    :cond_d3
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3694
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getBasebandVersion(I)V

    .line 3695
    goto/16 :goto_8

    .line 3672
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v5, v6

    :cond_d4
    move v0, v5

    .line 3673
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d5

    .line 3674
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3675
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3676
    goto/16 :goto_8

    .line 3677
    :cond_d5
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3679
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3680
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->stopDtmf(I)V

    .line 3681
    goto/16 :goto_8

    .line 3657
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v5, v6

    :cond_d6
    move v0, v5

    .line 3658
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d7

    .line 3659
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3660
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3661
    goto/16 :goto_8

    .line 3662
    :cond_d7
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3664
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3665
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3666
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3667
    goto/16 :goto_8

    .line 3643
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v5, v6

    :cond_d8
    move v0, v5

    .line 3644
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_d9

    .line 3645
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3647
    goto/16 :goto_8

    .line 3648
    :cond_d9
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3650
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3651
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3652
    goto/16 :goto_8

    .line 3628
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v5, v6

    :cond_da
    move v0, v5

    .line 3629
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_db

    .line 3630
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3632
    goto/16 :goto_8

    .line 3633
    :cond_db
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3635
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3636
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3637
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3638
    goto/16 :goto_8

    .line 3614
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v5, v6

    :cond_dc
    move v0, v5

    .line 3615
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_dd

    .line 3616
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3617
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3618
    goto/16 :goto_8

    .line 3619
    :cond_dd
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3621
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3622
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3623
    goto/16 :goto_8

    .line 3600
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v5, v6

    :cond_de
    move v0, v5

    .line 3601
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_df

    .line 3602
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3603
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3604
    goto/16 :goto_8

    .line 3605
    :cond_df
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3607
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3608
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3609
    goto/16 :goto_8

    .line 3583
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v5, v6

    :cond_e0
    move v0, v5

    .line 3584
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e1

    .line 3585
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3586
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3587
    goto/16 :goto_8

    .line 3588
    :cond_e1
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3591
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3592
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3593
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3594
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    goto/16 :goto_8

    .line 3564
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v5, v6

    :cond_e2
    move v7, v5

    .line 3565
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_e3

    .line 3566
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3567
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3568
    goto/16 :goto_8

    .line 3569
    :cond_e3
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3572
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3573
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 3574
    .local v13, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3575
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3576
    .local v15, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3577
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3578
    goto/16 :goto_8

    .line 3546
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v13    # "lockState":Z
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v5, v6

    :cond_e4
    move v7, v5

    .line 3547
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_e5

    .line 3548
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3549
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3550
    goto/16 :goto_8

    .line 3551
    :cond_e5
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3553
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 3554
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3555
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3556
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3557
    .local v13, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3558
    .local v14, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v9

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3559
    goto/16 :goto_8

    .line 3530
    .end local v6    # "serial":I
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v13    # "serviceClass":I
    .end local v14    # "appId":Ljava/lang/String;
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v5, v6

    :cond_e6
    move v0, v5

    .line 3531
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e7

    .line 3532
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3534
    goto/16 :goto_8

    .line 3535
    :cond_e7
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3538
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3539
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3540
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3541
    goto/16 :goto_8

    .line 3516
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v5, v6

    :cond_e8
    move v0, v5

    .line 3517
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_e9

    .line 3518
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3520
    goto/16 :goto_8

    .line 3521
    :cond_e9
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3523
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3524
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acceptCall(I)V

    .line 3525
    goto/16 :goto_8

    .line 3500
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v5, v6

    :cond_ea
    move v0, v5

    .line 3501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_eb

    .line 3502
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3504
    goto/16 :goto_8

    .line 3505
    :cond_eb
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3508
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3509
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3510
    .local v3, "cause":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3511
    goto/16 :goto_8

    .line 3484
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v5, v6

    :cond_ec
    move v0, v5

    .line 3485
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ed

    .line 3486
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3488
    goto/16 :goto_8

    .line 3489
    :cond_ed
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3492
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3493
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3494
    .local v3, "serviceClass":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3495
    goto/16 :goto_8

    .line 3469
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v5, v6

    :cond_ee
    move v0, v5

    .line 3470
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_ef

    .line 3471
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3473
    goto/16 :goto_8

    .line 3474
    :cond_ef
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3477
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3478
    .local v2, "serviceClass":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCallWaiting(II)V

    .line 3479
    goto/16 :goto_8

    .line 3453
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v5, v6

    :cond_f0
    move v0, v5

    .line 3454
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f1

    .line 3455
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3456
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3457
    goto/16 :goto_8

    .line 3458
    :cond_f1
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3460
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3461
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3462
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3463
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3464
    goto/16 :goto_8

    .line 3437
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v5, v6

    :cond_f2
    move v0, v5

    .line 3438
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f3

    .line 3439
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3441
    goto/16 :goto_8

    .line 3442
    :cond_f3
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3445
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3446
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3447
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3448
    goto/16 :goto_8

    .line 3422
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v5, v6

    :cond_f4
    move v0, v5

    .line 3423
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f5

    .line 3424
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3425
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3426
    goto/16 :goto_8

    .line 3427
    :cond_f5
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3430
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3431
    .local v2, "status":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setClir(II)V

    .line 3432
    goto/16 :goto_8

    .line 3408
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v5, v6

    :cond_f6
    move v0, v5

    .line 3409
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f7

    .line 3410
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3412
    goto/16 :goto_8

    .line 3413
    :cond_f7
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3416
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getClir(I)V

    .line 3417
    goto/16 :goto_8

    .line 3394
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v5, v6

    :cond_f8
    move v0, v5

    .line 3395
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_f9

    .line 3396
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3398
    goto/16 :goto_8

    .line 3399
    :cond_f9
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3402
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3403
    goto/16 :goto_8

    .line 3379
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v5, v6

    :cond_fa
    move v0, v5

    .line 3380
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fb

    .line 3381
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3382
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3383
    goto/16 :goto_8

    .line 3384
    :cond_fb
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3386
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3387
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3388
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3389
    goto/16 :goto_8

    .line 3363
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v5, v6

    :cond_fc
    move v0, v5

    .line 3364
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_fd

    .line 3365
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3366
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3367
    goto/16 :goto_8

    .line 3368
    :cond_fd
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3371
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3372
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3373
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3374
    goto/16 :goto_8

    .line 3343
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v5, v6

    :cond_fe
    move v7, v5

    .line 3344
    .restart local v7    # "_hidl_is_oneway":Z
    if-eq v7, v6, :cond_ff

    .line 3345
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3347
    goto/16 :goto_8

    .line 3348
    :cond_ff
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3351
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 3352
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v13, v0

    .line 3353
    .local v13, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3354
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 3355
    .local v14, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 3356
    .local v15, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 3357
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3358
    goto/16 :goto_8

    .line 3327
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v13    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v14    # "modemCognitive":Z
    .end local v15    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v5, v6

    :cond_100
    move v0, v5

    .line 3328
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_101

    .line 3329
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3330
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3331
    goto/16 :goto_8

    .line 3332
    :cond_101
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3335
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3336
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3337
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3338
    goto/16 :goto_8

    .line 3311
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v5, v6

    :cond_102
    move v0, v5

    .line 3312
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_103

    .line 3313
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3314
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3315
    goto/16 :goto_8

    .line 3316
    :cond_103
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3319
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3320
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3321
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3322
    goto/16 :goto_8

    .line 3296
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v5, v6

    :cond_104
    move v0, v5

    .line 3297
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_105

    .line 3298
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3300
    goto/16 :goto_8

    .line 3301
    :cond_105
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3304
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3305
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3306
    goto/16 :goto_8

    .line 3281
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v5, v6

    :cond_106
    move v0, v5

    .line 3282
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_107

    .line 3283
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3285
    goto/16 :goto_8

    .line 3286
    :cond_107
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3289
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3290
    .local v2, "on":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setRadioPower(IZ)V

    .line 3291
    goto/16 :goto_8

    .line 3267
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v5, v6

    :cond_108
    move v0, v5

    .line 3268
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_109

    .line 3269
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3271
    goto/16 :goto_8

    .line 3272
    :cond_109
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3274
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3275
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getOperator(I)V

    .line 3276
    goto/16 :goto_8

    .line 3253
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v5, v6

    :cond_10a
    move v0, v5

    .line 3254
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10b

    .line 3255
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3256
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3257
    goto/16 :goto_8

    .line 3258
    :cond_10b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3260
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3261
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3262
    goto/16 :goto_8

    .line 3239
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v5, v6

    :cond_10c
    move v0, v5

    .line 3240
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10d

    .line 3241
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3243
    goto/16 :goto_8

    .line 3244
    :cond_10d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3246
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3247
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3248
    goto/16 :goto_8

    .line 3225
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v5, v6

    :cond_10e
    move v0, v5

    .line 3226
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_10f

    .line 3227
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3228
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3229
    goto/16 :goto_8

    .line 3230
    :cond_10f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3233
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getSignalStrength(I)V

    .line 3234
    goto/16 :goto_8

    .line 3211
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v5, v6

    :cond_110
    move v0, v5

    .line 3212
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_111

    .line 3213
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3214
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3215
    goto/16 :goto_8

    .line 3216
    :cond_111
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3218
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3219
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3220
    goto/16 :goto_8

    .line 3197
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v5, v6

    :cond_112
    move v0, v5

    .line 3198
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_113

    .line 3199
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3201
    goto/16 :goto_8

    .line 3202
    :cond_113
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3205
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->rejectCall(I)V

    .line 3206
    goto/16 :goto_8

    .line 3183
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v5, v6

    :cond_114
    move v0, v5

    .line 3184
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_115

    .line 3185
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3186
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3187
    goto/16 :goto_8

    .line 3188
    :cond_115
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3190
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3191
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->conference(I)V

    .line 3192
    goto/16 :goto_8

    .line 3169
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v5, v6

    :cond_116
    move v0, v5

    .line 3170
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_117

    .line 3171
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3173
    goto/16 :goto_8

    .line 3174
    :cond_117
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3177
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3178
    goto/16 :goto_8

    .line 3155
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v5, v6

    :cond_118
    move v0, v5

    .line 3156
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_119

    .line 3157
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3159
    goto/16 :goto_8

    .line 3160
    :cond_119
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3163
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3164
    goto/16 :goto_8

    .line 3141
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v5, v6

    :cond_11a
    move v0, v5

    .line 3142
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11b

    .line 3143
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3145
    goto/16 :goto_8

    .line 3146
    :cond_11b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3149
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3150
    goto/16 :goto_8

    .line 3126
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v5, v6

    :cond_11c
    move v0, v5

    .line 3127
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11d

    .line 3128
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3129
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3130
    goto/16 :goto_8

    .line 3131
    :cond_11d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3133
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3134
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3135
    .local v2, "gsmIndex":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->hangup(II)V

    .line 3136
    goto/16 :goto_8

    .line 3111
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v5, v6

    :cond_11e
    move v0, v5

    .line 3112
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_11f

    .line 3113
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3114
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3115
    goto/16 :goto_8

    .line 3116
    :cond_11f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3119
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3120
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3121
    goto/16 :goto_8

    .line 3095
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v5, v6

    :cond_120
    move v0, v5

    .line 3096
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_121

    .line 3097
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3099
    goto/16 :goto_8

    .line 3100
    :cond_121
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3103
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3104
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3105
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3106
    goto/16 :goto_8

    .line 3081
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v5, v6

    :cond_122
    move v0, v5

    .line 3082
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_123

    .line 3083
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3084
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3085
    goto/16 :goto_8

    .line 3086
    :cond_123
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3089
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getCurrentCalls(I)V

    .line 3090
    goto/16 :goto_8

    .line 3066
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v5, v6

    :cond_124
    move v0, v5

    .line 3067
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_125

    .line 3068
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3069
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3070
    goto/16 :goto_8

    .line 3071
    :cond_125
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3074
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3075
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3076
    goto/16 :goto_8

    .line 3049
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v5, v6

    :cond_126
    move v0, v5

    .line 3050
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_127

    .line 3051
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3053
    goto/16 :goto_8

    .line 3054
    :cond_127
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3057
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3058
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3059
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3060
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    goto/16 :goto_8

    .line 3032
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v5, v6

    :cond_128
    move v0, v5

    .line 3033
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_129

    .line 3034
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3036
    goto/16 :goto_8

    .line 3037
    :cond_129
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3039
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3040
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3041
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3042
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3043
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    goto/16 :goto_8

    .line 3015
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v5, v6

    :cond_12a
    move v0, v5

    .line 3016
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12b

    .line 3017
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3019
    goto/16 :goto_8

    .line 3020
    :cond_12b
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3023
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3024
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3025
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3026
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    goto/16 :goto_8

    .line 2999
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v5, v6

    :cond_12c
    move v0, v5

    .line 3000
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12d

    .line 3001
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3002
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3003
    goto/16 :goto_8

    .line 3004
    :cond_12d
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3006
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3007
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3008
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3009
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3010
    goto/16 :goto_8

    .line 2982
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v5, v6

    :cond_12e
    move v0, v5

    .line 2983
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_12f

    .line 2984
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2986
    goto/16 :goto_8

    .line 2987
    :cond_12f
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2990
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2991
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2992
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2993
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    goto/16 :goto_8

    .line 2966
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v5, v6

    :cond_130
    move v0, v5

    .line 2967
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_131

    .line 2968
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2969
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2970
    goto :goto_8

    .line 2971
    :cond_131
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2974
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2975
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2976
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_3/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 2977
    goto :goto_8

    .line 2952
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_8f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_132

    move v5, v6

    :cond_132
    move v0, v5

    .line 2953
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v6, :cond_133

    .line 2954
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2955
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2956
    goto :goto_8

    .line 2957
    :cond_133
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2960
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->getIccCardStatus(I)V

    .line 2961
    goto :goto_8

    .line 2935
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_90
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_134

    goto :goto_7

    :cond_134
    move v6, v5

    :goto_7
    move v0, v6

    .line 2936
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_135

    .line 2937
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2938
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2939
    goto :goto_8

    .line 2940
    :cond_135
    invoke-virtual {v11, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 2943
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 2944
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_3/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 2945
    invoke-virtual {v12, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2947
    nop

    .line 5303
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_136
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2886
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2914
    const-string v0, "android.hardware.radio@1.3::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2915
    return-object p0

    .line 2917
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

    .line 2921
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_3/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 2922
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2876
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_3/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2908
    const/4 v0, 0x1

    return v0
.end method
