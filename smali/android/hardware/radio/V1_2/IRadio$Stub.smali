.class public abstract Landroid/hardware/radio/V1_2/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2882
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2885
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

    .line 2900
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2939
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2940
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2941
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2942
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2943
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

    .line 2912
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

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

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2890
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const-string v3, "android.hardware.radio@1.0::IRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2906
    const-string v0, "android.hardware.radio@1.2::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2927
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2949
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2951
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

    .line 2979
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hardware.radio@1.2::IRadio"

    const-string v1, "android.hardware.radio@1.1::IRadio"

    const-string v2, "android.hardware.radio@1.0::IRadio"

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 5296
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v4, v5

    :cond_0
    move v0, v4

    .line 5297
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_130

    .line 5298
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5299
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5300
    goto/16 :goto_8

    .line 5283
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v4, v5

    :cond_1
    move v1, v4

    .line 5284
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_2

    .line 5285
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5286
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5287
    goto/16 :goto_8

    .line 5288
    :cond_2
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5290
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->notifySyspropsChanged()V

    .line 5291
    goto/16 :goto_8

    .line 5267
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    move v1, v5

    .line 5268
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 5269
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5270
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5271
    goto/16 :goto_8

    .line 5272
    :cond_4
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5274
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5275
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5276
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5277
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5278
    goto/16 :goto_8

    .line 5252
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    move v1, v5

    .line 5253
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 5254
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5255
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5256
    goto/16 :goto_8

    .line 5257
    :cond_6
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5259
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->ping()V

    .line 5260
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5262
    goto/16 :goto_8

    .line 5242
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v4, v5

    :cond_7
    move v0, v4

    .line 5243
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_130

    .line 5244
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5245
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5246
    goto/16 :goto_8

    .line 5229
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v4, v5

    :cond_8
    move v1, v4

    .line 5230
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_9

    .line 5231
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5232
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5233
    goto/16 :goto_8

    .line 5234
    :cond_9
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5236
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setHALInstrumentation()V

    .line 5237
    goto/16 :goto_8

    .line 5190
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v5, v4

    :goto_2
    move v1, v5

    .line 5191
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 5192
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5193
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5194
    goto/16 :goto_8

    .line 5195
    :cond_b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5197
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5198
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5200
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5202
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5203
    .local v3, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5204
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5205
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 5206
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 5208
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 5209
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 5211
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v13, 0x20

    if-ne v9, v13, :cond_c

    .line 5215
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5216
    nop

    .line 5206
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5212
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v9, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 5219
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5221
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5223
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5224
    goto/16 :goto_8

    .line 5174
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move v5, v4

    :goto_4
    move v1, v5

    .line 5175
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 5176
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5177
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5178
    goto/16 :goto_8

    .line 5179
    :cond_f
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5181
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5182
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5183
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5185
    goto/16 :goto_8

    .line 5157
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v5, v4

    :goto_5
    move v1, v5

    .line 5158
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 5159
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5161
    goto/16 :goto_8

    .line 5162
    :cond_11
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5164
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5165
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5166
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5167
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5169
    goto/16 :goto_8

    .line 5141
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move v5, v4

    :goto_6
    move v1, v5

    .line 5142
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 5143
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5144
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5145
    goto/16 :goto_8

    .line 5146
    :cond_13
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5148
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5149
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5150
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5151
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5152
    goto/16 :goto_8

    .line 5125
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_14

    move v4, v5

    :cond_14
    move v1, v4

    .line 5126
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_15

    .line 5127
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5134
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 5135
    .local v3, "reason":I
    invoke-virtual {v10, v0, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 5136
    goto/16 :goto_8

    .line 5102
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "cid":I
    .end local v3    # "reason":I
    :pswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_16

    move v4, v5

    :cond_16
    move v13, v4

    .line 5103
    .local v13, "_hidl_is_oneway":Z
    if-eq v13, v5, :cond_17

    .line 5104
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5105
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5106
    goto/16 :goto_8

    .line 5107
    :cond_17
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5109
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5110
    .local v14, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5111
    .local v15, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 5112
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 5114
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 5115
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 5116
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 5117
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 5118
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 5119
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

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5120
    goto/16 :goto_8

    .line 5082
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
    :pswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_18

    move v4, v5

    :cond_18
    move v8, v4

    .line 5083
    .local v8, "_hidl_is_oneway":Z
    if-eq v8, v5, :cond_19

    .line 5084
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5085
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5086
    goto/16 :goto_8

    .line 5087
    :cond_19
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5090
    .local v9, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5091
    .local v13, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5092
    .local v14, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5093
    .local v15, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 5094
    .local v16, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v17

    .line 5095
    .local v17, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v18

    .line 5096
    .local v18, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5097
    goto/16 :goto_8

    .line 5064
    .end local v8    # "_hidl_is_oneway":Z
    .end local v9    # "serial":I
    .end local v13    # "hysteresisMs":I
    .end local v14    # "hysteresisDlKbps":I
    .end local v15    # "hysteresisUlKbps":I
    .end local v16    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "accessNetwork":I
    :pswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1a

    move v4, v5

    :cond_1a
    move v6, v4

    .line 5065
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v5, :cond_1b

    .line 5066
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5068
    goto/16 :goto_8

    .line 5069
    :cond_1b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5071
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5072
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5073
    .local v8, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5074
    .local v9, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 5075
    .local v13, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5076
    .local v14, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 5077
    goto/16 :goto_8

    .line 5049
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "hysteresisMs":I
    .end local v9    # "hysteresisDb":I
    .end local v13    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "accessNetwork":I
    :pswitch_4
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1c

    move v4, v5

    :cond_1c
    move v1, v4

    .line 5050
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_1d

    .line 5051
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5053
    goto/16 :goto_8

    .line 5054
    :cond_1d
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5057
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5058
    .local v2, "indicationFilter":I
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 5059
    goto/16 :goto_8

    .line 5033
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "indicationFilter":I
    :pswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1e

    move v4, v5

    :cond_1e
    move v1, v4

    .line 5034
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_1f

    .line 5035
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5037
    goto/16 :goto_8

    .line 5038
    :cond_1f
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5040
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5041
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 5042
    .local v2, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5043
    invoke-virtual {v10, v0, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 5044
    goto/16 :goto_8

    .line 5018
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v4, v5

    :cond_20
    move v0, v4

    .line 5019
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_21

    .line 5020
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5022
    goto/16 :goto_8

    .line 5023
    :cond_21
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5025
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5026
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5027
    .local v2, "sessionHandle":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopKeepalive(II)V

    .line 5028
    goto/16 :goto_8

    .line 5002
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sessionHandle":I
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v4, v5

    :cond_22
    move v0, v4

    .line 5003
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_23

    .line 5004
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

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
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 5011
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5012
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 5013
    goto/16 :goto_8

    .line 4988
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v4, v5

    :cond_24
    move v0, v4

    .line 4989
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_25

    .line 4990
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4991
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4992
    goto/16 :goto_8

    .line 4993
    :cond_25
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4995
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4996
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopNetworkScan(I)V

    .line 4997
    goto/16 :goto_8

    .line 4972
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v4, v5

    :cond_26
    move v0, v4

    .line 4973
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_27

    .line 4974
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4975
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4976
    goto/16 :goto_8

    .line 4977
    :cond_27
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4979
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4980
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4981
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4982
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4983
    goto/16 :goto_8

    .line 4957
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v4, v5

    :cond_28
    move v0, v4

    .line 4958
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_29

    .line 4959
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4960
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4961
    goto/16 :goto_8

    .line 4962
    :cond_29
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4965
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4966
    .local v2, "powerUp":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4967
    goto/16 :goto_8

    .line 4941
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v4, v5

    :cond_2a
    move v0, v4

    .line 4942
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_2b

    .line 4943
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4944
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4945
    goto/16 :goto_8

    .line 4946
    :cond_2b
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4948
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4949
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4950
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4951
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4952
    goto/16 :goto_8

    .line 4928
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v4, v5

    :cond_2c
    move v0, v4

    .line 4929
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_2d

    .line 4930
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4932
    goto/16 :goto_8

    .line 4933
    :cond_2d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4935
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->responseAcknowledgement()V

    .line 4936
    goto/16 :goto_8

    .line 4913
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v4, v5

    :cond_2e
    move v0, v4

    .line 4914
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_2f

    .line 4915
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4916
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4917
    goto/16 :goto_8

    .line 4918
    :cond_2f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4920
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4921
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4922
    .local v2, "powerUp":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4923
    goto/16 :goto_8

    .line 4898
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v4, v5

    :cond_30
    move v0, v4

    .line 4899
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_31

    .line 4900
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4901
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4902
    goto/16 :goto_8

    .line 4903
    :cond_31
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4905
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4906
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4907
    .local v2, "indicationFilter":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setIndicationFilter(II)V

    .line 4908
    goto/16 :goto_8

    .line 4882
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v4, v5

    :cond_32
    move v0, v4

    .line 4883
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_33

    .line 4884
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4885
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4886
    goto/16 :goto_8

    .line 4887
    :cond_33
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4890
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4891
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4892
    .local v3, "state":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4893
    goto/16 :goto_8

    .line 4868
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v4, v5

    :cond_34
    move v0, v4

    .line 4869
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_35

    .line 4870
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4872
    goto/16 :goto_8

    .line 4873
    :cond_35
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4875
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4876
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4877
    goto/16 :goto_8

    .line 4851
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v4, v5

    :cond_36
    move v0, v4

    .line 4852
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_37

    .line 4853
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4854
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4855
    goto/16 :goto_8

    .line 4856
    :cond_37
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4858
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4859
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4860
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4861
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4862
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4863
    goto/16 :goto_8

    .line 4837
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v4, v5

    :cond_38
    move v0, v4

    .line 4838
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_39

    .line 4839
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4840
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4841
    goto/16 :goto_8

    .line 4842
    :cond_39
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4845
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4846
    goto/16 :goto_8

    .line 4823
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v4, v5

    :cond_3a
    move v0, v4

    .line 4824
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_3b

    .line 4825
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4826
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4827
    goto/16 :goto_8

    .line 4828
    :cond_3b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4830
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4831
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->pullLceData(I)V

    .line 4832
    goto/16 :goto_8

    .line 4809
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v4, v5

    :cond_3c
    move v0, v4

    .line 4810
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_3d

    .line 4811
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4812
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4813
    goto/16 :goto_8

    .line 4814
    :cond_3d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4817
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopLceService(I)V

    .line 4818
    goto/16 :goto_8

    .line 4793
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v4, v5

    :cond_3e
    move v0, v4

    .line 4794
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_3f

    .line 4795
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4796
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4797
    goto/16 :goto_8

    .line 4798
    :cond_3f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4800
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4801
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4802
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4803
    .local v3, "pullMode":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startLceService(IIZ)V

    .line 4804
    goto/16 :goto_8

    .line 4777
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v4, v5

    :cond_40
    move v0, v4

    .line 4778
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_41

    .line 4779
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4780
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4781
    goto/16 :goto_8

    .line 4782
    :cond_41
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4785
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4786
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4787
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4788
    goto/16 :goto_8

    .line 4763
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v4, v5

    :cond_42
    move v0, v4

    .line 4764
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_43

    .line 4765
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4767
    goto/16 :goto_8

    .line 4768
    :cond_43
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4770
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4771
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getRadioCapability(I)V

    .line 4772
    goto/16 :goto_8

    .line 4749
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v4, v5

    :cond_44
    move v0, v4

    .line 4750
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_45

    .line 4751
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4753
    goto/16 :goto_8

    .line 4754
    :cond_45
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4757
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestShutdown(I)V

    .line 4758
    goto/16 :goto_8

    .line 4733
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v4, v5

    :cond_46
    move v0, v4

    .line 4734
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_47

    .line 4735
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4736
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4737
    goto/16 :goto_8

    .line 4738
    :cond_47
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4740
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4741
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4742
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4743
    .local v3, "isRoaming":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4744
    goto/16 :goto_8

    .line 4716
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v4, v5

    :cond_48
    move v0, v4

    .line 4717
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_49

    .line 4718
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4719
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4720
    goto/16 :goto_8

    .line 4721
    :cond_49
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4724
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4725
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4726
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4727
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4728
    goto/16 :goto_8

    .line 4702
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v4, v5

    :cond_4a
    move v0, v4

    .line 4703
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_4b

    .line 4704
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4706
    goto/16 :goto_8

    .line 4707
    :cond_4b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4709
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4710
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getHardwareConfig(I)V

    .line 4711
    goto/16 :goto_8

    .line 4687
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v4, v5

    :cond_4c
    move v0, v4

    .line 4688
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_4d

    .line 4689
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4691
    goto/16 :goto_8

    .line 4692
    :cond_4d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4695
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4696
    .local v2, "allow":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4697
    goto/16 :goto_8

    .line 4671
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v4, v5

    :cond_4e
    move v0, v4

    .line 4672
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_4f

    .line 4673
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4674
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4675
    goto/16 :goto_8

    .line 4676
    :cond_4f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4678
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4679
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4680
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4681
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4682
    goto/16 :goto_8

    .line 4656
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v4, v5

    :cond_50
    move v0, v4

    .line 4657
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_51

    .line 4658
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4659
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4660
    goto/16 :goto_8

    .line 4661
    :cond_51
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4663
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4664
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4665
    .local v2, "resetType":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvResetConfig(II)V

    .line 4666
    goto/16 :goto_8

    .line 4641
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v4, v5

    :cond_52
    move v0, v4

    .line 4642
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_53

    .line 4643
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4644
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4645
    goto/16 :goto_8

    .line 4646
    :cond_53
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4649
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4650
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4651
    goto/16 :goto_8

    .line 4625
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v4, v5

    :cond_54
    move v0, v4

    .line 4626
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_55

    .line 4627
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4628
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4629
    goto/16 :goto_8

    .line 4630
    :cond_55
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4633
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4634
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4635
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4636
    goto/16 :goto_8

    .line 4610
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v4, v5

    :cond_56
    move v0, v4

    .line 4611
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_57

    .line 4612
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4614
    goto/16 :goto_8

    .line 4615
    :cond_57
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4618
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4619
    .local v2, "itemId":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->nvReadItem(II)V

    .line 4620
    goto/16 :goto_8

    .line 4594
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v4, v5

    :cond_58
    move v0, v4

    .line 4595
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_59

    .line 4596
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4597
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4598
    goto/16 :goto_8

    .line 4599
    :cond_59
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4601
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4602
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4603
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4604
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4605
    goto/16 :goto_8

    .line 4579
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v4, v5

    :cond_5a
    move v0, v4

    .line 4580
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_5b

    .line 4581
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4582
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4583
    goto/16 :goto_8

    .line 4584
    :cond_5b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4586
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4587
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4588
    .local v2, "channelId":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4589
    goto/16 :goto_8

    .line 4563
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v4, v5

    :cond_5c
    move v0, v4

    .line 4564
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_5d

    .line 4565
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4566
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4567
    goto/16 :goto_8

    .line 4568
    :cond_5d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4571
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4572
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4573
    .local v3, "p2":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4574
    goto/16 :goto_8

    .line 4547
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v4, v5

    :cond_5e
    move v0, v4

    .line 4548
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_5f

    .line 4549
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4551
    goto/16 :goto_8

    .line 4552
    :cond_5f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

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
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4558
    goto/16 :goto_8

    .line 4531
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v4, v5

    :cond_60
    move v0, v4

    .line 4532
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_61

    .line 4533
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4535
    goto/16 :goto_8

    .line 4536
    :cond_61
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4539
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4540
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4541
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4542
    goto/16 :goto_8

    .line 4517
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v4, v5

    :cond_62
    move v0, v4

    .line 4518
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_63

    .line 4519
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4520
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4521
    goto/16 :goto_8

    .line 4522
    :cond_63
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4525
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4526
    goto/16 :goto_8

    .line 4499
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v4, v5

    :cond_64
    move v0, v4

    .line 4500
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_65

    .line 4501
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4502
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4503
    goto/16 :goto_8

    .line 4504
    :cond_65
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4507
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4508
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4509
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4510
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4511
    .local v4, "isRoaming":Z
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4512
    goto/16 :goto_8

    .line 4484
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v4, v5

    :cond_66
    move v0, v4

    .line 4485
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_67

    .line 4486
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4488
    goto/16 :goto_8

    .line 4489
    :cond_67
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4492
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4493
    .local v2, "rate":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4494
    goto/16 :goto_8

    .line 4470
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v4, v5

    :cond_68
    move v0, v4

    .line 4471
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_69

    .line 4472
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4473
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4474
    goto/16 :goto_8

    .line 4475
    :cond_69
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4477
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4478
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCellInfoList(I)V

    .line 4479
    goto/16 :goto_8

    .line 4456
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v4, v5

    :cond_6a
    move v0, v4

    .line 4457
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_6b

    .line 4458
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4460
    goto/16 :goto_8

    .line 4461
    :cond_6b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4464
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4465
    goto/16 :goto_8

    .line 4441
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v4, v5

    :cond_6c
    move v0, v4

    .line 4442
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_6d

    .line 4443
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4444
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4445
    goto/16 :goto_8

    .line 4446
    :cond_6d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4449
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4450
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4451
    goto/16 :goto_8

    .line 4425
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v4, v5

    :cond_6e
    move v0, v4

    .line 4426
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_6f

    .line 4427
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4429
    goto/16 :goto_8

    .line 4430
    :cond_6f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4433
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4434
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4435
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4436
    goto/16 :goto_8

    .line 4410
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v4, v5

    :cond_70
    move v0, v4

    .line 4411
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_71

    .line 4412
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4413
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4414
    goto/16 :goto_8

    .line 4415
    :cond_71
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4417
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4418
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4419
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4420
    goto/16 :goto_8

    .line 4396
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v4, v5

    :cond_72
    move v0, v4

    .line 4397
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_73

    .line 4398
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4399
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4400
    goto/16 :goto_8

    .line 4401
    :cond_73
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4404
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4405
    goto/16 :goto_8

    .line 4382
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v4, v5

    :cond_74
    move v0, v4

    .line 4383
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_75

    .line 4384
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4385
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4386
    goto/16 :goto_8

    .line 4387
    :cond_75
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4390
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4391
    goto/16 :goto_8

    .line 4367
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v4, v5

    :cond_76
    move v0, v4

    .line 4368
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_77

    .line 4369
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4371
    goto/16 :goto_8

    .line 4372
    :cond_77
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4375
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4376
    .local v2, "available":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4377
    goto/16 :goto_8

    .line 4352
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v4, v5

    :cond_78
    move v0, v4

    .line 4353
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_79

    .line 4354
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4355
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4356
    goto/16 :goto_8

    .line 4357
    :cond_79
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4359
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4360
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4361
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4362
    goto/16 :goto_8

    .line 4338
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v4, v5

    :cond_7a
    move v0, v4

    .line 4339
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_7b

    .line 4340
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4341
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4342
    goto/16 :goto_8

    .line 4343
    :cond_7b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4345
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4346
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getSmscAddress(I)V

    .line 4347
    goto/16 :goto_8

    .line 4324
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v4, v5

    :cond_7c
    move v0, v4

    .line 4325
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_7d

    .line 4326
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4327
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4328
    goto/16 :goto_8

    .line 4329
    :cond_7d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4332
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 4333
    goto/16 :goto_8

    .line 4310
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v4, v5

    :cond_7e
    move v0, v4

    .line 4311
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_7f

    .line 4312
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4313
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4314
    goto/16 :goto_8

    .line 4315
    :cond_7f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4317
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4318
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDeviceIdentity(I)V

    .line 4319
    goto/16 :goto_8

    .line 4295
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v4, v5

    :cond_80
    move v0, v4

    .line 4296
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_81

    .line 4297
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4298
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4299
    goto/16 :goto_8

    .line 4300
    :cond_81
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4302
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4303
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4304
    .local v2, "index":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 4305
    goto/16 :goto_8

    .line 4279
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v4, v5

    :cond_82
    move v0, v4

    .line 4280
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_83

    .line 4281
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4283
    goto/16 :goto_8

    .line 4284
    :cond_83
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4287
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 4288
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4289
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 4290
    goto/16 :goto_8

    .line 4265
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v4, v5

    :cond_84
    move v0, v4

    .line 4266
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_85

    .line 4267
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4268
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4269
    goto/16 :goto_8

    .line 4270
    :cond_85
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4273
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCDMASubscription(I)V

    .line 4274
    goto/16 :goto_8

    .line 4250
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v4, v5

    :cond_86
    move v0, v4

    .line 4251
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_87

    .line 4252
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4253
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4254
    goto/16 :goto_8

    .line 4255
    :cond_87
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4258
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4259
    .local v2, "activate":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 4260
    goto/16 :goto_8

    .line 4235
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v4, v5

    :cond_88
    move v0, v4

    .line 4236
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_89

    .line 4237
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4239
    goto/16 :goto_8

    .line 4240
    :cond_89
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4242
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4243
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4244
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4245
    goto/16 :goto_8

    .line 4221
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v4, v5

    :cond_8a
    move v0, v4

    .line 4222
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_8b

    .line 4223
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4225
    goto/16 :goto_8

    .line 4226
    :cond_8b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4229
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 4230
    goto/16 :goto_8

    .line 4206
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v4, v5

    :cond_8c
    move v0, v4

    .line 4207
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_8d

    .line 4208
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4210
    goto/16 :goto_8

    .line 4211
    :cond_8d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4213
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4214
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4215
    .local v2, "activate":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 4216
    goto/16 :goto_8

    .line 4191
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v4, v5

    :cond_8e
    move v0, v4

    .line 4192
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_8f

    .line 4193
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4194
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4195
    goto/16 :goto_8

    .line 4196
    :cond_8f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4199
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4200
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4201
    goto/16 :goto_8

    .line 4177
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v4, v5

    :cond_90
    move v0, v4

    .line 4178
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_91

    .line 4179
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4180
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4181
    goto/16 :goto_8

    .line 4182
    :cond_91
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4185
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 4186
    goto/16 :goto_8

    .line 4161
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v4, v5

    :cond_92
    move v0, v4

    .line 4162
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_93

    .line 4163
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4164
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4165
    goto/16 :goto_8

    .line 4166
    :cond_93
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4168
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4169
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 4170
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4171
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 4172
    goto/16 :goto_8

    .line 4145
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v4, v5

    :cond_94
    move v0, v4

    .line 4146
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_95

    .line 4147
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4149
    goto/16 :goto_8

    .line 4150
    :cond_95
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4153
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 4154
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4155
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 4156
    goto/16 :goto_8

    .line 4128
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v4, v5

    :cond_96
    move v0, v4

    .line 4129
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_97

    .line 4130
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4132
    goto/16 :goto_8

    .line 4133
    :cond_97
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4136
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4137
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4138
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 4139
    .local v4, "off":I
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 4140
    goto/16 :goto_8

    .line 4113
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v4, v5

    :cond_98
    move v0, v4

    .line 4114
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_99

    .line 4115
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4117
    goto/16 :goto_8

    .line 4118
    :cond_99
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4121
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4122
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 4123
    goto/16 :goto_8

    .line 4099
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v4, v5

    :cond_9a
    move v0, v4

    .line 4100
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9b

    .line 4101
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4103
    goto/16 :goto_8

    .line 4104
    :cond_9b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4107
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 4108
    goto/16 :goto_8

    .line 4084
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v4, v5

    :cond_9c
    move v0, v4

    .line 4085
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9d

    .line 4086
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4088
    goto/16 :goto_8

    .line 4089
    :cond_9d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4092
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4093
    .local v2, "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4094
    goto/16 :goto_8

    .line 4070
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v4, v5

    :cond_9e
    move v0, v4

    .line 4071
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9f

    .line 4072
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4073
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4074
    goto/16 :goto_8

    .line 4075
    :cond_9f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4078
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getTTYMode(I)V

    .line 4079
    goto/16 :goto_8

    .line 4055
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v4, v5

    :cond_a0
    move v0, v4

    .line 4056
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a1

    .line 4057
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4058
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4059
    goto/16 :goto_8

    .line 4060
    :cond_a1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4062
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4063
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4064
    .local v2, "mode":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setTTYMode(II)V

    .line 4065
    goto/16 :goto_8

    .line 4041
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v4, v5

    :cond_a2
    move v0, v4

    .line 4042
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a3

    .line 4043
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4044
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4045
    goto/16 :goto_8

    .line 4046
    :cond_a3
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4049
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4050
    goto/16 :goto_8

    .line 4026
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v4, v5

    :cond_a4
    move v0, v4

    .line 4027
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a5

    .line 4028
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4029
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4030
    goto/16 :goto_8

    .line 4031
    :cond_a5
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4034
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4035
    .local v2, "type":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 4036
    goto/16 :goto_8

    .line 4011
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v4, v5

    :cond_a6
    move v0, v4

    .line 4012
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a7

    .line 4013
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4014
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4015
    goto/16 :goto_8

    .line 4016
    :cond_a7
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4018
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4019
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4020
    .local v2, "cdmaSub":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 4021
    goto/16 :goto_8

    .line 3996
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v4, v5

    :cond_a8
    move v0, v4

    .line 3997
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a9

    .line 3998
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3999
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4000
    goto/16 :goto_8

    .line 4001
    :cond_a9
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4003
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4004
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4005
    .local v2, "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 4006
    goto/16 :goto_8

    .line 3982
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v4, v5

    :cond_aa
    move v0, v4

    .line 3983
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ab

    .line 3984
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3986
    goto/16 :goto_8

    .line 3987
    :cond_ab
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3990
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getNeighboringCids(I)V

    .line 3991
    goto/16 :goto_8

    .line 3968
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v4, v5

    :cond_ac
    move v0, v4

    .line 3969
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ad

    .line 3970
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3971
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3972
    goto/16 :goto_8

    .line 3973
    :cond_ad
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3975
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3976
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3977
    goto/16 :goto_8

    .line 3953
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v4, v5

    :cond_ae
    move v0, v4

    .line 3954
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_af

    .line 3955
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3957
    goto/16 :goto_8

    .line 3958
    :cond_af
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3961
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3962
    .local v2, "nwType":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3963
    goto/16 :goto_8

    .line 3939
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v4, v5

    :cond_b0
    move v0, v4

    .line 3940
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b1

    .line 3941
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3942
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3943
    goto/16 :goto_8

    .line 3944
    :cond_b1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3946
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3947
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3948
    goto/16 :goto_8

    .line 3924
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v4, v5

    :cond_b2
    move v0, v4

    .line 3925
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b3

    .line 3926
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3927
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3928
    goto/16 :goto_8

    .line 3929
    :cond_b3
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3932
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3933
    .local v2, "accept":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3934
    goto/16 :goto_8

    .line 3909
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v4, v5

    :cond_b4
    move v0, v4

    .line 3910
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b5

    .line 3911
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3912
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3913
    goto/16 :goto_8

    .line 3914
    :cond_b5
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3916
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3917
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3918
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3919
    goto/16 :goto_8

    .line 3894
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v4, v5

    :cond_b6
    move v0, v4

    .line 3895
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b7

    .line 3896
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3898
    goto/16 :goto_8

    .line 3899
    :cond_b7
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3902
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3903
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3904
    goto/16 :goto_8

    .line 3880
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v4, v5

    :cond_b8
    move v0, v4

    .line 3881
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b9

    .line 3882
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3883
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3884
    goto/16 :goto_8

    .line 3885
    :cond_b9
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3887
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3888
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3889
    goto/16 :goto_8

    .line 3865
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v4, v5

    :cond_ba
    move v0, v4

    .line 3866
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_bb

    .line 3867
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3868
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3869
    goto/16 :goto_8

    .line 3870
    :cond_bb
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3872
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3873
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3874
    .local v2, "mode":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setBandMode(II)V

    .line 3875
    goto/16 :goto_8

    .line 3850
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v4, v5

    :cond_bc
    move v0, v4

    .line 3851
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_bd

    .line 3852
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3853
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3854
    goto/16 :goto_8

    .line 3855
    :cond_bd
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3857
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3858
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3859
    .local v2, "index":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3860
    goto/16 :goto_8

    .line 3834
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v4, v5

    :cond_be
    move v0, v4

    .line 3835
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_bf

    .line 3836
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3838
    goto/16 :goto_8

    .line 3839
    :cond_bf
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3841
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3842
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3843
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3844
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3845
    goto/16 :goto_8

    .line 3819
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v4, v5

    :cond_c0
    move v0, v4

    .line 3820
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c1

    .line 3821
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3822
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3823
    goto/16 :goto_8

    .line 3824
    :cond_c1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3826
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3827
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3828
    .local v2, "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3829
    goto/16 :goto_8

    .line 3805
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v4, v5

    :cond_c2
    move v0, v4

    .line 3806
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c3

    .line 3807
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3808
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3809
    goto/16 :goto_8

    .line 3810
    :cond_c3
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3812
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3813
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDataCallList(I)V

    .line 3814
    goto/16 :goto_8

    .line 3791
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v4, v5

    :cond_c4
    move v0, v4

    .line 3792
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c5

    .line 3793
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3794
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3795
    goto/16 :goto_8

    .line 3796
    :cond_c5
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3798
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3799
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getClip(I)V

    .line 3800
    goto/16 :goto_8

    .line 3777
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v4, v5

    :cond_c6
    move v0, v4

    .line 3778
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c7

    .line 3779
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3780
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3781
    goto/16 :goto_8

    .line 3782
    :cond_c7
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3785
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getMute(I)V

    .line 3786
    goto/16 :goto_8

    .line 3762
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v4, v5

    :cond_c8
    move v0, v4

    .line 3763
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c9

    .line 3764
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3765
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3766
    goto/16 :goto_8

    .line 3767
    :cond_c9
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3769
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3770
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3771
    .restart local v2    # "enable":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setMute(IZ)V

    .line 3772
    goto/16 :goto_8

    .line 3747
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v4, v5

    :cond_ca
    move v0, v4

    .line 3748
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_cb

    .line 3749
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3750
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3751
    goto/16 :goto_8

    .line 3752
    :cond_cb
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3755
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3756
    .local v2, "gsmIndex":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->separateConnection(II)V

    .line 3757
    goto/16 :goto_8

    .line 3733
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v4, v5

    :cond_cc
    move v0, v4

    .line 3734
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_cd

    .line 3735
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3736
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3737
    goto/16 :goto_8

    .line 3738
    :cond_cd
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3740
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3741
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getBasebandVersion(I)V

    .line 3742
    goto/16 :goto_8

    .line 3719
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v4, v5

    :cond_ce
    move v0, v4

    .line 3720
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_cf

    .line 3721
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3723
    goto/16 :goto_8

    .line 3724
    :cond_cf
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3727
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->stopDtmf(I)V

    .line 3728
    goto/16 :goto_8

    .line 3704
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v4, v5

    :cond_d0
    move v0, v4

    .line 3705
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d1

    .line 3706
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3707
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3708
    goto/16 :goto_8

    .line 3709
    :cond_d1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3711
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3712
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3713
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3714
    goto/16 :goto_8

    .line 3690
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v4, v5

    :cond_d2
    move v0, v4

    .line 3691
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d3

    .line 3692
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3693
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3694
    goto/16 :goto_8

    .line 3695
    :cond_d3
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3697
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3698
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3699
    goto/16 :goto_8

    .line 3675
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v4, v5

    :cond_d4
    move v0, v4

    .line 3676
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d5

    .line 3677
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3678
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3679
    goto/16 :goto_8

    .line 3680
    :cond_d5
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3682
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3683
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3684
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3685
    goto/16 :goto_8

    .line 3661
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v4, v5

    :cond_d6
    move v0, v4

    .line 3662
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d7

    .line 3663
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3665
    goto/16 :goto_8

    .line 3666
    :cond_d7
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3669
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3670
    goto/16 :goto_8

    .line 3647
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v4, v5

    :cond_d8
    move v0, v4

    .line 3648
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d9

    .line 3649
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3651
    goto/16 :goto_8

    .line 3652
    :cond_d9
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3654
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3655
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3656
    goto/16 :goto_8

    .line 3630
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v4, v5

    :cond_da
    move v0, v4

    .line 3631
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_db

    .line 3632
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3634
    goto/16 :goto_8

    .line 3635
    :cond_db
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3638
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3639
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3640
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3641
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3642
    goto/16 :goto_8

    .line 3611
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v4, v5

    :cond_dc
    move v7, v4

    .line 3612
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v5, :cond_dd

    .line 3613
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3614
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3615
    goto/16 :goto_8

    .line 3616
    :cond_dd
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3619
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3620
    .local v9, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 3621
    .local v13, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3622
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3623
    .local v15, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3624
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3625
    goto/16 :goto_8

    .line 3593
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "facility":Ljava/lang/String;
    .end local v13    # "lockState":Z
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v4, v5

    :cond_de
    move v6, v4

    .line 3594
    .restart local v6    # "_hidl_is_oneway":Z
    if-eq v6, v5, :cond_df

    .line 3595
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3596
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3597
    goto/16 :goto_8

    .line 3598
    :cond_df
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3600
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 3601
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3602
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3603
    .local v9, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3604
    .local v13, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3605
    .local v14, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3606
    goto/16 :goto_8

    .line 3577
    .end local v6    # "_hidl_is_oneway":Z
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "password":Ljava/lang/String;
    .end local v13    # "serviceClass":I
    .end local v14    # "appId":Ljava/lang/String;
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v4, v5

    :cond_e0
    move v0, v4

    .line 3578
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e1

    .line 3579
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3581
    goto/16 :goto_8

    .line 3582
    :cond_e1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3585
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3586
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3587
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3588
    goto/16 :goto_8

    .line 3563
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v4, v5

    :cond_e2
    move v0, v4

    .line 3564
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e3

    .line 3565
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3566
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3567
    goto/16 :goto_8

    .line 3568
    :cond_e3
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3571
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acceptCall(I)V

    .line 3572
    goto/16 :goto_8

    .line 3547
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v4, v5

    :cond_e4
    move v0, v4

    .line 3548
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e5

    .line 3549
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3551
    goto/16 :goto_8

    .line 3552
    :cond_e5
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3554
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3555
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3556
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3557
    .local v3, "cause":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3558
    goto/16 :goto_8

    .line 3531
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v4, v5

    :cond_e6
    move v0, v4

    .line 3532
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e7

    .line 3533
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3535
    goto/16 :goto_8

    .line 3536
    :cond_e7
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3539
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3540
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3541
    .local v3, "serviceClass":I
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3542
    goto/16 :goto_8

    .line 3516
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v4, v5

    :cond_e8
    move v0, v4

    .line 3517
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e9

    .line 3518
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3520
    goto/16 :goto_8

    .line 3521
    :cond_e9
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3523
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3524
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3525
    .local v2, "serviceClass":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCallWaiting(II)V

    .line 3526
    goto/16 :goto_8

    .line 3500
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v4, v5

    :cond_ea
    move v0, v4

    .line 3501
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_eb

    .line 3502
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3503
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3504
    goto/16 :goto_8

    .line 3505
    :cond_eb
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3508
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3509
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3510
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3511
    goto/16 :goto_8

    .line 3484
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v4, v5

    :cond_ec
    move v0, v4

    .line 3485
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ed

    .line 3486
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3487
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3488
    goto/16 :goto_8

    .line 3489
    :cond_ed
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3491
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3492
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3493
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3494
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3495
    goto/16 :goto_8

    .line 3469
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v4, v5

    :cond_ee
    move v0, v4

    .line 3470
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ef

    .line 3471
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3472
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3473
    goto/16 :goto_8

    .line 3474
    :cond_ef
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3476
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3477
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3478
    .local v2, "status":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setClir(II)V

    .line 3479
    goto/16 :goto_8

    .line 3455
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v4, v5

    :cond_f0
    move v0, v4

    .line 3456
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_f1

    .line 3457
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3458
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3459
    goto/16 :goto_8

    .line 3460
    :cond_f1
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3462
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3463
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getClir(I)V

    .line 3464
    goto/16 :goto_8

    .line 3441
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v4, v5

    :cond_f2
    move v0, v4

    .line 3442
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_f3

    .line 3443
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3444
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3445
    goto/16 :goto_8

    .line 3446
    :cond_f3
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3449
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3450
    goto/16 :goto_8

    .line 3426
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v4, v5

    :cond_f4
    move v0, v4

    .line 3427
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_f5

    .line 3428
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3429
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3430
    goto/16 :goto_8

    .line 3431
    :cond_f5
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3434
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3435
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3436
    goto/16 :goto_8

    .line 3410
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v4, v5

    :cond_f6
    move v0, v4

    .line 3411
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_f7

    .line 3412
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3413
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3414
    goto/16 :goto_8

    .line 3415
    :cond_f7
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3417
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3418
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3419
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3420
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3421
    goto/16 :goto_8

    .line 3390
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v4, v5

    :cond_f8
    move v7, v4

    .line 3391
    .local v7, "_hidl_is_oneway":Z
    if-eq v7, v5, :cond_f9

    .line 3392
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3393
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3394
    goto/16 :goto_8

    .line 3395
    :cond_f9
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3397
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 3398
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 3399
    .local v9, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v13, v0

    .line 3400
    .local v13, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 3402
    .local v14, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 3403
    .local v15, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 3404
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3405
    goto/16 :goto_8

    .line 3374
    .end local v7    # "_hidl_is_oneway":Z
    .end local v8    # "serial":I
    .end local v9    # "radioTechnology":I
    .end local v13    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v14    # "modemCognitive":Z
    .end local v15    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v4, v5

    :cond_fa
    move v0, v4

    .line 3375
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_fb

    .line 3376
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3377
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3378
    goto/16 :goto_8

    .line 3379
    :cond_fb
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3381
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3382
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3383
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3384
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3385
    goto/16 :goto_8

    .line 3358
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v4, v5

    :cond_fc
    move v0, v4

    .line 3359
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_fd

    .line 3360
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3361
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3362
    goto/16 :goto_8

    .line 3363
    :cond_fd
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3366
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3367
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3368
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3369
    goto/16 :goto_8

    .line 3343
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v4, v5

    :cond_fe
    move v0, v4

    .line 3344
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ff

    .line 3345
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3347
    goto/16 :goto_8

    .line 3348
    :cond_ff
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3351
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3352
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3353
    goto/16 :goto_8

    .line 3328
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v4, v5

    :cond_100
    move v0, v4

    .line 3329
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_101

    .line 3330
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3332
    goto/16 :goto_8

    .line 3333
    :cond_101
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3336
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3337
    .local v2, "on":Z
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setRadioPower(IZ)V

    .line 3338
    goto/16 :goto_8

    .line 3314
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v4, v5

    :cond_102
    move v0, v4

    .line 3315
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_103

    .line 3316
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3318
    goto/16 :goto_8

    .line 3319
    :cond_103
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3322
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getOperator(I)V

    .line 3323
    goto/16 :goto_8

    .line 3300
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v4, v5

    :cond_104
    move v0, v4

    .line 3301
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_105

    .line 3302
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3303
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3304
    goto/16 :goto_8

    .line 3305
    :cond_105
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3307
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3308
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3309
    goto/16 :goto_8

    .line 3286
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v4, v5

    :cond_106
    move v0, v4

    .line 3287
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_107

    .line 3288
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3289
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3290
    goto/16 :goto_8

    .line 3291
    :cond_107
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3294
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3295
    goto/16 :goto_8

    .line 3272
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v4, v5

    :cond_108
    move v0, v4

    .line 3273
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_109

    .line 3274
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3276
    goto/16 :goto_8

    .line 3277
    :cond_109
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3280
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getSignalStrength(I)V

    .line 3281
    goto/16 :goto_8

    .line 3258
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v4, v5

    :cond_10a
    move v0, v4

    .line 3259
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_10b

    .line 3260
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3261
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3262
    goto/16 :goto_8

    .line 3263
    :cond_10b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3266
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3267
    goto/16 :goto_8

    .line 3244
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v4, v5

    :cond_10c
    move v0, v4

    .line 3245
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_10d

    .line 3246
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3247
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3248
    goto/16 :goto_8

    .line 3249
    :cond_10d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3252
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->rejectCall(I)V

    .line 3253
    goto/16 :goto_8

    .line 3230
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v4, v5

    :cond_10e
    move v0, v4

    .line 3231
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_10f

    .line 3232
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3234
    goto/16 :goto_8

    .line 3235
    :cond_10f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3238
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->conference(I)V

    .line 3239
    goto/16 :goto_8

    .line 3216
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v4, v5

    :cond_110
    move v0, v4

    .line 3217
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_111

    .line 3218
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3219
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3220
    goto/16 :goto_8

    .line 3221
    :cond_111
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3223
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3224
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3225
    goto/16 :goto_8

    .line 3202
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v4, v5

    :cond_112
    move v0, v4

    .line 3203
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_113

    .line 3204
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3205
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3206
    goto/16 :goto_8

    .line 3207
    :cond_113
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3210
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3211
    goto/16 :goto_8

    .line 3188
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v4, v5

    :cond_114
    move v0, v4

    .line 3189
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_115

    .line 3190
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3192
    goto/16 :goto_8

    .line 3193
    :cond_115
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3196
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3197
    goto/16 :goto_8

    .line 3173
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v4, v5

    :cond_116
    move v0, v4

    .line 3174
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_117

    .line 3175
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3177
    goto/16 :goto_8

    .line 3178
    :cond_117
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3181
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3182
    .local v2, "gsmIndex":I
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->hangup(II)V

    .line 3183
    goto/16 :goto_8

    .line 3158
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v4, v5

    :cond_118
    move v0, v4

    .line 3159
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_119

    .line 3160
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3162
    goto/16 :goto_8

    .line 3163
    :cond_119
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3166
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3167
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3168
    goto/16 :goto_8

    .line 3142
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v4, v5

    :cond_11a
    move v0, v4

    .line 3143
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_11b

    .line 3144
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3145
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3146
    goto/16 :goto_8

    .line 3147
    :cond_11b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3149
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3150
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3151
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3152
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3153
    goto/16 :goto_8

    .line 3128
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v4, v5

    :cond_11c
    move v0, v4

    .line 3129
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_11d

    .line 3130
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3131
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3132
    goto/16 :goto_8

    .line 3133
    :cond_11d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3135
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3136
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getCurrentCalls(I)V

    .line 3137
    goto/16 :goto_8

    .line 3113
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v4, v5

    :cond_11e
    move v0, v4

    .line 3114
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_11f

    .line 3115
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3116
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3117
    goto/16 :goto_8

    .line 3118
    :cond_11f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3121
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3122
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3123
    goto/16 :goto_8

    .line 3096
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v4, v5

    :cond_120
    move v0, v4

    .line 3097
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_121

    .line 3098
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3099
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3100
    goto/16 :goto_8

    .line 3101
    :cond_121
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3103
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3104
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3105
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3106
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3107
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    goto/16 :goto_8

    .line 3079
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v4, v5

    :cond_122
    move v0, v4

    .line 3080
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_123

    .line 3081
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3083
    goto/16 :goto_8

    .line 3084
    :cond_123
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3086
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3087
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3088
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3089
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3090
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    goto/16 :goto_8

    .line 3062
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v4, v5

    :cond_124
    move v0, v4

    .line 3063
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_125

    .line 3064
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3065
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3066
    goto/16 :goto_8

    .line 3067
    :cond_125
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3070
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3071
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3072
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3073
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    goto/16 :goto_8

    .line 3046
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v4, v5

    :cond_126
    move v0, v4

    .line 3047
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_127

    .line 3048
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3049
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3050
    goto/16 :goto_8

    .line 3051
    :cond_127
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3053
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3054
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3055
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3056
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3057
    goto/16 :goto_8

    .line 3029
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v4, v5

    :cond_128
    move v0, v4

    .line 3030
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_129

    .line 3031
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3032
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3033
    goto/16 :goto_8

    .line 3034
    :cond_129
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3036
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3037
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3038
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3039
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3040
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3041
    goto/16 :goto_8

    .line 3013
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v4, v5

    :cond_12a
    move v0, v4

    .line 3014
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_12b

    .line 3015
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3016
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3017
    goto :goto_8

    .line 3018
    :cond_12b
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3020
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3021
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3022
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3023
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3024
    goto :goto_8

    .line 2999
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v4, v5

    :cond_12c
    move v0, v4

    .line 3000
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_12d

    .line 3001
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3002
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3003
    goto :goto_8

    .line 3004
    :cond_12d
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3006
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3007
    .restart local v1    # "serial":I
    invoke-virtual {v10, v1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->getIccCardStatus(I)V

    .line 3008
    goto :goto_8

    .line 2982
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    goto :goto_7

    :cond_12e
    move v5, v4

    :goto_7
    move v0, v5

    .line 2983
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_12f

    .line 2984
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2985
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2986
    goto :goto_8

    .line 2987
    :cond_12f
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2989
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 2990
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 2991
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v10, v1, v2}, Landroid/hardware/radio/V1_2/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 2992
    invoke-virtual {v12, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2993
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2994
    nop

    .line 5305
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_130
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2933
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2961
    const-string v0, "android.hardware.radio@1.2::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2962
    return-object p0

    .line 2964
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

    .line 2968
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 2969
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2923
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2955
    const/4 v0, 0x1

    return v0
.end method
