.class public abstract Landroid/hardware/radio/V1_2/IRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioResponse.java"

# interfaces
.implements Landroid/hardware/radio/V1_2/IRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_2/IRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2788
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2791
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

    .line 2806
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2845
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2846
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2847
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2848
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2849
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

    .line 2818
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
        -0x26t
        -0x74t
        0x6at
        -0x17t
        -0x6ft
        -0x3at
        -0x5ct
        -0x4et
        -0x7ct
        -0x34t
        0x6et
        0x44t
        0x53t
        0x32t
        -0x20t
        0x64t
        -0x1et
        -0x72t
        -0x18t
        -0x60t
        -0x6ct
        -0x7et
        -0x13t
        0x5at
        -0x1t
        -0x7t
        -0x2ft
        0x59t
        -0x14t
        0x66t
        -0x6ct
        -0x49t
    .end array-data

    :array_1
    .array-data 1
        0x5t
        -0x56t
        0x3dt
        -0x1at
        0x13t
        0xat
        -0x69t
        -0x78t
        -0x3t
        -0x4at
        -0xct
        -0x2dt
        -0x34t
        0x57t
        -0x3dt
        -0x16t
        -0x70t
        -0x10t
        0x67t
        -0x19t
        0x7at
        0x5et
        0x9t
        -0x2at
        -0x59t
        0x72t
        -0x14t
        0x7ft
        0x6bt
        -0x36t
        0x33t
        -0x2et
    .end array-data

    :array_2
    .array-data 1
        0x1dt
        0x4at
        0x57t
        0x76t
        0x61t
        0x4ct
        0x8t
        -0x4bt
        -0x29t
        -0x6ct
        -0x5bt
        -0x14t
        0x5at
        -0x50t
        0x46t
        -0x69t
        0x26t
        0xct
        -0x43t
        0x4bt
        0x34t
        0x41t
        -0x2bt
        -0x6dt
        0x5ct
        -0x2bt
        0x3et
        -0x19t
        0x1dt
        0x19t
        -0x26t
        0x2t
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

    .line 2796
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    const-string v2, "android.hardware.radio@1.1::IRadioResponse"

    const-string v3, "android.hardware.radio@1.0::IRadioResponse"

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

    .line 2812
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2833
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2855
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2857
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 17
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2885
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.radio@1.1::IRadioResponse"

    const-string v1, "android.hardware.radio@1.2::IRadioResponse"

    const-string v2, "android.hardware.radio@1.0::IRadioResponse"

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 5301
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v4, v5

    :cond_0
    move v0, v4

    .line 5302
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_132

    .line 5303
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5304
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5305
    goto/16 :goto_7

    .line 5288
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v4, v5

    :cond_1
    move v1, v4

    .line 5289
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_2

    .line 5290
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5292
    goto/16 :goto_7

    .line 5293
    :cond_2
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5295
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->notifySyspropsChanged()V

    .line 5296
    goto/16 :goto_7

    .line 5272
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    move v1, v5

    .line 5273
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 5274
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5275
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5276
    goto/16 :goto_7

    .line 5277
    :cond_4
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5279
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5280
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5281
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5282
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5283
    goto/16 :goto_7

    .line 5257
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

    .line 5258
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 5259
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5260
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5261
    goto/16 :goto_7

    .line 5262
    :cond_6
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5264
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->ping()V

    .line 5265
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5267
    goto/16 :goto_7

    .line 5247
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v4, v5

    :cond_7
    move v0, v4

    .line 5248
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_132

    .line 5249
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5251
    goto/16 :goto_7

    .line 5234
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v4, v5

    :cond_8
    move v1, v4

    .line 5235
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_9

    .line 5236
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5238
    goto/16 :goto_7

    .line 5239
    :cond_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5241
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setHALInstrumentation()V

    .line 5242
    goto/16 :goto_7

    .line 5195
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v5, v4

    :goto_2
    move v1, v5

    .line 5196
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 5197
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5198
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5199
    goto/16 :goto_7

    .line 5200
    :cond_b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5202
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5203
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5205
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 5207
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5208
    .local v3, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5209
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5210
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 5211
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v3, :cond_d

    .line 5213
    mul-int/lit8 v6, v5, 0x20

    int-to-long v10, v6

    .line 5214
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 5216
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_c

    array-length v12, v6

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 5220
    invoke-virtual {v4, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5221
    nop

    .line 5211
    .end local v6    # "_hidl_array_item_1":[B
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5217
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v10    # "_hidl_array_offset_1":J
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5224
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v10    # "_hidl_array_offset_1":J
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5226
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5228
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5229
    goto/16 :goto_7

    .line 5179
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

    .line 5180
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 5181
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5183
    goto/16 :goto_7

    .line 5184
    :cond_f
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5186
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5187
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5188
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5190
    goto/16 :goto_7

    .line 5162
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

    .line 5163
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 5164
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5166
    goto/16 :goto_7

    .line 5167
    :cond_11
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5170
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 5171
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5172
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5173
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5174
    goto/16 :goto_7

    .line 5146
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

    .line 5147
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 5148
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5149
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5150
    goto/16 :goto_7

    .line 5151
    :cond_13
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5153
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5154
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5155
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5157
    goto/16 :goto_7

    .line 5129
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14

    move v4, v5

    :cond_14
    move v0, v4

    .line 5130
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_15

    .line 5131
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5133
    goto/16 :goto_7

    .line 5134
    :cond_15
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5136
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5137
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5138
    new-instance v2, Landroid/hardware/radio/V1_2/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/DataRegStateResult;-><init>()V

    .line 5139
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5140
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V

    .line 5141
    goto/16 :goto_7

    .line 5112
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_2/DataRegStateResult;
    :pswitch_1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    move v4, v5

    :cond_16
    move v0, v4

    .line 5113
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_17

    .line 5114
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5115
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5116
    goto/16 :goto_7

    .line 5117
    :cond_17
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5119
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5120
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5121
    new-instance v2, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;-><init>()V

    .line 5122
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5123
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V

    .line 5124
    goto/16 :goto_7

    .line 5095
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_2/VoiceRegStateResult;
    :pswitch_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_18

    move v4, v5

    :cond_18
    move v0, v4

    .line 5096
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_19

    .line 5097
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5098
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5099
    goto/16 :goto_7

    .line 5100
    :cond_19
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5102
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5103
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5104
    new-instance v2, Landroid/hardware/radio/V1_2/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/SignalStrength;-><init>()V

    .line 5105
    .local v2, "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5106
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    .line 5107
    goto/16 :goto_7

    .line 5079
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "signalStrength":Landroid/hardware/radio/V1_2/SignalStrength;
    :pswitch_3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v4, v5

    :cond_1a
    move v0, v4

    .line 5080
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_1b

    .line 5081
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5083
    goto/16 :goto_7

    .line 5084
    :cond_1b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5086
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5087
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5088
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5089
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5090
    goto/16 :goto_7

    .line 5064
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/Call;>;"
    :pswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1c

    move v4, v5

    :cond_1c
    move v0, v4

    .line 5065
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_1d

    .line 5066
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5068
    goto/16 :goto_7

    .line 5069
    :cond_1d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5071
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5072
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5073
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5074
    goto/16 :goto_7

    .line 5049
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1e

    move v4, v5

    :cond_1e
    move v0, v4

    .line 5050
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_1f

    .line 5051
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5053
    goto/16 :goto_7

    .line 5054
    :cond_1f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5057
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5058
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5059
    goto/16 :goto_7

    .line 5032
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v4, v5

    :cond_20
    move v0, v4

    .line 5033
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_21

    .line 5034
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5036
    goto/16 :goto_7

    .line 5037
    :cond_21
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5039
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5040
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5041
    new-instance v2, Landroid/hardware/radio/V1_2/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_2/CardStatus;-><init>()V

    .line 5042
    .local v2, "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_2/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5043
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    .line 5044
    goto/16 :goto_7

    .line 5016
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_2/CardStatus;
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v4, v5

    :cond_22
    move v0, v4

    .line 5017
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_23

    .line 5018
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5019
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5020
    goto/16 :goto_7

    .line 5021
    :cond_23
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5023
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5024
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5025
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_2/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5026
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 5027
    goto/16 :goto_7

    .line 5001
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_2/CellInfo;>;"
    :pswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_24

    move v4, v5

    :cond_24
    move v1, v4

    .line 5002
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_25

    .line 5003
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5005
    goto/16 :goto_7

    .line 5006
    :cond_25
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5008
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 5009
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5010
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 5011
    goto/16 :goto_7

    .line 4984
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_26

    move v4, v5

    :cond_26
    move v1, v4

    .line 4985
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_27

    .line 4986
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4987
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4988
    goto/16 :goto_7

    .line 4989
    :cond_27
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4991
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4992
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4993
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveStatus;-><init>()V

    .line 4994
    .local v2, "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_1/KeepaliveStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4995
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V

    .line 4996
    goto/16 :goto_7

    .line 4969
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":Landroid/hardware/radio/V1_1/KeepaliveStatus;
    :pswitch_a
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_28

    move v4, v5

    :cond_28
    move v1, v4

    .line 4970
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_29

    .line 4971
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4973
    goto/16 :goto_7

    .line 4974
    :cond_29
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4976
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4977
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4978
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4979
    goto/16 :goto_7

    .line 4954
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2a

    move v4, v5

    :cond_2a
    move v1, v4

    .line 4955
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_2b

    .line 4956
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4957
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4958
    goto/16 :goto_7

    .line 4959
    :cond_2b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4961
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4962
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4963
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4964
    goto/16 :goto_7

    .line 4939
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2c

    move v4, v5

    :cond_2c
    move v1, v4

    .line 4940
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_2d

    .line 4941
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4942
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4943
    goto/16 :goto_7

    .line 4944
    :cond_2d
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4946
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4947
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4948
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4949
    goto/16 :goto_7

    .line 4924
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2e

    move v4, v5

    :cond_2e
    move v1, v4

    .line 4925
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v5, :cond_2f

    .line 4926
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4927
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4928
    goto/16 :goto_7

    .line 4929
    :cond_2f
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4931
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4932
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4933
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4934
    goto/16 :goto_7

    .line 4910
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v4, v5

    :cond_30
    move v0, v4

    .line 4911
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_31

    .line 4912
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4914
    goto/16 :goto_7

    .line 4915
    :cond_31
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4917
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4918
    .local v1, "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acknowledgeRequest(I)V

    .line 4919
    goto/16 :goto_7

    .line 4895
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v4, v5

    :cond_32
    move v0, v4

    .line 4896
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_33

    .line 4897
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4898
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4899
    goto/16 :goto_7

    .line 4900
    :cond_33
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4902
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4903
    .local v1, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4904
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4905
    goto/16 :goto_7

    .line 4880
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v4, v5

    :cond_34
    move v0, v4

    .line 4881
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_35

    .line 4882
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4883
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4884
    goto/16 :goto_7

    .line 4885
    :cond_35
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4887
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4888
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4889
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4890
    goto/16 :goto_7

    .line 4865
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v4, v5

    :cond_36
    move v0, v4

    .line 4866
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_37

    .line 4867
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4868
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4869
    goto/16 :goto_7

    .line 4870
    :cond_37
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4872
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4873
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4874
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4875
    goto/16 :goto_7

    .line 4847
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v4, v5

    :cond_38
    move v0, v4

    .line 4848
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_39

    .line 4849
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4851
    goto/16 :goto_7

    .line 4852
    :cond_39
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4854
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4855
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4856
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4857
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4858
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4859
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4860
    goto/16 :goto_7

    .line 4831
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v4, v5

    :cond_3a
    move v0, v4

    .line 4832
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_3b

    .line 4833
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4834
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4835
    goto/16 :goto_7

    .line 4836
    :cond_3b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4838
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4839
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4841
    .local v2, "numAllowed":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4842
    goto/16 :goto_7

    .line 4814
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "numAllowed":I
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v4, v5

    :cond_3c
    move v0, v4

    .line 4815
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_3d

    .line 4816
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4818
    goto/16 :goto_7

    .line 4819
    :cond_3d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4821
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4822
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4823
    new-instance v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;-><init>()V

    .line 4824
    .local v2, "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4825
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    .line 4826
    goto/16 :goto_7

    .line 4797
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "activityInfo":Landroid/hardware/radio/V1_0/ActivityStatsInfo;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v4, v5

    :cond_3e
    move v0, v4

    .line 4798
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_3f

    .line 4799
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4801
    goto/16 :goto_7

    .line 4802
    :cond_3f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4804
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4805
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4806
    new-instance v2, Landroid/hardware/radio/V1_0/LceDataInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceDataInfo;-><init>()V

    .line 4807
    .local v2, "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LceDataInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4808
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    .line 4809
    goto/16 :goto_7

    .line 4780
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "lceInfo":Landroid/hardware/radio/V1_0/LceDataInfo;
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v4, v5

    :cond_40
    move v0, v4

    .line 4781
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_41

    .line 4782
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4783
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4784
    goto/16 :goto_7

    .line 4785
    :cond_41
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4787
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4788
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4789
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4790
    .local v2, "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4791
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4792
    goto/16 :goto_7

    .line 4763
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
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
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4766
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4767
    goto/16 :goto_7

    .line 4768
    :cond_43
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4770
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4771
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4772
    new-instance v2, Landroid/hardware/radio/V1_0/LceStatusInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LceStatusInfo;-><init>()V

    .line 4773
    .restart local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4774
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    .line 4775
    goto/16 :goto_7

    .line 4746
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "statusInfo":Landroid/hardware/radio/V1_0/LceStatusInfo;
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v4, v5

    :cond_44
    move v0, v4

    .line 4747
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_45

    .line 4748
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4750
    goto/16 :goto_7

    .line 4751
    :cond_45
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4753
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4754
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4755
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4756
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4757
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4758
    goto/16 :goto_7

    .line 4729
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v4, v5

    :cond_46
    move v0, v4

    .line 4730
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_47

    .line 4731
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4733
    goto/16 :goto_7

    .line 4734
    :cond_47
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4736
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4737
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4738
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4739
    .restart local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4740
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4741
    goto/16 :goto_7

    .line 4714
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v4, v5

    :cond_48
    move v0, v4

    .line 4715
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_49

    .line 4716
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4718
    goto/16 :goto_7

    .line 4719
    :cond_49
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4721
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4722
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4723
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4724
    goto/16 :goto_7

    .line 4699
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v4, v5

    :cond_4a
    move v0, v4

    .line 4700
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_4b

    .line 4701
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4703
    goto/16 :goto_7

    .line 4704
    :cond_4b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4706
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4707
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4708
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4709
    goto/16 :goto_7

    .line 4682
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v4, v5

    :cond_4c
    move v0, v4

    .line 4683
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_4d

    .line 4684
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4685
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4686
    goto/16 :goto_7

    .line 4687
    :cond_4d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4689
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4690
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4691
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4692
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4693
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4694
    goto/16 :goto_7

    .line 4666
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v4, v5

    :cond_4e
    move v0, v4

    .line 4667
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_4f

    .line 4668
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4670
    goto/16 :goto_7

    .line 4671
    :cond_4f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4673
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4674
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4675
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/HardwareConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4676
    .local v2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4677
    goto/16 :goto_7

    .line 4651
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/HardwareConfig;>;"
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v4, v5

    :cond_50
    move v0, v4

    .line 4652
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_51

    .line 4653
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4655
    goto/16 :goto_7

    .line 4656
    :cond_51
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4658
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4659
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4660
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4661
    goto/16 :goto_7

    .line 4636
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v4, v5

    :cond_52
    move v0, v4

    .line 4637
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_53

    .line 4638
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4640
    goto/16 :goto_7

    .line 4641
    :cond_53
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4643
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4644
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4645
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4646
    goto/16 :goto_7

    .line 4621
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v4, v5

    :cond_54
    move v0, v4

    .line 4622
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_55

    .line 4623
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4625
    goto/16 :goto_7

    .line 4626
    :cond_55
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4628
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4629
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4630
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4631
    goto/16 :goto_7

    .line 4606
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v4, v5

    :cond_56
    move v0, v4

    .line 4607
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_57

    .line 4608
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4610
    goto/16 :goto_7

    .line 4611
    :cond_57
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4613
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4614
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4615
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4616
    goto/16 :goto_7

    .line 4591
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v4, v5

    :cond_58
    move v0, v4

    .line 4592
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_59

    .line 4593
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4594
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4595
    goto/16 :goto_7

    .line 4596
    :cond_59
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4598
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4599
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4600
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4601
    goto/16 :goto_7

    .line 4575
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v4, v5

    :cond_5a
    move v0, v4

    .line 4576
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_5b

    .line 4577
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4578
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4579
    goto/16 :goto_7

    .line 4580
    :cond_5b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4582
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4583
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4585
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4586
    goto/16 :goto_7

    .line 4558
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Ljava/lang/String;
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v4, v5

    :cond_5c
    move v0, v4

    .line 4559
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_5d

    .line 4560
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4561
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4562
    goto/16 :goto_7

    .line 4563
    :cond_5d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4565
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4566
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4567
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4568
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4569
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4570
    goto/16 :goto_7

    .line 4543
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v4, v5

    :cond_5e
    move v0, v4

    .line 4544
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_5f

    .line 4545
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4546
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4547
    goto/16 :goto_7

    .line 4548
    :cond_5f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4550
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4551
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4552
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4553
    goto/16 :goto_7

    .line 4526
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v4, v5

    :cond_60
    move v0, v4

    .line 4527
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_61

    .line 4528
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4529
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4530
    goto/16 :goto_7

    .line 4531
    :cond_61
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4533
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4534
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4536
    .local v2, "channelId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 4537
    .local v3, "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V

    .line 4538
    goto/16 :goto_7

    .line 4509
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "channelId":I
    .end local v3    # "selectResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v4, v5

    :cond_62
    move v0, v4

    .line 4510
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_63

    .line 4511
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4513
    goto/16 :goto_7

    .line 4514
    :cond_63
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4516
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4517
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4518
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4519
    .local v2, "result":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4520
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4521
    goto/16 :goto_7

    .line 4492
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "result":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v4, v5

    :cond_64
    move v0, v4

    .line 4493
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_65

    .line 4494
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4495
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4496
    goto/16 :goto_7

    .line 4497
    :cond_65
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4499
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4500
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4501
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4502
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4503
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4504
    goto/16 :goto_7

    .line 4475
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v4, v5

    :cond_66
    move v0, v4

    .line 4476
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_67

    .line 4477
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4479
    goto/16 :goto_7

    .line 4480
    :cond_67
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4482
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4483
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4485
    .local v2, "isRegistered":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4486
    .local v3, "ratFamily":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 4487
    goto/16 :goto_7

    .line 4460
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v4, v5

    :cond_68
    move v0, v4

    .line 4461
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_69

    .line 4462
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4463
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4464
    goto/16 :goto_7

    .line 4465
    :cond_69
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4467
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4468
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4469
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4470
    goto/16 :goto_7

    .line 4445
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v4, v5

    :cond_6a
    move v0, v4

    .line 4446
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_6b

    .line 4447
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4449
    goto/16 :goto_7

    .line 4450
    :cond_6b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4452
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4453
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4454
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4455
    goto/16 :goto_7

    .line 4429
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v4, v5

    :cond_6c
    move v0, v4

    .line 4430
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_6d

    .line 4431
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4432
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4433
    goto/16 :goto_7

    .line 4434
    :cond_6d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4436
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4437
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4438
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CellInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4439
    .local v2, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4440
    goto/16 :goto_7

    .line 4413
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CellInfo;>;"
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v4, v5

    :cond_6e
    move v0, v4

    .line 4414
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_6f

    .line 4415
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4416
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4417
    goto/16 :goto_7

    .line 4418
    :cond_6f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4420
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4421
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4422
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4423
    .local v2, "rat":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4424
    goto/16 :goto_7

    .line 4396
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "rat":I
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v4, v5

    :cond_70
    move v0, v4

    .line 4397
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_71

    .line 4398
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4399
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4400
    goto/16 :goto_7

    .line 4401
    :cond_71
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4403
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4404
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4405
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 4406
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4407
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 4408
    goto/16 :goto_7

    .line 4381
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v4, v5

    :cond_72
    move v0, v4

    .line 4382
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_73

    .line 4383
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4384
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4385
    goto/16 :goto_7

    .line 4386
    :cond_73
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4388
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4389
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4390
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4391
    goto/16 :goto_7

    .line 4365
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v4, v5

    :cond_74
    move v0, v4

    .line 4366
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_75

    .line 4367
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4368
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4369
    goto/16 :goto_7

    .line 4370
    :cond_75
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4372
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4373
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4375
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4376
    goto/16 :goto_7

    .line 4349
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":Ljava/lang/String;
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v4, v5

    :cond_76
    move v0, v4

    .line 4350
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_77

    .line 4351
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4352
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4353
    goto/16 :goto_7

    .line 4354
    :cond_77
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4356
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4357
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4358
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4359
    .local v2, "source":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4360
    goto/16 :goto_7

    .line 4334
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "source":I
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v4, v5

    :cond_78
    move v0, v4

    .line 4335
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_79

    .line 4336
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4337
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4338
    goto/16 :goto_7

    .line 4339
    :cond_79
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4341
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4342
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4343
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4344
    goto/16 :goto_7

    .line 4319
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v4, v5

    :cond_7a
    move v0, v4

    .line 4320
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_7b

    .line 4321
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4322
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4323
    goto/16 :goto_7

    .line 4324
    :cond_7b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4326
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4327
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4328
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4329
    goto/16 :goto_7

    .line 4304
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v4, v5

    :cond_7c
    move v0, v4

    .line 4305
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_7d

    .line 4306
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4308
    goto/16 :goto_7

    .line 4309
    :cond_7d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4311
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4312
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4313
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4314
    goto/16 :goto_7

    .line 4288
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v4, v5

    :cond_7e
    move v0, v4

    .line 4289
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_7f

    .line 4290
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4291
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4292
    goto/16 :goto_7

    .line 4293
    :cond_7f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4296
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4297
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4298
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 4299
    goto/16 :goto_7

    .line 4273
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v4, v5

    :cond_80
    move v0, v4

    .line 4274
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_81

    .line 4275
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4276
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4277
    goto/16 :goto_7

    .line 4278
    :cond_81
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4280
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4281
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4282
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4283
    goto/16 :goto_7

    .line 4254
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v4, v5

    :cond_82
    move v6, v4

    .line 4255
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v5, :cond_83

    .line 4256
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4257
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4258
    goto/16 :goto_7

    .line 4259
    :cond_83
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4261
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v10, v0

    .line 4262
    .local v10, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v10, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4263
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 4264
    .local v11, "imei":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 4265
    .local v12, "imeisv":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4266
    .local v13, "esn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4267
    .local v14, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4268
    goto/16 :goto_7

    .line 4239
    .end local v6    # "_hidl_is_oneway":Z
    .end local v10    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v11    # "imei":Ljava/lang/String;
    .end local v12    # "imeisv":Ljava/lang/String;
    .end local v13    # "esn":Ljava/lang/String;
    .end local v14    # "meid":Ljava/lang/String;
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v4, v5

    :cond_84
    move v0, v4

    .line 4240
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_85

    .line 4241
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4242
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4243
    goto/16 :goto_7

    .line 4244
    :cond_85
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4246
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4247
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4248
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4249
    goto/16 :goto_7

    .line 4223
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v4, v5

    :cond_86
    move v0, v4

    .line 4224
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_87

    .line 4225
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4226
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4227
    goto/16 :goto_7

    .line 4228
    :cond_87
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4230
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4231
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4233
    .local v2, "index":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4234
    goto/16 :goto_7

    .line 4203
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v4, v5

    :cond_88
    move v10, v4

    .line 4204
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v5, :cond_89

    .line 4205
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4206
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4207
    goto/16 :goto_7

    .line 4208
    :cond_89
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4210
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    move-object v11, v0

    .line 4211
    .local v11, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v11, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 4213
    .local v12, "mdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4214
    .local v13, "hSid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 4215
    .local v14, "hNid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 4216
    .local v15, "min":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 4217
    .local v16, "prl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    goto/16 :goto_7

    .line 4188
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v12    # "mdn":Ljava/lang/String;
    .end local v13    # "hSid":Ljava/lang/String;
    .end local v14    # "hNid":Ljava/lang/String;
    .end local v15    # "min":Ljava/lang/String;
    .end local v16    # "prl":Ljava/lang/String;
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v4, v5

    :cond_8a
    move v0, v4

    .line 4189
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_8b

    .line 4190
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4192
    goto/16 :goto_7

    .line 4193
    :cond_8b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4195
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4196
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4197
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4198
    goto/16 :goto_7

    .line 4173
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v4, v5

    :cond_8c
    move v0, v4

    .line 4174
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_8d

    .line 4175
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4177
    goto/16 :goto_7

    .line 4178
    :cond_8d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4180
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4181
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4182
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4183
    goto/16 :goto_7

    .line 4157
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v4, v5

    :cond_8e
    move v0, v4

    .line 4158
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_8f

    .line 4159
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4160
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4161
    goto/16 :goto_7

    .line 4162
    :cond_8f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4164
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4165
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4166
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4167
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4168
    goto/16 :goto_7

    .line 4142
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v4, v5

    :cond_90
    move v0, v4

    .line 4143
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_91

    .line 4144
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4145
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4146
    goto/16 :goto_7

    .line 4147
    :cond_91
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4149
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4150
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4151
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4152
    goto/16 :goto_7

    .line 4127
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v4, v5

    :cond_92
    move v0, v4

    .line 4128
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_93

    .line 4129
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4130
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4131
    goto/16 :goto_7

    .line 4132
    :cond_93
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4134
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4135
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4136
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4137
    goto/16 :goto_7

    .line 4111
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v4, v5

    :cond_94
    move v0, v4

    .line 4112
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_95

    .line 4113
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4114
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4115
    goto/16 :goto_7

    .line 4116
    :cond_95
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4118
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4119
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4120
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4121
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 4122
    goto/16 :goto_7

    .line 4096
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v4, v5

    :cond_96
    move v0, v4

    .line 4097
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_97

    .line 4098
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4099
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4100
    goto/16 :goto_7

    .line 4101
    :cond_97
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4103
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4104
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4105
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4106
    goto/16 :goto_7

    .line 4079
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v4, v5

    :cond_98
    move v0, v4

    .line 4080
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_99

    .line 4081
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4083
    goto/16 :goto_7

    .line 4084
    :cond_99
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4086
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4087
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4088
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 4089
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4090
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 4091
    goto/16 :goto_7

    .line 4064
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v4, v5

    :cond_9a
    move v0, v4

    .line 4065
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9b

    .line 4066
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4068
    goto/16 :goto_7

    .line 4069
    :cond_9b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4071
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4072
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4073
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4074
    goto/16 :goto_7

    .line 4049
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v4, v5

    :cond_9c
    move v0, v4

    .line 4050
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9d

    .line 4051
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4053
    goto/16 :goto_7

    .line 4054
    :cond_9d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4056
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4057
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4058
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4059
    goto/16 :goto_7

    .line 4033
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v4, v5

    :cond_9e
    move v0, v4

    .line 4034
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_9f

    .line 4035
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4037
    goto/16 :goto_7

    .line 4038
    :cond_9f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4040
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4041
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4042
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4043
    .local v2, "enable":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 4044
    goto/16 :goto_7

    .line 4018
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v4, v5

    :cond_a0
    move v0, v4

    .line 4019
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a1

    .line 4020
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4021
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4022
    goto/16 :goto_7

    .line 4023
    :cond_a1
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4025
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4026
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4027
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 4028
    goto/16 :goto_7

    .line 4002
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v4, v5

    :cond_a2
    move v0, v4

    .line 4003
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a3

    .line 4004
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4005
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4006
    goto/16 :goto_7

    .line 4007
    :cond_a3
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4009
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 4010
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4012
    .local v2, "mode":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 4013
    goto/16 :goto_7

    .line 3987
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "mode":I
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v4, v5

    :cond_a4
    move v0, v4

    .line 3988
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a5

    .line 3989
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3991
    goto/16 :goto_7

    .line 3992
    :cond_a5
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3994
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3995
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3996
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3997
    goto/16 :goto_7

    .line 3971
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v4, v5

    :cond_a6
    move v0, v4

    .line 3972
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a7

    .line 3973
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3974
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3975
    goto/16 :goto_7

    .line 3976
    :cond_a7
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3978
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3979
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3981
    .local v2, "type":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3982
    goto/16 :goto_7

    .line 3956
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "type":I
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v4, v5

    :cond_a8
    move v0, v4

    .line 3957
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_a9

    .line 3958
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3959
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3960
    goto/16 :goto_7

    .line 3961
    :cond_a9
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3963
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3964
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3965
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3966
    goto/16 :goto_7

    .line 3941
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v4, v5

    :cond_aa
    move v0, v4

    .line 3942
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ab

    .line 3943
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3944
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3945
    goto/16 :goto_7

    .line 3946
    :cond_ab
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3948
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3949
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3950
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3951
    goto/16 :goto_7

    .line 3926
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v4, v5

    :cond_ac
    move v0, v4

    .line 3927
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ad

    .line 3928
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3929
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3930
    goto/16 :goto_7

    .line 3931
    :cond_ad
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3933
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3934
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3935
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3936
    goto/16 :goto_7

    .line 3910
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v4, v5

    :cond_ae
    move v0, v4

    .line 3911
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_af

    .line 3912
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3913
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3914
    goto/16 :goto_7

    .line 3915
    :cond_af
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3917
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3918
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3919
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/NeighboringCell;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3920
    .local v2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3921
    goto/16 :goto_7

    .line 3894
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/NeighboringCell;>;"
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v4, v5

    :cond_b0
    move v0, v4

    .line 3895
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b1

    .line 3896
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3898
    goto/16 :goto_7

    .line 3899
    :cond_b1
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3902
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3903
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3904
    .local v2, "nwType":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3905
    goto/16 :goto_7

    .line 3879
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "nwType":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v4, v5

    :cond_b2
    move v0, v4

    .line 3880
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b3

    .line 3881
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3882
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3883
    goto/16 :goto_7

    .line 3884
    :cond_b3
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3886
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3887
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3888
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3889
    goto/16 :goto_7

    .line 3864
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v4, v5

    :cond_b4
    move v0, v4

    .line 3865
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b5

    .line 3866
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3867
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3868
    goto/16 :goto_7

    .line 3869
    :cond_b5
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3871
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3872
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3873
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3874
    goto/16 :goto_7

    .line 3849
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v4, v5

    :cond_b6
    move v0, v4

    .line 3850
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b7

    .line 3851
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3852
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3853
    goto/16 :goto_7

    .line 3854
    :cond_b7
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3856
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3857
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3858
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3859
    goto/16 :goto_7

    .line 3834
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v4, v5

    :cond_b8
    move v0, v4

    .line 3835
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_b9

    .line 3836
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3837
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3838
    goto/16 :goto_7

    .line 3839
    :cond_b9
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3841
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3842
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3843
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3844
    goto/16 :goto_7

    .line 3818
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v4, v5

    :cond_ba
    move v0, v4

    .line 3819
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_bb

    .line 3820
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3821
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3822
    goto/16 :goto_7

    .line 3823
    :cond_bb
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3825
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3826
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3828
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3829
    goto/16 :goto_7

    .line 3802
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v4, v5

    :cond_bc
    move v0, v4

    .line 3803
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_bd

    .line 3804
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3805
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3806
    goto/16 :goto_7

    .line 3807
    :cond_bd
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3809
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3810
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3812
    .local v2, "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3813
    goto/16 :goto_7

    .line 3787
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "bandModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v4, v5

    :cond_be
    move v0, v4

    .line 3788
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_bf

    .line 3789
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3791
    goto/16 :goto_7

    .line 3792
    :cond_bf
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3794
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3795
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3796
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3797
    goto/16 :goto_7

    .line 3772
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v4, v5

    :cond_c0
    move v0, v4

    .line 3773
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c1

    .line 3774
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3776
    goto/16 :goto_7

    .line 3777
    :cond_c1
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3779
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3780
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3781
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3782
    goto/16 :goto_7

    .line 3756
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v4, v5

    :cond_c2
    move v0, v4

    .line 3757
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c3

    .line 3758
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3759
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3760
    goto/16 :goto_7

    .line 3761
    :cond_c3
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3763
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3764
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3766
    .local v2, "index":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3767
    goto/16 :goto_7

    .line 3741
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "index":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v4, v5

    :cond_c4
    move v0, v4

    .line 3742
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c5

    .line 3743
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3744
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3745
    goto/16 :goto_7

    .line 3746
    :cond_c5
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3748
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3749
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3750
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3751
    goto/16 :goto_7

    .line 3725
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v4, v5

    :cond_c6
    move v0, v4

    .line 3726
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c7

    .line 3727
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3728
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3729
    goto/16 :goto_7

    .line 3730
    :cond_c7
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3732
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3733
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3734
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3735
    .local v2, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3736
    goto/16 :goto_7

    .line 3709
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/SetupDataCallResult;>;"
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v4, v5

    :cond_c8
    move v0, v4

    .line 3710
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_c9

    .line 3711
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3713
    goto/16 :goto_7

    .line 3714
    :cond_c9
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3716
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3717
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3719
    .local v2, "status":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3720
    goto/16 :goto_7

    .line 3693
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "status":I
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v4, v5

    :cond_ca
    move v0, v4

    .line 3694
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_cb

    .line 3695
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3697
    goto/16 :goto_7

    .line 3698
    :cond_cb
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3700
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3701
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3703
    .local v2, "enable":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3704
    goto/16 :goto_7

    .line 3678
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v4, v5

    :cond_cc
    move v0, v4

    .line 3679
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_cd

    .line 3680
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3682
    goto/16 :goto_7

    .line 3683
    :cond_cd
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3685
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3686
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3687
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3688
    goto/16 :goto_7

    .line 3663
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v4, v5

    :cond_ce
    move v0, v4

    .line 3664
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_cf

    .line 3665
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3666
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3667
    goto/16 :goto_7

    .line 3668
    :cond_cf
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3670
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3671
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3672
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3673
    goto/16 :goto_7

    .line 3647
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v4, v5

    :cond_d0
    move v0, v4

    .line 3648
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d1

    .line 3649
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3650
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3651
    goto/16 :goto_7

    .line 3652
    :cond_d1
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3654
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3655
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3657
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3658
    goto/16 :goto_7

    .line 3632
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "version":Ljava/lang/String;
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v4, v5

    :cond_d2
    move v0, v4

    .line 3633
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d3

    .line 3634
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3635
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3636
    goto/16 :goto_7

    .line 3637
    :cond_d3
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3639
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3640
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3641
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3642
    goto/16 :goto_7

    .line 3617
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v4, v5

    :cond_d4
    move v0, v4

    .line 3618
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d5

    .line 3619
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3621
    goto/16 :goto_7

    .line 3622
    :cond_d5
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3624
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3625
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3626
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3627
    goto/16 :goto_7

    .line 3601
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v4, v5

    :cond_d6
    move v0, v4

    .line 3602
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d7

    .line 3603
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3604
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3605
    goto/16 :goto_7

    .line 3606
    :cond_d7
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3608
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3609
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3610
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/OperatorInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3611
    .local v2, "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3612
    goto/16 :goto_7

    .line 3586
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "networkInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v4, v5

    :cond_d8
    move v0, v4

    .line 3587
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_d9

    .line 3588
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3590
    goto/16 :goto_7

    .line 3591
    :cond_d9
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3593
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3594
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3595
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3596
    goto/16 :goto_7

    .line 3571
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v4, v5

    :cond_da
    move v0, v4

    .line 3572
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_db

    .line 3573
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3574
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3575
    goto/16 :goto_7

    .line 3576
    :cond_db
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3578
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3579
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3580
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3581
    goto/16 :goto_7

    .line 3555
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v4, v5

    :cond_dc
    move v0, v4

    .line 3556
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_dd

    .line 3557
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3558
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3559
    goto/16 :goto_7

    .line 3560
    :cond_dd
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3562
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3563
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3564
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3565
    .local v2, "manual":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V

    .line 3566
    goto/16 :goto_7

    .line 3540
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "manual":Z
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v4, v5

    :cond_de
    move v0, v4

    .line 3541
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_df

    .line 3542
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3544
    goto/16 :goto_7

    .line 3545
    :cond_df
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3547
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3548
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3549
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3550
    goto/16 :goto_7

    .line 3524
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v4, v5

    :cond_e0
    move v0, v4

    .line 3525
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e1

    .line 3526
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3527
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3528
    goto/16 :goto_7

    .line 3529
    :cond_e1
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3531
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3532
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3533
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3534
    .local v2, "retry":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3535
    goto/16 :goto_7

    .line 3508
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "retry":I
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v4, v5

    :cond_e2
    move v0, v4

    .line 3509
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e3

    .line 3510
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3511
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3512
    goto/16 :goto_7

    .line 3513
    :cond_e3
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3515
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3516
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3517
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3518
    .local v2, "response":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3519
    goto/16 :goto_7

    .line 3493
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "response":I
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v4, v5

    :cond_e4
    move v0, v4

    .line 3494
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e5

    .line 3495
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3497
    goto/16 :goto_7

    .line 3498
    :cond_e5
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3500
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3501
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3502
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3503
    goto/16 :goto_7

    .line 3478
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v4, v5

    :cond_e6
    move v0, v4

    .line 3479
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e7

    .line 3480
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3481
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3482
    goto/16 :goto_7

    .line 3483
    :cond_e7
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3485
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3486
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3487
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3488
    goto/16 :goto_7

    .line 3463
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v4, v5

    :cond_e8
    move v0, v4

    .line 3464
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_e9

    .line 3465
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3466
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3467
    goto/16 :goto_7

    .line 3468
    :cond_e9
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3470
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3471
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3472
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3473
    goto/16 :goto_7

    .line 3448
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v4, v5

    :cond_ea
    move v0, v4

    .line 3449
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_eb

    .line 3450
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3452
    goto/16 :goto_7

    .line 3453
    :cond_eb
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3455
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3456
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3457
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3458
    goto/16 :goto_7

    .line 3431
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v4, v5

    :cond_ec
    move v0, v4

    .line 3432
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ed

    .line 3433
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3434
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3435
    goto/16 :goto_7

    .line 3436
    :cond_ed
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3438
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3439
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3441
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3442
    .local v3, "serviceClass":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V

    .line 3443
    goto/16 :goto_7

    .line 3416
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v4, v5

    :cond_ee
    move v0, v4

    .line 3417
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ef

    .line 3418
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3420
    goto/16 :goto_7

    .line 3421
    :cond_ef
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3423
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3424
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3425
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3426
    goto/16 :goto_7

    .line 3400
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v4, v5

    :cond_f0
    move v0, v4

    .line 3401
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_f1

    .line 3402
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3403
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3404
    goto/16 :goto_7

    .line 3405
    :cond_f1
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3407
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3408
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3409
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3410
    .local v2, "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3411
    goto/16 :goto_7

    .line 3385
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "callForwardInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v4, v5

    :cond_f2
    move v0, v4

    .line 3386
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_f3

    .line 3387
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3389
    goto/16 :goto_7

    .line 3390
    :cond_f3
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3392
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3393
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3394
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3395
    goto/16 :goto_7

    .line 3368
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v4, v5

    :cond_f4
    move v0, v4

    .line 3369
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_f5

    .line 3370
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3371
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3372
    goto/16 :goto_7

    .line 3373
    :cond_f5
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3375
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3376
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3378
    .local v2, "n":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3379
    .local v3, "m":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V

    .line 3380
    goto/16 :goto_7

    .line 3353
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "n":I
    .end local v3    # "m":I
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v4, v5

    :cond_f6
    move v0, v4

    .line 3354
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_f7

    .line 3355
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3356
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3357
    goto/16 :goto_7

    .line 3358
    :cond_f7
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3360
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3361
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3362
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3363
    goto/16 :goto_7

    .line 3338
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v4, v5

    :cond_f8
    move v0, v4

    .line 3339
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_f9

    .line 3340
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3341
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3342
    goto/16 :goto_7

    .line 3343
    :cond_f9
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3345
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3346
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3347
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3348
    goto/16 :goto_7

    .line 3321
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v4, v5

    :cond_fa
    move v0, v4

    .line 3322
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_fb

    .line 3323
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3324
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3325
    goto/16 :goto_7

    .line 3326
    :cond_fb
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3328
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3329
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3330
    new-instance v2, Landroid/hardware/radio/V1_0/IccIoResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIoResult;-><init>()V

    .line 3331
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIoResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3332
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    .line 3333
    goto/16 :goto_7

    .line 3304
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIoResult;
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v4, v5

    :cond_fc
    move v0, v4

    .line 3305
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_fd

    .line 3306
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3307
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3308
    goto/16 :goto_7

    .line 3309
    :cond_fd
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3311
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3312
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3313
    new-instance v2, Landroid/hardware/radio/V1_0/SetupDataCallResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SetupDataCallResult;-><init>()V

    .line 3314
    .local v2, "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3315
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V

    .line 3316
    goto/16 :goto_7

    .line 3287
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dcResponse":Landroid/hardware/radio/V1_0/SetupDataCallResult;
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v4, v5

    :cond_fe
    move v0, v4

    .line 3288
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_ff

    .line 3289
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3290
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3291
    goto/16 :goto_7

    .line 3292
    :cond_ff
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3294
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3295
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3296
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3297
    .local v2, "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3298
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3299
    goto/16 :goto_7

    .line 3270
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v4, v5

    :cond_100
    move v0, v4

    .line 3271
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_101

    .line 3272
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3273
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3274
    goto/16 :goto_7

    .line 3275
    :cond_101
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3277
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3278
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3279
    new-instance v2, Landroid/hardware/radio/V1_0/SendSmsResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SendSmsResult;-><init>()V

    .line 3280
    .restart local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SendSmsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3281
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    .line 3282
    goto/16 :goto_7

    .line 3255
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/SendSmsResult;
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v4, v5

    :cond_102
    move v0, v4

    .line 3256
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_103

    .line 3257
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3258
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3259
    goto/16 :goto_7

    .line 3260
    :cond_103
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3262
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3263
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3264
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3265
    goto/16 :goto_7

    .line 3240
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v4, v5

    :cond_104
    move v0, v4

    .line 3241
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_105

    .line 3242
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3243
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3244
    goto/16 :goto_7

    .line 3245
    :cond_105
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3247
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3248
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3249
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3250
    goto/16 :goto_7

    .line 3222
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v4, v5

    :cond_106
    move v0, v4

    .line 3223
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_107

    .line 3224
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3226
    goto/16 :goto_7

    .line 3227
    :cond_107
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3229
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3230
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3232
    .local v2, "longName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3233
    .local v3, "shortName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3234
    .local v4, "numeric":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    goto/16 :goto_7

    .line 3205
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "longName":Ljava/lang/String;
    .end local v3    # "shortName":Ljava/lang/String;
    .end local v4    # "numeric":Ljava/lang/String;
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v4, v5

    :cond_108
    move v0, v4

    .line 3206
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_109

    .line 3207
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3209
    goto/16 :goto_7

    .line 3210
    :cond_109
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3212
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3213
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3214
    new-instance v2, Landroid/hardware/radio/V1_0/DataRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataRegStateResult;-><init>()V

    .line 3215
    .local v2, "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/DataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3216
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V

    .line 3217
    goto/16 :goto_7

    .line 3188
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "dataRegResponse":Landroid/hardware/radio/V1_0/DataRegStateResult;
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v4, v5

    :cond_10a
    move v0, v4

    .line 3189
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_10b

    .line 3190
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3191
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3192
    goto/16 :goto_7

    .line 3193
    :cond_10b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3195
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3196
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3197
    new-instance v2, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;-><init>()V

    .line 3198
    .local v2, "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3199
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V

    .line 3200
    goto/16 :goto_7

    .line 3171
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "voiceRegResponse":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v4, v5

    :cond_10c
    move v0, v4

    .line 3172
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_10d

    .line 3173
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3174
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3175
    goto/16 :goto_7

    .line 3176
    :cond_10d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3178
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3179
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3180
    new-instance v2, Landroid/hardware/radio/V1_0/SignalStrength;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SignalStrength;-><init>()V

    .line 3181
    .local v2, "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SignalStrength;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3182
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    .line 3183
    goto/16 :goto_7

    .line 3154
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "sigStrength":Landroid/hardware/radio/V1_0/SignalStrength;
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v4, v5

    :cond_10e
    move v0, v4

    .line 3155
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_10f

    .line 3156
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3157
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3158
    goto/16 :goto_7

    .line 3159
    :cond_10f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3161
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3162
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3163
    new-instance v2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 3164
    .local v2, "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3165
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    .line 3166
    goto/16 :goto_7

    .line 3139
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "failCauseinfo":Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v4, v5

    :cond_110
    move v0, v4

    .line 3140
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_111

    .line 3141
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3143
    goto/16 :goto_7

    .line 3144
    :cond_111
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3146
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3147
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3148
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3149
    goto/16 :goto_7

    .line 3124
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v4, v5

    :cond_112
    move v0, v4

    .line 3125
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_113

    .line 3126
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3127
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3128
    goto/16 :goto_7

    .line 3129
    :cond_113
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3131
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3132
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3133
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3134
    goto/16 :goto_7

    .line 3109
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v4, v5

    :cond_114
    move v0, v4

    .line 3110
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_115

    .line 3111
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3112
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3113
    goto/16 :goto_7

    .line 3114
    :cond_115
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3116
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3117
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3118
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3119
    goto/16 :goto_7

    .line 3094
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v4, v5

    :cond_116
    move v0, v4

    .line 3095
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_117

    .line 3096
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3098
    goto/16 :goto_7

    .line 3099
    :cond_117
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3101
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3102
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3103
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3104
    goto/16 :goto_7

    .line 3079
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v4, v5

    :cond_118
    move v0, v4

    .line 3080
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_119

    .line 3081
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3082
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3083
    goto/16 :goto_7

    .line 3084
    :cond_119
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3086
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3087
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3088
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3089
    goto/16 :goto_7

    .line 3064
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v4, v5

    :cond_11a
    move v0, v4

    .line 3065
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_11b

    .line 3066
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3067
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3068
    goto/16 :goto_7

    .line 3069
    :cond_11b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3071
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3072
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3073
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3074
    goto/16 :goto_7

    .line 3048
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v4, v5

    :cond_11c
    move v0, v4

    .line 3049
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_11d

    .line 3050
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3051
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3052
    goto/16 :goto_7

    .line 3053
    :cond_11d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3055
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3056
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3057
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3058
    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 3059
    goto/16 :goto_7

    .line 3033
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "imsi":Ljava/lang/String;
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v4, v5

    :cond_11e
    move v0, v4

    .line 3034
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_11f

    .line 3035
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3036
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3037
    goto/16 :goto_7

    .line 3038
    :cond_11f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3040
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3041
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3042
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 3043
    goto/16 :goto_7

    .line 3017
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v4, v5

    :cond_120
    move v0, v4

    .line 3018
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_121

    .line 3019
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3020
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3021
    goto/16 :goto_7

    .line 3022
    :cond_121
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3024
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3025
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3026
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/Call;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3027
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 3028
    goto/16 :goto_7

    .line 3001
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/Call;>;"
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    move v4, v5

    :cond_122
    move v0, v4

    .line 3002
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_123

    .line 3003
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3004
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3005
    goto/16 :goto_7

    .line 3006
    :cond_123
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3008
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 3009
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3011
    .local v2, "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 3012
    goto/16 :goto_7

    .line 2985
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_88
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_124

    move v4, v5

    :cond_124
    move v0, v4

    .line 2986
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_125

    .line 2987
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2988
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2989
    goto/16 :goto_7

    .line 2990
    :cond_125
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2992
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2993
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2994
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2995
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2996
    goto/16 :goto_7

    .line 2969
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_89
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_126

    move v4, v5

    :cond_126
    move v0, v4

    .line 2970
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_127

    .line 2971
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2972
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2973
    goto/16 :goto_7

    .line 2974
    :cond_127
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2976
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2977
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2978
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2979
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2980
    goto/16 :goto_7

    .line 2953
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_8a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_128

    move v4, v5

    :cond_128
    move v0, v4

    .line 2954
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_129

    .line 2955
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2957
    goto/16 :goto_7

    .line 2958
    :cond_129
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2960
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2961
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2962
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2963
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2964
    goto/16 :goto_7

    .line 2937
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_8b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12a

    move v4, v5

    :cond_12a
    move v0, v4

    .line 2938
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_12b

    .line 2939
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2940
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2941
    goto/16 :goto_7

    .line 2942
    :cond_12b
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2944
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2945
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2946
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2947
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2948
    goto/16 :goto_7

    .line 2921
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_8c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12c

    move v4, v5

    :cond_12c
    move v0, v4

    .line 2922
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_12d

    .line 2923
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2924
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2925
    goto :goto_7

    .line 2926
    :cond_12d
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2928
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2929
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2931
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2932
    goto :goto_7

    .line 2905
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_8d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12e

    move v4, v5

    :cond_12e
    move v0, v4

    .line 2906
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_12f

    .line 2907
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2908
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2909
    goto :goto_7

    .line 2910
    :cond_12f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2912
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2913
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2914
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2915
    .restart local v2    # "remainingRetries":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V

    .line 2916
    goto :goto_7

    .line 2888
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "remainingRetries":I
    :pswitch_8e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_130

    move v4, v5

    :cond_130
    move v0, v4

    .line 2889
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v5, :cond_131

    .line 2890
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2892
    goto :goto_7

    .line 2893
    :cond_131
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2895
    new-instance v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 2896
    .restart local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v1, v8}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2897
    new-instance v2, Landroid/hardware/radio/V1_0/CardStatus;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CardStatus;-><init>()V

    .line 2898
    .local v2, "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CardStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2899
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    .line 2900
    nop

    .line 5310
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .end local v2    # "cardStatus":Landroid/hardware/radio/V1_0/CardStatus;
    :cond_132
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2839
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2867
    const-string v0, "android.hardware.radio@1.2::IRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2868
    return-object p0

    .line 2870
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

    .line 2874
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 2875
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2829
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_2/IRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2861
    const/4 v0, 0x1

    return v0
.end method
