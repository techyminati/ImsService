.class public abstract Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioExIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2304
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 2307
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

    .line 2320
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 2357
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2358
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2359
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2360
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2361
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

    .line 2332
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
        0x53t
        -0x6dt
        -0x70t
        0x47t
        0x1t
        -0x55t
        0x5ft
        0x6ct
        -0x44t
        0x13t
        0x1t
        0x5at
        0x6dt
        0x74t
        0x26t
        -0x7t
        0x6bt
        -0xft
        0x7bt
        -0x12t
        0x43t
        -0x20t
        0x1et
        -0x5t
        0x51t
        -0x18t
        -0x19t
        0x55t
        0x50t
        0xct
        -0x17t
        -0x1at
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

    .line 2312
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioExIndication"

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

    .line 2326
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioExIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2345
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 2367
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2369
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

    .line 2397
    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioExIndication"

    sparse-switch p1, :sswitch_data_59e

    goto/16 :goto_59c

    .line 3262
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3264
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->notifySyspropsChanged()V

    .line 3265
    goto/16 :goto_59c

    .line 3251
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3253
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 3254
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3255
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3257
    goto/16 :goto_59c

    .line 3241
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->ping()V

    .line 3244
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3245
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3246
    goto/16 :goto_59c

    .line 3236
    :sswitch_32
    goto/16 :goto_59c

    .line 3228
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3230
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->setHALInstrumentation()V

    .line 3231
    goto/16 :goto_59c

    .line 3194
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3196
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 3197
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3199
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 3201
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3202
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 3203
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3204
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 3205
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 3207
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 3208
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 3210
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 3214
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3215
    nop

    .line 3205
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 3211
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3218
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3220
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3222
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3223
    goto/16 :goto_59c

    .line 3183
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3185
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 3186
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3187
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3188
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3189
    goto/16 :goto_59c

    .line 3171
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 3174
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 3175
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 3176
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3178
    goto/16 :goto_59c

    .line 3160
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3162
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 3163
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3164
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3165
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3166
    goto/16 :goto_59c

    .line 3150
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3153
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3154
    .local v1, "nrSysInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->nrSysInfoInd(ILjava/util/ArrayList;)V

    .line 3155
    goto/16 :goto_59c

    .line 3140
    .end local v0    # "type":I
    .end local v1    # "nrSysInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_db
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3143
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3144
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->on5GUWInfoInd(ILjava/util/ArrayList;)V

    .line 3145
    goto/16 :goto_59c

    .line 3130
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_eb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3133
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3134
    .local v1, "bands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->nrCaBandChangeInd(ILjava/util/ArrayList;)V

    .line 3135
    goto/16 :goto_59c

    .line 3120
    .end local v0    # "type":I
    .end local v1    # "bands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_fb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3123
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3124
    .local v1, "state":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->iwlanRegistrationStateInd(II)V

    .line 3125
    goto/16 :goto_59c

    .line 3109
    .end local v0    # "type":I
    .end local v1    # "state":I
    :sswitch_10b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3111
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3112
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3113
    .local v1, "rat":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3114
    .local v2, "state":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onNwRrcStateInd(III)V

    .line 3115
    goto/16 :goto_59c

    .line 3097
    .end local v0    # "type":I
    .end local v1    # "rat":I
    .end local v2    # "state":I
    :sswitch_11f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3100
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3101
    .local v1, "mimo":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3102
    .local v2, "qam_256":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3103
    .local v3, "qam_ul64":Z
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onNwCfgInfoInd(IZZZ)V

    .line 3104
    goto/16 :goto_59c

    .line 3086
    .end local v0    # "type":I
    .end local v1    # "mimo":Z
    .end local v2    # "qam_256":Z
    .end local v3    # "qam_ul64":Z
    :sswitch_137
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3089
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3090
    .local v1, "sib16Time":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 3091
    .local v2, "receivedTime":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->sib16TimeInfoInd(ILjava/lang/String;J)V

    .line 3092
    goto/16 :goto_59c

    .line 3074
    .end local v0    # "type":I
    .end local v1    # "sib16Time":Ljava/lang/String;
    .end local v2    # "receivedTime":J
    :sswitch_14b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3077
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3078
    .local v1, "longName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3079
    .local v2, "shortName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3080
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->toeInfoInd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    goto/16 :goto_59c

    .line 3063
    .end local v0    # "type":I
    .end local v1    # "longName":Ljava/lang/String;
    .end local v2    # "shortName":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    :sswitch_163
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3066
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3067
    .local v1, "eventId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3068
    .local v2, "eventString":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onRsuEvent(IILjava/lang/String;)V

    .line 3069
    goto/16 :goto_59c

    .line 3052
    .end local v0    # "type":I
    .end local v1    # "eventId":I
    .end local v2    # "eventString":Ljava/lang/String;
    :sswitch_177
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3054
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3055
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;-><init>()V

    .line 3056
    .local v1, "plmnMvnoInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3057
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onPlmnDataInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;)V

    .line 3058
    goto/16 :goto_59c

    .line 3042
    .end local v0    # "type":I
    .end local v1    # "plmnMvnoInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;
    :sswitch_18b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3044
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3045
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3046
    .local v1, "iccid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->iccidChanged(ILjava/lang/String;)V

    .line 3047
    goto/16 :goto_59c

    .line 3032
    .end local v0    # "type":I
    .end local v1    # "iccid":Ljava/lang/String;
    :sswitch_19b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3035
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3036
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onNwLimitInd(ILjava/util/ArrayList;)V

    .line 3037
    goto/16 :goto_59c

    .line 3022
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1ab
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3025
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3026
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->mobileDataUsageInd(ILjava/util/ArrayList;)V

    .line 3027
    goto/16 :goto_59c

    .line 3012
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1bb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3015
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3016
    .local v1, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onCellularQualityChangedInd(ILjava/util/ArrayList;)V

    .line 3017
    goto/16 :goto_59c

    .line 3002
    .end local v0    # "type":I
    .end local v1    # "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1cb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3005
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 3006
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->qualifiedNetworkTypesChangedInd(ILjava/util/ArrayList;)V

    .line 3007
    goto/16 :goto_59c

    .line 2992
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1db
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2995
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2996
    .local v1, "mode":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onDsdaChangedInd(II)V

    .line 2997
    goto/16 :goto_59c

    .line 2982
    .end local v0    # "type":I
    .end local v1    # "mode":I
    :sswitch_1eb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2985
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2986
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->smsInfoExtInd(ILjava/lang/String;)V

    .line 2987
    goto/16 :goto_59c

    .line 2972
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/lang/String;
    :sswitch_1fb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2974
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2975
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2976
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->networkBandInfoInd(ILjava/util/ArrayList;)V

    .line 2977
    goto/16 :goto_59c

    .line 2962
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_20b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2964
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2965
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2966
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onSimPowerChangedInd(ILjava/util/ArrayList;)V

    .line 2967
    goto/16 :goto_59c

    .line 2952
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_21b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2955
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2956
    .restart local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V

    .line 2957
    goto/16 :goto_59c

    .line 2942
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_22b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2945
    .local v0, "indicationType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2946
    .local v1, "dsbpState":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->dsbpStateChanged(II)V

    .line 2947
    goto/16 :goto_59c

    .line 2932
    .end local v0    # "indicationType":I
    .end local v1    # "dsbpState":I
    :sswitch_23b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2934
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2935
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2936
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->networkRejectCauseInd(ILjava/util/ArrayList;)V

    .line 2937
    goto/16 :goto_59c

    .line 2922
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_24b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2924
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2925
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2926
    .local v1, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onTxPowerStatusIndication(ILjava/util/ArrayList;)V

    .line 2927
    goto/16 :goto_59c

    .line 2912
    .end local v0    # "type":I
    .end local v1    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_25b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2915
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2916
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onMccMncChanged(ILjava/lang/String;)V

    .line 2917
    goto/16 :goto_59c

    .line 2902
    .end local v0    # "type":I
    .end local v1    # "mccmnc":Ljava/lang/String;
    :sswitch_26b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2904
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2905
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2906
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onPseudoCellInfoInd(ILjava/util/ArrayList;)V

    .line 2907
    goto/16 :goto_59c

    .line 2892
    .end local v0    # "type":I
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_27b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2895
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2896
    .local v1, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onTxPowerIndication(ILjava/util/ArrayList;)V

    .line 2897
    goto/16 :goto_59c

    .line 2883
    .end local v0    # "type":I
    .end local v1    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_28b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2885
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2886
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onRemoveRestrictEutran(I)V

    .line 2887
    goto/16 :goto_59c

    .line 2874
    .end local v0    # "type":I
    :sswitch_297
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2877
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onMdDataRetryCountReset(I)V

    .line 2878
    goto/16 :goto_59c

    .line 2864
    .end local v0    # "type":I
    :sswitch_2a3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2867
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2868
    .local v1, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->confSRVCC(ILjava/util/ArrayList;)V

    .line 2869
    goto/16 :goto_59c

    .line 2853
    .end local v0    # "type":I
    .end local v1    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_2b3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2856
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;-><init>()V

    .line 2857
    .local v1, "pcoData":Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2858
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->pcoDataAfterAttached(ILvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;)V

    .line 2859
    goto/16 :goto_59c

    .line 2843
    .end local v0    # "type":I
    .end local v1    # "pcoData":Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;
    :sswitch_2c7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2846
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2847
    .local v1, "apnClassType":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->mdChangedApnInd(II)V

    .line 2848
    goto/16 :goto_59c

    .line 2834
    .end local v0    # "type":I
    .end local v1    # "apnClassType":I
    :sswitch_2d7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2837
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->resetAttachApnInd(I)V

    .line 2838
    goto/16 :goto_59c

    .line 2825
    .end local v0    # "type":I
    :sswitch_2e3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2828
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onStkMenuReset(I)V

    .line 2829
    goto/16 :goto_59c

    .line 2816
    .end local v0    # "type":I
    :sswitch_2ef
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2819
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->triggerOtaSP(I)V

    .line 2820
    goto/16 :goto_59c

    .line 2806
    .end local v0    # "type":I
    :sswitch_2fb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2808
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2809
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2810
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->bipProactiveCommand(ILjava/lang/String;)V

    .line 2811
    goto/16 :goto_59c

    .line 2796
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_30b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2798
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2799
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2800
    .local v1, "cid":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->dedicatedBearerDeactivationInd(II)V

    .line 2801
    goto/16 :goto_59c

    .line 2785
    .end local v0    # "type":I
    .end local v1    # "cid":I
    :sswitch_31b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2788
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;-><init>()V

    .line 2789
    .local v1, "ddcData":Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2790
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->dedicatedBearerModificationInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;)V

    .line 2791
    goto/16 :goto_59c

    .line 2774
    .end local v0    # "type":I
    .end local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;
    :sswitch_32f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2776
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2777
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;-><init>()V

    .line 2778
    .restart local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2779
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->dedicatedBearerActivationInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;)V

    .line 2780
    goto/16 :goto_59c

    .line 2764
    .end local v0    # "type":I
    .end local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;
    :sswitch_343
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2767
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2768
    .local v1, "lteBand":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->responseLteNetworkInfo(II)V

    .line 2769
    goto/16 :goto_59c

    .line 2753
    .end local v0    # "type":I
    .end local v1    # "lteBand":I
    :sswitch_353
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2756
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 2757
    .local v1, "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2758
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;)V

    .line 2759
    goto/16 :goto_59c

    .line 2743
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;
    :sswitch_367
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2745
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2746
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2747
    .local v1, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->networkInfoInd(ILjava/util/ArrayList;)V

    .line 2748
    goto/16 :goto_59c

    .line 2733
    .end local v0    # "type":I
    .end local v1    # "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_377
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2736
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2737
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->responseFemtocellInfo(ILjava/util/ArrayList;)V

    .line 2738
    goto/16 :goto_59c

    .line 2723
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_387
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2726
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2727
    .local v1, "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->responseModulationInfoInd(ILjava/util/ArrayList;)V

    .line 2728
    goto/16 :goto_59c

    .line 2713
    .end local v0    # "type":I
    .end local v1    # "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_397
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2715
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2716
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2717
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->responseNetworkEventInd(ILjava/util/ArrayList;)V

    .line 2718
    goto/16 :goto_59c

    .line 2703
    .end local v0    # "type":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_3a7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2705
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2706
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2707
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->responseInvalidSimInd(ILjava/util/ArrayList;)V

    .line 2708
    goto/16 :goto_59c

    .line 2693
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_3b7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2696
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2697
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 2698
    goto/16 :goto_59c

    .line 2683
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_3c7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2686
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2687
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 2688
    goto/16 :goto_59c

    .line 2673
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_3d7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2676
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2677
    .local v1, "esnMeid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->esnMeidChangeInd(ILjava/lang/String;)V

    .line 2678
    goto/16 :goto_59c

    .line 2663
    .end local v0    # "type":I
    .end local v1    # "esnMeid":Ljava/lang/String;
    :sswitch_3e7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2666
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2667
    .local v1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->worldModeChangedIndication(ILjava/util/ArrayList;)V

    .line 2668
    goto/16 :goto_59c

    .line 2653
    .end local v0    # "type":I
    .end local v1    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_3f7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2655
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2656
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2657
    .local v1, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->gmssRatChangedIndication(ILjava/util/ArrayList;)V

    .line 2658
    goto/16 :goto_59c

    .line 2643
    .end local v0    # "type":I
    .end local v1    # "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_407
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2646
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2647
    .local v1, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->registrationSuspendedIndication(ILjava/util/ArrayList;)V

    .line 2648
    goto/16 :goto_59c

    .line 2633
    .end local v0    # "type":I
    .end local v1    # "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_417
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2636
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2637
    .local v1, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->plmnChangedIndication(ILjava/util/ArrayList;)V

    .line 2638
    goto/16 :goto_59c

    .line 2623
    .end local v0    # "type":I
    .end local v1    # "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_427
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2626
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2627
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    .line 2628
    goto/16 :goto_59c

    .line 2614
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_437
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2617
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->smsReadyInd(I)V

    .line 2618
    goto/16 :goto_59c

    .line 2605
    .end local v0    # "type":I
    :sswitch_443
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2608
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->meSmsStorageFullInd(I)V

    .line 2609
    goto/16 :goto_59c

    .line 2594
    .end local v0    # "type":I
    :sswitch_44f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2597
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;-><init>()V

    .line 2598
    .local v1, "etws":Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2599
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->newEtwsInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;)V

    .line 2600
    goto/16 :goto_59c

    .line 2583
    .end local v0    # "type":I
    .end local v1    # "etws":Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;
    :sswitch_463
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2586
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;-><init>()V

    .line 2587
    .local v1, "event":Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2588
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onVsimEventIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;)V

    .line 2589
    goto/16 :goto_59c

    .line 2574
    .end local v0    # "type":I
    .end local v1    # "event":Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;
    :sswitch_477
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2577
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onCardDetectedInd(I)V

    .line 2578
    goto/16 :goto_59c

    .line 2564
    .end local v0    # "type":I
    :sswitch_483
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2566
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2567
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2568
    .local v1, "eventId":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onRsuSimLockEvent(II)V

    .line 2569
    goto/16 :goto_59c

    .line 2555
    .end local v0    # "type":I
    .end local v1    # "eventId":I
    :sswitch_493
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2558
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onSimMeLockEvent(I)V

    .line 2559
    goto/16 :goto_59c

    .line 2544
    .end local v0    # "type":I
    :sswitch_49f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2546
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2547
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2548
    .local v1, "event":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2549
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onSimHotSwapInd(IILjava/lang/String;)V

    .line 2550
    goto/16 :goto_59c

    .line 2535
    .end local v0    # "type":I
    .end local v1    # "event":I
    .end local v2    # "info":Ljava/lang/String;
    :sswitch_4b3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2538
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onImsiRefreshDone(I)V

    .line 2539
    goto/16 :goto_59c

    .line 2526
    .end local v0    # "type":I
    :sswitch_4bf
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2528
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2529
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onImeiLock(I)V

    .line 2530
    goto/16 :goto_59c

    .line 2516
    .end local v0    # "type":I
    :sswitch_4cb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2519
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2520
    .local v1, "simInserted":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->onVirtualSimStatusChanged(II)V

    .line 2521
    goto/16 :goto_59c

    .line 2505
    .end local v0    # "type":I
    .end local v1    # "simInserted":I
    :sswitch_4db
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2508
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2509
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2510
    .local v2, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 2511
    goto/16 :goto_59c

    .line 2496
    .end local v0    # "type":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "ecc_list_no_card":Ljava/lang/String;
    :sswitch_4ef
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2499
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->cdmaCallAccepted(I)V

    .line 2500
    goto/16 :goto_59c

    .line 2485
    .end local v0    # "type":I
    :sswitch_4fb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2488
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;-><init>()V

    .line 2489
    .local v1, "crssNotify":Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2490
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->crssIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;)V

    .line 2491
    goto/16 :goto_59c

    .line 2474
    .end local v0    # "type":I
    .end local v1    # "crssNotify":Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;
    :sswitch_50f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2477
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2478
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2479
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->suppSvcNotifyEx(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2480
    goto/16 :goto_59c

    .line 2463
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_523
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2466
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;-><init>()V

    .line 2467
    .local v1, "cipherNotify":Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2468
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->cipherIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;)V

    .line 2469
    goto :goto_59c

    .line 2452
    .end local v0    # "type":I
    .end local v1    # "cipherNotify":Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;
    :sswitch_536
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2455
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2456
    .local v1, "ciType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2457
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->callAdditionalInfoInd(IILjava/util/ArrayList;)V

    .line 2458
    goto :goto_59c

    .line 2441
    .end local v0    # "type":I
    .end local v1    # "ciType":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_549
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2443
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2444
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;-><init>()V

    .line 2445
    .local v1, "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2446
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;)V

    .line 2447
    goto :goto_59c

    .line 2430
    .end local v0    # "type":I
    .end local v1    # "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;
    :sswitch_55c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2432
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2433
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;-><init>()V

    .line 2434
    .local v1, "cfuStatus":Lvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2435
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;)V

    .line 2436
    goto :goto_59c

    .line 2420
    .end local v0    # "type":I
    .end local v1    # "cfuStatus":Lvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;
    :sswitch_56f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2423
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2424
    .local v1, "isPhbReady":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->phbReadyNotification(II)V

    .line 2425
    goto :goto_59c

    .line 2410
    .end local v0    # "type":I
    .end local v1    # "isPhbReady":I
    :sswitch_57e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2413
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2414
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->eMBMSSessionStatusIndication(II)V

    .line 2415
    goto :goto_59c

    .line 2400
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_58d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2403
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2404
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->eMBMSAtInfoIndication(ILjava/lang/String;)V

    .line 2405
    nop

    .line 3274
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/lang/String;
    :goto_59c
    return-void

    nop

    :sswitch_data_59e
    .sparse-switch
        0x1 -> :sswitch_58d
        0x2 -> :sswitch_57e
        0x3 -> :sswitch_56f
        0x4 -> :sswitch_55c
        0x5 -> :sswitch_549
        0x6 -> :sswitch_536
        0x7 -> :sswitch_523
        0x8 -> :sswitch_50f
        0x9 -> :sswitch_4fb
        0xa -> :sswitch_4ef
        0xb -> :sswitch_4db
        0xc -> :sswitch_4cb
        0xd -> :sswitch_4bf
        0xe -> :sswitch_4b3
        0xf -> :sswitch_49f
        0x10 -> :sswitch_493
        0x11 -> :sswitch_483
        0x12 -> :sswitch_477
        0x13 -> :sswitch_463
        0x14 -> :sswitch_44f
        0x15 -> :sswitch_443
        0x16 -> :sswitch_437
        0x17 -> :sswitch_427
        0x18 -> :sswitch_417
        0x19 -> :sswitch_407
        0x1a -> :sswitch_3f7
        0x1b -> :sswitch_3e7
        0x1c -> :sswitch_3d7
        0x1d -> :sswitch_3c7
        0x1e -> :sswitch_3b7
        0x1f -> :sswitch_3a7
        0x20 -> :sswitch_397
        0x21 -> :sswitch_387
        0x22 -> :sswitch_377
        0x23 -> :sswitch_367
        0x24 -> :sswitch_353
        0x25 -> :sswitch_343
        0x26 -> :sswitch_32f
        0x27 -> :sswitch_31b
        0x28 -> :sswitch_30b
        0x29 -> :sswitch_2fb
        0x2a -> :sswitch_2ef
        0x2b -> :sswitch_2e3
        0x2c -> :sswitch_2d7
        0x2d -> :sswitch_2c7
        0x2e -> :sswitch_2b3
        0x2f -> :sswitch_2a3
        0x30 -> :sswitch_297
        0x31 -> :sswitch_28b
        0x32 -> :sswitch_27b
        0x33 -> :sswitch_26b
        0x34 -> :sswitch_25b
        0x35 -> :sswitch_24b
        0x36 -> :sswitch_23b
        0x37 -> :sswitch_22b
        0x38 -> :sswitch_21b
        0x39 -> :sswitch_20b
        0x3a -> :sswitch_1fb
        0x3b -> :sswitch_1eb
        0x3c -> :sswitch_1db
        0x3d -> :sswitch_1cb
        0x3e -> :sswitch_1bb
        0x3f -> :sswitch_1ab
        0x40 -> :sswitch_19b
        0x41 -> :sswitch_18b
        0x42 -> :sswitch_177
        0x43 -> :sswitch_163
        0x44 -> :sswitch_14b
        0x45 -> :sswitch_137
        0x46 -> :sswitch_11f
        0x47 -> :sswitch_10b
        0x48 -> :sswitch_fb
        0x49 -> :sswitch_eb
        0x4a -> :sswitch_db
        0x4b -> :sswitch_cb
        0xf43484e -> :sswitch_b9
        0xf444247 -> :sswitch_a3
        0xf445343 -> :sswitch_91
        0xf485348 -> :sswitch_3c
        0xf494e54 -> :sswitch_34
        0xf4c5444 -> :sswitch_32
        0xf504e47 -> :sswitch_24
        0xf524546 -> :sswitch_12
        0xf535953 -> :sswitch_a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 2351
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2379
    const-string v0, "vendor.mediatek.hardware.mtkradioex@3.0::IMtkRadioExIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2380
    return-object p0

    .line 2382
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

    .line 2386
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2387
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 2341
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioExIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2373
    const/4 v0, 0x1

    return v0
.end method
