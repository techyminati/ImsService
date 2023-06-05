.class public abstract Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioExIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1862
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1865
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

    .line 1878
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1915
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1916
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1917
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1918
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1919
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

    .line 1890
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x45t
        0x2et
        -0xft
        -0x17t
        0x59t
        0x6ft
        -0x78t
        0xet
        0x55t
        0x34t
        -0x51t
        -0x5dt
        -0x79t
        -0x3ft
        -0x12t
        0x59t
        -0x62t
        -0x2dt
        0x72t
        -0x29t
        0x1at
        -0x25t
        0x24t
        -0x28t
        0x2et
        -0x4et
        -0x4ft
        0x31t
        0x54t
        -0x1ft
        -0x17t
        0x21t
    .end array-data

    :array_1
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1870
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioExIndication"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1884
    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioExIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1903
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1925
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1927
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1955
    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioExIndication"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 3090
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 3091
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_96

    .line 3092
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3094
    goto/16 :goto_7

    .line 3077
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 3078
    .local v2, "_hidl_is_oneway":Z
    :cond_1
    if-eq v2, v3, :cond_2

    .line 3079
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3081
    goto/16 :goto_7

    .line 3082
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->notifySyspropsChanged()V

    .line 3085
    goto/16 :goto_7

    .line 3061
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 3062
    .local v3, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 3063
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3064
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3065
    goto/16 :goto_7

    .line 3066
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3068
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 3069
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3070
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3071
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3072
    goto/16 :goto_7

    .line 3046
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 3047
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 3048
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3049
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3050
    goto/16 :goto_7

    .line 3051
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->ping()V

    .line 3054
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3056
    goto/16 :goto_7

    .line 3036
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 3037
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_96

    .line 3038
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3040
    goto/16 :goto_7

    .line 3023
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    move v2, v3

    .line 3024
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v2, v3, :cond_9

    .line 3025
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3027
    goto/16 :goto_7

    .line 3028
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3030
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->setHALInstrumentation()V

    .line 3031
    goto/16 :goto_7

    .line 2984
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 2985
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 2986
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2987
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2988
    goto/16 :goto_7

    .line 2989
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2991
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2992
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2994
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2996
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2997
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2998
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2999
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 3000
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 3002
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 3003
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 3005
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 3009
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3010
    nop

    .line 3000
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3006
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3013
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3015
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3017
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 3018
    goto/16 :goto_7

    .line 2968
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 2969
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v3, :cond_f

    .line 2970
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2972
    goto/16 :goto_7

    .line 2973
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2975
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2976
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2977
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2979
    goto/16 :goto_7

    .line 2951
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 2952
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v3, :cond_11

    .line 2953
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2954
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2955
    goto/16 :goto_7

    .line 2956
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2959
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2960
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2961
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2962
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2963
    goto/16 :goto_7

    .line 2935
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 2936
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v3, :cond_13

    .line 2937
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2938
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2939
    goto/16 :goto_7

    .line 2940
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2942
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2943
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2944
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2945
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2946
    goto/16 :goto_7

    .line 2920
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14

    move v2, v3

    .line 2921
    .local v2, "_hidl_is_oneway":Z
    :cond_14
    if-eq v2, v3, :cond_15

    .line 2922
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2923
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2924
    goto/16 :goto_7

    .line 2925
    :cond_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2927
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2928
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2929
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->mobileDataUsageInd(ILjava/util/ArrayList;)V

    .line 2930
    goto/16 :goto_7

    .line 2905
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16

    move v2, v3

    .line 2906
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v2, v3, :cond_17

    .line 2907
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2909
    goto/16 :goto_7

    .line 2910
    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2913
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2914
    .local v1, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onCellularQualityChangedInd(ILjava/util/ArrayList;)V

    .line 2915
    goto/16 :goto_7

    .line 2890
    .end local v0    # "type":I
    .end local v1    # "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    move v2, v3

    .line 2891
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v2, v3, :cond_19

    .line 2892
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2893
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2894
    goto/16 :goto_7

    .line 2895
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2898
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2899
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->qualifiedNetworkTypesChangedInd(ILjava/util/ArrayList;)V

    .line 2900
    goto/16 :goto_7

    .line 2875
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a

    move v2, v3

    .line 2876
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v2, v3, :cond_1b

    .line 2877
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2878
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2879
    goto/16 :goto_7

    .line 2880
    :cond_1b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2882
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2883
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2884
    .local v1, "mode":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onDsdaChangedInd(II)V

    .line 2885
    goto/16 :goto_7

    .line 2860
    .end local v0    # "type":I
    .end local v1    # "mode":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c

    move v2, v3

    .line 2861
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v2, v3, :cond_1d

    .line 2862
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2863
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2864
    goto/16 :goto_7

    .line 2865
    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2868
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2869
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->smsInfoExtInd(ILjava/lang/String;)V

    .line 2870
    goto/16 :goto_7

    .line 2845
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e

    move v2, v3

    .line 2846
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v2, v3, :cond_1f

    .line 2847
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2849
    goto/16 :goto_7

    .line 2850
    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2852
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2853
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2854
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->networkBandInfoInd(ILjava/util/ArrayList;)V

    .line 2855
    goto/16 :goto_7

    .line 2830
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    .line 2831
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_20
    if-eq v2, v3, :cond_21

    .line 2832
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2833
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2834
    goto/16 :goto_7

    .line 2835
    :cond_21
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2838
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2839
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onSimPowerChangedInd(ILjava/util/ArrayList;)V

    .line 2840
    goto/16 :goto_7

    .line 2815
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_22

    move v2, v3

    .line 2816
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v2, v3, :cond_23

    .line 2817
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2819
    goto/16 :goto_7

    .line 2820
    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2823
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2824
    .restart local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V

    .line 2825
    goto/16 :goto_7

    .line 2800
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_24

    move v2, v3

    .line 2801
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_24
    if-eq v2, v3, :cond_25

    .line 2802
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2804
    goto/16 :goto_7

    .line 2805
    :cond_25
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2807
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2808
    .local v0, "indicationType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2809
    .local v1, "dsbpState":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->dsbpStateChanged(II)V

    .line 2810
    goto/16 :goto_7

    .line 2785
    .end local v0    # "indicationType":I
    .end local v1    # "dsbpState":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26

    move v2, v3

    .line 2786
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_26
    if-eq v2, v3, :cond_27

    .line 2787
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2789
    goto/16 :goto_7

    .line 2790
    :cond_27
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2793
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2794
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->networkRejectCauseInd(ILjava/util/ArrayList;)V

    .line 2795
    goto/16 :goto_7

    .line 2770
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_28

    move v2, v3

    .line 2771
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_28
    if-eq v2, v3, :cond_29

    .line 2772
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2774
    goto/16 :goto_7

    .line 2775
    :cond_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2777
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2778
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2779
    .local v1, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onTxPowerStatusIndication(ILjava/util/ArrayList;)V

    .line 2780
    goto/16 :goto_7

    .line 2755
    .end local v0    # "type":I
    .end local v1    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a

    move v2, v3

    .line 2756
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2a
    if-eq v2, v3, :cond_2b

    .line 2757
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2758
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2759
    goto/16 :goto_7

    .line 2760
    :cond_2b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2763
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2764
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onMccMncChanged(ILjava/lang/String;)V

    .line 2765
    goto/16 :goto_7

    .line 2740
    .end local v0    # "type":I
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2c

    move v2, v3

    .line 2741
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2c
    if-eq v2, v3, :cond_2d

    .line 2742
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2743
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2744
    goto/16 :goto_7

    .line 2745
    :cond_2d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2747
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2748
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2749
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onPseudoCellInfoInd(ILjava/util/ArrayList;)V

    .line 2750
    goto/16 :goto_7

    .line 2725
    .end local v0    # "type":I
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2e

    move v2, v3

    .line 2726
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2e
    if-eq v2, v3, :cond_2f

    .line 2727
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2728
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2729
    goto/16 :goto_7

    .line 2730
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2732
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2733
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2734
    .local v1, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onTxPowerIndication(ILjava/util/ArrayList;)V

    .line 2735
    goto/16 :goto_7

    .line 2710
    .end local v0    # "type":I
    .end local v1    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_30

    move v2, v3

    .line 2711
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_30
    if-eq v2, v3, :cond_31

    .line 2712
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2713
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2714
    goto/16 :goto_7

    .line 2715
    :cond_31
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2718
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2719
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onLteAccessStratumStateChanged(ILjava/util/ArrayList;)V

    .line 2720
    goto/16 :goto_7

    .line 2696
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_32

    move v2, v3

    .line 2697
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_32
    if-eq v2, v3, :cond_33

    .line 2698
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2700
    goto/16 :goto_7

    .line 2701
    :cond_33
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2704
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onRemoveRestrictEutran(I)V

    .line 2705
    goto/16 :goto_7

    .line 2682
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_34

    move v2, v3

    .line 2683
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_34
    if-eq v2, v3, :cond_35

    .line 2684
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2686
    goto/16 :goto_7

    .line 2687
    :cond_35
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2690
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onMdDataRetryCountReset(I)V

    .line 2691
    goto/16 :goto_7

    .line 2667
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_36

    move v2, v3

    .line 2668
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_36
    if-eq v2, v3, :cond_37

    .line 2669
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2671
    goto/16 :goto_7

    .line 2672
    :cond_37
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2675
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2676
    .local v1, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->confSRVCC(ILjava/util/ArrayList;)V

    .line 2677
    goto/16 :goto_7

    .line 2651
    .end local v0    # "type":I
    .end local v1    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_38

    move v2, v3

    .line 2652
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_38
    if-eq v2, v3, :cond_39

    .line 2653
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2655
    goto/16 :goto_7

    .line 2656
    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2659
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/PcoDataAttachedInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PcoDataAttachedInfo;-><init>()V

    .line 2660
    .local v1, "pcoData":Lvendor/mediatek/hardware/mtkradioex/V1_0/PcoDataAttachedInfo;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/PcoDataAttachedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2661
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->pcoDataAfterAttached(ILvendor/mediatek/hardware/mtkradioex/V1_0/PcoDataAttachedInfo;)V

    .line 2662
    goto/16 :goto_7

    .line 2636
    .end local v0    # "type":I
    .end local v1    # "pcoData":Lvendor/mediatek/hardware/mtkradioex/V1_0/PcoDataAttachedInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3a

    move v2, v3

    .line 2637
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3a
    if-eq v2, v3, :cond_3b

    .line 2638
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2639
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2640
    goto/16 :goto_7

    .line 2641
    :cond_3b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2644
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2645
    .local v1, "apnClassType":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->mdChangedApnInd(II)V

    .line 2646
    goto/16 :goto_7

    .line 2622
    .end local v0    # "type":I
    .end local v1    # "apnClassType":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    move v2, v3

    .line 2623
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3c
    if-eq v2, v3, :cond_3d

    .line 2624
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2626
    goto/16 :goto_7

    .line 2627
    :cond_3d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2630
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->resetAttachApnInd(I)V

    .line 2631
    goto/16 :goto_7

    .line 2608
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3e

    move v2, v3

    .line 2609
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3e
    if-eq v2, v3, :cond_3f

    .line 2610
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2612
    goto/16 :goto_7

    .line 2613
    :cond_3f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2616
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onStkMenuReset(I)V

    .line 2617
    goto/16 :goto_7

    .line 2594
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_40

    move v2, v3

    .line 2595
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_40
    if-eq v2, v3, :cond_41

    .line 2596
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2598
    goto/16 :goto_7

    .line 2599
    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2602
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->triggerOtaSP(I)V

    .line 2603
    goto/16 :goto_7

    .line 2579
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_42

    move v2, v3

    .line 2580
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_42
    if-eq v2, v3, :cond_43

    .line 2581
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2583
    goto/16 :goto_7

    .line 2584
    :cond_43
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2586
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2587
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2588
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->bipProactiveCommand(ILjava/lang/String;)V

    .line 2589
    goto/16 :goto_7

    .line 2564
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_18
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_44

    move v2, v3

    .line 2565
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_44
    if-eq v2, v3, :cond_45

    .line 2566
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2568
    goto/16 :goto_7

    .line 2569
    :cond_45
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2572
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2573
    .local v1, "cid":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->dedicatedBearerDeactivationInd(II)V

    .line 2574
    goto/16 :goto_7

    .line 2548
    .end local v0    # "type":I
    .end local v1    # "cid":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_46

    move v2, v3

    .line 2549
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_46
    if-eq v2, v3, :cond_47

    .line 2550
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2551
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2552
    goto/16 :goto_7

    .line 2553
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2556
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;-><init>()V

    .line 2557
    .local v1, "ddcData":Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2558
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->dedicatedBearerModificationInd(ILvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;)V

    .line 2559
    goto/16 :goto_7

    .line 2532
    .end local v0    # "type":I
    .end local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_48

    move v2, v3

    .line 2533
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_48
    if-eq v2, v3, :cond_49

    .line 2534
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2535
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2536
    goto/16 :goto_7

    .line 2537
    :cond_49
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2540
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;-><init>()V

    .line 2541
    .restart local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2542
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->dedicatedBearerActivationInd(ILvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;)V

    .line 2543
    goto/16 :goto_7

    .line 2517
    .end local v0    # "type":I
    .end local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V1_0/DedicateDataCall;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4a

    move v2, v3

    .line 2518
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4a
    if-eq v2, v3, :cond_4b

    .line 2519
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2520
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2521
    goto/16 :goto_7

    .line 2522
    :cond_4b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2524
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2525
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2526
    .local v1, "lteBand":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->responseLteNetworkInfo(II)V

    .line 2527
    goto/16 :goto_7

    .line 2501
    .end local v0    # "type":I
    .end local v1    # "lteBand":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4c

    move v2, v3

    .line 2502
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4c
    if-eq v2, v3, :cond_4d

    .line 2503
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2504
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2505
    goto/16 :goto_7

    .line 2506
    :cond_4d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2509
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 2510
    .local v1, "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2511
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;)V

    .line 2512
    goto/16 :goto_7

    .line 2486
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V1_0/SignalStrengthWithWcdmaEcio;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4e

    move v2, v3

    .line 2487
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4e
    if-eq v2, v3, :cond_4f

    .line 2488
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2490
    goto/16 :goto_7

    .line 2491
    :cond_4f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2494
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2495
    .local v1, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->networkInfoInd(ILjava/util/ArrayList;)V

    .line 2496
    goto/16 :goto_7

    .line 2471
    .end local v0    # "type":I
    .end local v1    # "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_50

    move v2, v3

    .line 2472
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_50
    if-eq v2, v3, :cond_51

    .line 2473
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2474
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2475
    goto/16 :goto_7

    .line 2476
    :cond_51
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2479
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2480
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->responseFemtocellInfo(ILjava/util/ArrayList;)V

    .line 2481
    goto/16 :goto_7

    .line 2456
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_52

    move v2, v3

    .line 2457
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_52
    if-eq v2, v3, :cond_53

    .line 2458
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2459
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2460
    goto/16 :goto_7

    .line 2461
    :cond_53
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2463
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2464
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2465
    .local v1, "allowed":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->dataAllowedNotification(II)V

    .line 2466
    goto/16 :goto_7

    .line 2441
    .end local v0    # "type":I
    .end local v1    # "allowed":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_54

    move v2, v3

    .line 2442
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_54
    if-eq v2, v3, :cond_55

    .line 2443
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2444
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2445
    goto/16 :goto_7

    .line 2446
    :cond_55
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2448
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2449
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2450
    .local v1, "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->responseModulationInfoInd(ILjava/util/ArrayList;)V

    .line 2451
    goto/16 :goto_7

    .line 2426
    .end local v0    # "type":I
    .end local v1    # "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_56

    move v2, v3

    .line 2427
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_56
    if-eq v2, v3, :cond_57

    .line 2428
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2429
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2430
    goto/16 :goto_7

    .line 2431
    :cond_57
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2434
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2435
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->responseNetworkEventInd(ILjava/util/ArrayList;)V

    .line 2436
    goto/16 :goto_7

    .line 2411
    .end local v0    # "type":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_58

    move v2, v3

    .line 2412
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_58
    if-eq v2, v3, :cond_59

    .line 2413
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2414
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2415
    goto/16 :goto_7

    .line 2416
    :cond_59
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2418
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2419
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2420
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->responseInvalidSimInd(ILjava/util/ArrayList;)V

    .line 2421
    goto/16 :goto_7

    .line 2396
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_23
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5a

    move v2, v3

    .line 2397
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5a
    if-eq v2, v3, :cond_5b

    .line 2398
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2399
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2400
    goto/16 :goto_7

    .line 2401
    :cond_5b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2404
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2405
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 2406
    goto/16 :goto_7

    .line 2381
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5c

    move v2, v3

    .line 2382
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5c
    if-eq v2, v3, :cond_5d

    .line 2383
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2384
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2385
    goto/16 :goto_7

    .line 2386
    :cond_5d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2389
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2390
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 2391
    goto/16 :goto_7

    .line 2366
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    move v2, v3

    .line 2367
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5e
    if-eq v2, v3, :cond_5f

    .line 2368
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2369
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2370
    goto/16 :goto_7

    .line 2371
    :cond_5f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2374
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2375
    .local v1, "esnMeid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->esnMeidChangeInd(ILjava/lang/String;)V

    .line 2376
    goto/16 :goto_7

    .line 2351
    .end local v0    # "type":I
    .end local v1    # "esnMeid":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_60

    move v2, v3

    .line 2352
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_60
    if-eq v2, v3, :cond_61

    .line 2353
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2354
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2355
    goto/16 :goto_7

    .line 2356
    :cond_61
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2359
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2360
    .local v1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->worldModeChangedIndication(ILjava/util/ArrayList;)V

    .line 2361
    goto/16 :goto_7

    .line 2336
    .end local v0    # "type":I
    .end local v1    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_27
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_62

    move v2, v3

    .line 2337
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_62
    if-eq v2, v3, :cond_63

    .line 2338
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2339
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2340
    goto/16 :goto_7

    .line 2341
    :cond_63
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2344
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2345
    .local v1, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->gmssRatChangedIndication(ILjava/util/ArrayList;)V

    .line 2346
    goto/16 :goto_7

    .line 2321
    .end local v0    # "type":I
    .end local v1    # "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_28
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_64

    move v2, v3

    .line 2322
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_64
    if-eq v2, v3, :cond_65

    .line 2323
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2324
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2325
    goto/16 :goto_7

    .line 2326
    :cond_65
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2328
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2329
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2330
    .local v1, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->registrationSuspendedIndication(ILjava/util/ArrayList;)V

    .line 2331
    goto/16 :goto_7

    .line 2306
    .end local v0    # "type":I
    .end local v1    # "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_66

    move v2, v3

    .line 2307
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_66
    if-eq v2, v3, :cond_67

    .line 2308
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2309
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2310
    goto/16 :goto_7

    .line 2311
    :cond_67
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2314
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2315
    .local v1, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->plmnChangedIndication(ILjava/util/ArrayList;)V

    .line 2316
    goto/16 :goto_7

    .line 2291
    .end local v0    # "type":I
    .end local v1    # "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_68

    move v2, v3

    .line 2292
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_68
    if-eq v2, v3, :cond_69

    .line 2293
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2294
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2295
    goto/16 :goto_7

    .line 2296
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2299
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2300
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    .line 2301
    goto/16 :goto_7

    .line 2277
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6a

    move v2, v3

    .line 2278
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6a
    if-eq v2, v3, :cond_6b

    .line 2279
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2280
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2281
    goto/16 :goto_7

    .line 2282
    :cond_6b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2285
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->smsReadyInd(I)V

    .line 2286
    goto/16 :goto_7

    .line 2263
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6c

    move v2, v3

    .line 2264
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6c
    if-eq v2, v3, :cond_6d

    .line 2265
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2266
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2267
    goto/16 :goto_7

    .line 2268
    :cond_6d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2271
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->meSmsStorageFullInd(I)V

    .line 2272
    goto/16 :goto_7

    .line 2247
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6e

    move v2, v3

    .line 2248
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6e
    if-eq v2, v3, :cond_6f

    .line 2249
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2250
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2251
    goto/16 :goto_7

    .line 2252
    :cond_6f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2255
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/EtwsNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/EtwsNotification;-><init>()V

    .line 2256
    .local v1, "etws":Lvendor/mediatek/hardware/mtkradioex/V1_0/EtwsNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/EtwsNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2257
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->newEtwsInd(ILvendor/mediatek/hardware/mtkradioex/V1_0/EtwsNotification;)V

    .line 2258
    goto/16 :goto_7

    .line 2231
    .end local v0    # "type":I
    .end local v1    # "etws":Lvendor/mediatek/hardware/mtkradioex/V1_0/EtwsNotification;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_70

    move v2, v3

    .line 2232
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_70
    if-eq v2, v3, :cond_71

    .line 2233
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2235
    goto/16 :goto_7

    .line 2236
    :cond_71
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2239
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimOperationEvent;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimOperationEvent;-><init>()V

    .line 2240
    .local v1, "event":Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimOperationEvent;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimOperationEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2241
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onVsimEventIndication(ILvendor/mediatek/hardware/mtkradioex/V1_0/VsimOperationEvent;)V

    .line 2242
    goto/16 :goto_7

    .line 2217
    .end local v0    # "type":I
    .end local v1    # "event":Lvendor/mediatek/hardware/mtkradioex/V1_0/VsimOperationEvent;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_72

    move v2, v3

    .line 2218
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_72
    if-eq v2, v3, :cond_73

    .line 2219
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2220
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2221
    goto/16 :goto_7

    .line 2222
    :cond_73
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2225
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onCardDetectedInd(I)V

    .line 2226
    goto/16 :goto_7

    .line 2202
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_74

    move v2, v3

    .line 2203
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_74
    if-eq v2, v3, :cond_75

    .line 2204
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2205
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2206
    goto/16 :goto_7

    .line 2207
    :cond_75
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2210
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2211
    .local v1, "eventId":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onRsuSimLockEvent(II)V

    .line 2212
    goto/16 :goto_7

    .line 2188
    .end local v0    # "type":I
    .end local v1    # "eventId":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_76

    move v2, v3

    .line 2189
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_76
    if-eq v2, v3, :cond_77

    .line 2190
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2191
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2192
    goto/16 :goto_7

    .line 2193
    :cond_77
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2196
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onSimMeLockEvent(I)V

    .line 2197
    goto/16 :goto_7

    .line 2172
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_32
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_78

    move v2, v3

    .line 2173
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_78
    if-eq v2, v3, :cond_79

    .line 2174
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2176
    goto/16 :goto_7

    .line 2177
    :cond_79
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2180
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2181
    .local v1, "event":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2182
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onSimHotSwapInd(IILjava/lang/String;)V

    .line 2183
    goto/16 :goto_7

    .line 2158
    .end local v0    # "type":I
    .end local v1    # "event":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "info":Ljava/lang/String;
    :pswitch_33
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7a

    move v2, v3

    .line 2159
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7a
    if-eq v2, v3, :cond_7b

    .line 2160
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2161
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2162
    goto/16 :goto_7

    .line 2163
    :cond_7b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2166
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onImsiRefreshDone(I)V

    .line 2167
    goto/16 :goto_7

    .line 2144
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7c

    move v2, v3

    .line 2145
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7c
    if-eq v2, v3, :cond_7d

    .line 2146
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2147
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2148
    goto/16 :goto_7

    .line 2149
    :cond_7d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2152
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onImeiLock(I)V

    .line 2153
    goto/16 :goto_7

    .line 2129
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_35
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7e

    move v2, v3

    .line 2130
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_7e
    if-eq v2, v3, :cond_7f

    .line 2131
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2133
    goto/16 :goto_7

    .line 2134
    :cond_7f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2137
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2138
    .local v1, "simInserted":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->onVirtualSimStatusChanged(II)V

    .line 2139
    goto/16 :goto_7

    .line 2113
    .end local v0    # "type":I
    .end local v1    # "simInserted":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_36
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_80

    move v2, v3

    .line 2114
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_80
    if-eq v2, v3, :cond_81

    .line 2115
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2116
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2117
    goto/16 :goto_7

    .line 2118
    :cond_81
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2121
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2122
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2123
    .local v3, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 2124
    goto/16 :goto_7

    .line 2099
    .end local v0    # "type":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ecc_list_no_card":Ljava/lang/String;
    :pswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_82

    move v2, v3

    .line 2100
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_82
    if-eq v2, v3, :cond_83

    .line 2101
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2103
    goto/16 :goto_7

    .line 2104
    :cond_83
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2107
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->cdmaCallAccepted(I)V

    .line 2108
    goto/16 :goto_7

    .line 2083
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_38
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_84

    move v2, v3

    .line 2084
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_84
    if-eq v2, v3, :cond_85

    .line 2085
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2087
    goto/16 :goto_7

    .line 2088
    :cond_85
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2091
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/CrssNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CrssNotification;-><init>()V

    .line 2092
    .local v1, "crssNotify":Lvendor/mediatek/hardware/mtkradioex/V1_0/CrssNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CrssNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2093
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->crssIndication(ILvendor/mediatek/hardware/mtkradioex/V1_0/CrssNotification;)V

    .line 2094
    goto/16 :goto_7

    .line 2067
    .end local v0    # "type":I
    .end local v1    # "crssNotify":Lvendor/mediatek/hardware/mtkradioex/V1_0/CrssNotification;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_39
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_86

    move v2, v3

    .line 2068
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_86
    if-eq v2, v3, :cond_87

    .line 2069
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2071
    goto/16 :goto_7

    .line 2072
    :cond_87
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2075
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2076
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2077
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->suppSvcNotifyEx(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2078
    goto/16 :goto_7

    .line 2051
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_88

    move v2, v3

    .line 2052
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_88
    if-eq v2, v3, :cond_89

    .line 2053
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2055
    goto/16 :goto_7

    .line 2056
    :cond_89
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2059
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/CipherNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CipherNotification;-><init>()V

    .line 2060
    .local v1, "cipherNotify":Lvendor/mediatek/hardware/mtkradioex/V1_0/CipherNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CipherNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2061
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->cipherIndication(ILvendor/mediatek/hardware/mtkradioex/V1_0/CipherNotification;)V

    .line 2062
    goto/16 :goto_7

    .line 2035
    .end local v0    # "type":I
    .end local v1    # "cipherNotify":Lvendor/mediatek/hardware/mtkradioex/V1_0/CipherNotification;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8a

    move v2, v3

    .line 2036
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8a
    if-eq v2, v3, :cond_8b

    .line 2037
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2038
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2039
    goto/16 :goto_7

    .line 2040
    :cond_8b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2043
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2044
    .local v1, "ciType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v3

    .line 2045
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->callAdditionalInfoInd(IILjava/util/ArrayList;)V

    .line 2046
    goto/16 :goto_7

    .line 2019
    .end local v0    # "type":I
    .end local v1    # "ciType":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 2020
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_8d

    .line 2021
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2022
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2023
    goto/16 :goto_7

    .line 2024
    :cond_8d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2027
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;-><init>()V

    .line 2028
    .local v1, "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2029
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;)V

    .line 2030
    goto/16 :goto_7

    .line 2003
    .end local v0    # "type":I
    .end local v1    # "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V1_0/IncomingCallNotification;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8e

    move v2, v3

    .line 2004
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v2, v3, :cond_8f

    .line 2005
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2007
    goto/16 :goto_7

    .line 2008
    :cond_8f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2011
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V1_0/CfuStatusNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CfuStatusNotification;-><init>()V

    .line 2012
    .local v1, "cfuStatus":Lvendor/mediatek/hardware/mtkradioex/V1_0/CfuStatusNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V1_0/CfuStatusNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2013
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/V1_0/CfuStatusNotification;)V

    .line 2014
    goto :goto_7

    .line 1988
    .end local v0    # "type":I
    .end local v1    # "cfuStatus":Lvendor/mediatek/hardware/mtkradioex/V1_0/CfuStatusNotification;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_90

    move v2, v3

    .line 1989
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_90
    if-eq v2, v3, :cond_91

    .line 1990
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1991
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1992
    goto :goto_7

    .line 1993
    :cond_91
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1996
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1997
    .local v1, "isPhbReady":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->phbReadyNotification(II)V

    .line 1998
    goto :goto_7

    .line 1973
    .end local v0    # "type":I
    .end local v1    # "isPhbReady":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_92

    move v2, v3

    .line 1974
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_92
    if-eq v2, v3, :cond_93

    .line 1975
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1977
    goto :goto_7

    .line 1978
    :cond_93
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1981
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1982
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->eMBMSSessionStatusIndication(II)V

    .line 1983
    goto :goto_7

    .line 1958
    .end local v0    # "type":I
    .end local v1    # "status":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_40
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_94

    move v2, v3

    .line 1959
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_94
    if-eq v2, v3, :cond_95

    .line 1960
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1961
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1962
    goto :goto_7

    .line 1963
    :cond_95
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1966
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1967
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->eMBMSAtInfoIndication(ILjava/lang/String;)V

    .line 1968
    nop

    .line 3099
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_96
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1909
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1937
    const-string v0, "vendor.mediatek.hardware.mtkradioex@1.0::IMtkRadioExIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    return-object p0

    .line 1940
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

    .line 1944
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1945
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1899
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V1_0/IMtkRadioExIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1931
    const/4 v0, 0x1

    return v0
.end method
