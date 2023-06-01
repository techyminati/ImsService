.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;
.super Landroid/os/HwBinder;
.source "IMtkRadioExIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2113
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 2116
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

    .line 2129
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 2166
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2167
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2168
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2169
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2170
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

    .line 2141
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
        0x12t
        0x5bt
        0x55t
        -0x30t
        0x5t
        0x22t
        -0x1t
        0xft
        -0x10t
        0x7dt
        0x46t
        -0x55t
        -0x75t
        -0xct
        -0x7t
        0x15t
        -0x74t
        -0x74t
        0x5ct
        -0x4bt
        -0x4at
        0x2ct
        -0x26t
        0x78t
        0x27t
        0x29t
        0x66t
        -0x6bt
        0x32t
        0x64t
        0xct
        0xet
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

    .line 2121
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExIndication"

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

    .line 2135
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2154
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 2176
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2178
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

    .line 2206
    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExIndication"

    sparse-switch p1, :sswitch_data_516

    goto/16 :goto_514

    .line 2995
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->notifySyspropsChanged()V

    .line 2998
    goto/16 :goto_514

    .line 2984
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2986
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 2987
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2988
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2990
    goto/16 :goto_514

    .line 2974
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2976
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->ping()V

    .line 2977
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2979
    goto/16 :goto_514

    .line 2969
    :sswitch_32
    goto/16 :goto_514

    .line 2961
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2963
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->setHALInstrumentation()V

    .line 2964
    goto/16 :goto_514

    .line 2927
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2929
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2930
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2932
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2934
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2935
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2936
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2937
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2938
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 2940
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2941
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2943
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 2947
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2948
    nop

    .line 2938
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 2944
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2951
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2953
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2955
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2956
    goto/16 :goto_514

    .line 2916
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2918
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 2919
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2920
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2922
    goto/16 :goto_514

    .line 2904
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 2907
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2908
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2909
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2910
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2911
    goto/16 :goto_514

    .line 2893
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 2896
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2897
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2899
    goto/16 :goto_514

    .line 2882
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2884
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2885
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2886
    .local v1, "eventId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2887
    .local v2, "eventString":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onRsuEvent(IILjava/lang/String;)V

    .line 2888
    goto/16 :goto_514

    .line 2871
    .end local v0    # "type":I
    .end local v1    # "eventId":I
    .end local v2    # "eventString":Ljava/lang/String;
    :sswitch_df
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2874
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;-><init>()V

    .line 2875
    .local v1, "plmnMvnoInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2876
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onPlmnDataInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;)V

    .line 2877
    goto/16 :goto_514

    .line 2861
    .end local v0    # "type":I
    .end local v1    # "plmnMvnoInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/PlmnMvnoInfo;
    :sswitch_f3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2864
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2865
    .local v1, "iccid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->iccidChanged(ILjava/lang/String;)V

    .line 2866
    goto/16 :goto_514

    .line 2851
    .end local v0    # "type":I
    .end local v1    # "iccid":Ljava/lang/String;
    :sswitch_103
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2854
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2855
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onNwLimitInd(ILjava/util/ArrayList;)V

    .line 2856
    goto/16 :goto_514

    .line 2841
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_113
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2844
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2845
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->mobileDataUsageInd(ILjava/util/ArrayList;)V

    .line 2846
    goto/16 :goto_514

    .line 2831
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_123
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2833
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2834
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2835
    .local v1, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onCellularQualityChangedInd(ILjava/util/ArrayList;)V

    .line 2836
    goto/16 :goto_514

    .line 2821
    .end local v0    # "type":I
    .end local v1    # "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_133
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2824
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2825
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->qualifiedNetworkTypesChangedInd(ILjava/util/ArrayList;)V

    .line 2826
    goto/16 :goto_514

    .line 2811
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_143
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2813
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2814
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2815
    .local v1, "mode":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onDsdaChangedInd(II)V

    .line 2816
    goto/16 :goto_514

    .line 2801
    .end local v0    # "type":I
    .end local v1    # "mode":I
    :sswitch_153
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2803
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2804
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2805
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->smsInfoExtInd(ILjava/lang/String;)V

    .line 2806
    goto/16 :goto_514

    .line 2791
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/lang/String;
    :sswitch_163
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2794
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2795
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->networkBandInfoInd(ILjava/util/ArrayList;)V

    .line 2796
    goto/16 :goto_514

    .line 2781
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_173
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2784
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2785
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onSimPowerChangedInd(ILjava/util/ArrayList;)V

    .line 2786
    goto/16 :goto_514

    .line 2771
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_183
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2774
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2775
    .restart local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V

    .line 2776
    goto/16 :goto_514

    .line 2761
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_193
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2763
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2764
    .local v0, "indicationType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2765
    .local v1, "dsbpState":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->dsbpStateChanged(II)V

    .line 2766
    goto/16 :goto_514

    .line 2751
    .end local v0    # "indicationType":I
    .end local v1    # "dsbpState":I
    :sswitch_1a3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2754
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2755
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->networkRejectCauseInd(ILjava/util/ArrayList;)V

    .line 2756
    goto/16 :goto_514

    .line 2741
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1b3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2743
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2744
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2745
    .local v1, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onTxPowerStatusIndication(ILjava/util/ArrayList;)V

    .line 2746
    goto/16 :goto_514

    .line 2731
    .end local v0    # "type":I
    .end local v1    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1c3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2734
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2735
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onMccMncChanged(ILjava/lang/String;)V

    .line 2736
    goto/16 :goto_514

    .line 2721
    .end local v0    # "type":I
    .end local v1    # "mccmnc":Ljava/lang/String;
    :sswitch_1d3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2723
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2724
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2725
    .local v1, "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onPseudoCellInfoInd(ILjava/util/ArrayList;)V

    .line 2726
    goto/16 :goto_514

    .line 2711
    .end local v0    # "type":I
    .end local v1    # "cellInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1e3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2714
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2715
    .local v1, "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onTxPowerIndication(ILjava/util/ArrayList;)V

    .line 2716
    goto/16 :goto_514

    .line 2702
    .end local v0    # "type":I
    .end local v1    # "indPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_1f3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2705
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onRemoveRestrictEutran(I)V

    .line 2706
    goto/16 :goto_514

    .line 2693
    .end local v0    # "type":I
    :sswitch_1ff
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2696
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onMdDataRetryCountReset(I)V

    .line 2697
    goto/16 :goto_514

    .line 2683
    .end local v0    # "type":I
    :sswitch_20b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2686
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2687
    .local v1, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->confSRVCC(ILjava/util/ArrayList;)V

    .line 2688
    goto/16 :goto_514

    .line 2672
    .end local v0    # "type":I
    .end local v1    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_21b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2675
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;-><init>()V

    .line 2676
    .local v1, "pcoData":Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2677
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->pcoDataAfterAttached(ILvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;)V

    .line 2678
    goto/16 :goto_514

    .line 2662
    .end local v0    # "type":I
    .end local v1    # "pcoData":Lvendor/mediatek/hardware/mtkradioex/V2_0/PcoDataAttachedInfo;
    :sswitch_22f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2665
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2666
    .local v1, "apnClassType":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->mdChangedApnInd(II)V

    .line 2667
    goto/16 :goto_514

    .line 2653
    .end local v0    # "type":I
    .end local v1    # "apnClassType":I
    :sswitch_23f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2655
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2656
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->resetAttachApnInd(I)V

    .line 2657
    goto/16 :goto_514

    .line 2644
    .end local v0    # "type":I
    :sswitch_24b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2647
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onStkMenuReset(I)V

    .line 2648
    goto/16 :goto_514

    .line 2635
    .end local v0    # "type":I
    :sswitch_257
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2638
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->triggerOtaSP(I)V

    .line 2639
    goto/16 :goto_514

    .line 2625
    .end local v0    # "type":I
    :sswitch_263
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2628
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2629
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->bipProactiveCommand(ILjava/lang/String;)V

    .line 2630
    goto/16 :goto_514

    .line 2615
    .end local v0    # "type":I
    .end local v1    # "cmd":Ljava/lang/String;
    :sswitch_273
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2618
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2619
    .local v1, "cid":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->dedicatedBearerDeactivationInd(II)V

    .line 2620
    goto/16 :goto_514

    .line 2604
    .end local v0    # "type":I
    .end local v1    # "cid":I
    :sswitch_283
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2607
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;-><init>()V

    .line 2608
    .local v1, "ddcData":Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2609
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->dedicatedBearerModificationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V

    .line 2610
    goto/16 :goto_514

    .line 2593
    .end local v0    # "type":I
    .end local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;
    :sswitch_297
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2596
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;-><init>()V

    .line 2597
    .restart local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2598
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->dedicatedBearerActivationInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;)V

    .line 2599
    goto/16 :goto_514

    .line 2583
    .end local v0    # "type":I
    .end local v1    # "ddcData":Lvendor/mediatek/hardware/mtkradioex/V2_0/DedicateDataCall;
    :sswitch_2ab
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2586
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2587
    .local v1, "lteBand":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->responseLteNetworkInfo(II)V

    .line 2588
    goto/16 :goto_514

    .line 2572
    .end local v0    # "type":I
    .end local v1    # "lteBand":I
    :sswitch_2bb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2574
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2575
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;-><init>()V

    .line 2576
    .local v1, "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2577
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;)V

    .line 2578
    goto/16 :goto_514

    .line 2562
    .end local v0    # "type":I
    .end local v1    # "signalStrength":Lvendor/mediatek/hardware/mtkradioex/V2_0/SignalStrengthWithWcdmaEcio;
    :sswitch_2cf
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2565
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2566
    .local v1, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->networkInfoInd(ILjava/util/ArrayList;)V

    .line 2567
    goto/16 :goto_514

    .line 2552
    .end local v0    # "type":I
    .end local v1    # "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_2df
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2554
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2555
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2556
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->responseFemtocellInfo(ILjava/util/ArrayList;)V

    .line 2557
    goto/16 :goto_514

    .line 2542
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_2ef
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2544
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2545
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2546
    .local v1, "allowed":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->dataAllowedNotification(II)V

    .line 2547
    goto/16 :goto_514

    .line 2532
    .end local v0    # "type":I
    .end local v1    # "allowed":I
    :sswitch_2ff
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2535
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2536
    .local v1, "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->responseModulationInfoInd(ILjava/util/ArrayList;)V

    .line 2537
    goto/16 :goto_514

    .line 2522
    .end local v0    # "type":I
    .end local v1    # "modulation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_30f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2524
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2525
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2526
    .local v1, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->responseNetworkEventInd(ILjava/util/ArrayList;)V

    .line 2527
    goto/16 :goto_514

    .line 2512
    .end local v0    # "type":I
    .end local v1    # "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_31f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2515
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2516
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->responseInvalidSimInd(ILjava/util/ArrayList;)V

    .line 2517
    goto/16 :goto_514

    .line 2502
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_32f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2504
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2505
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2506
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 2507
    goto/16 :goto_514

    .line 2492
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_33f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2494
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2495
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2496
    .local v1, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V

    .line 2497
    goto/16 :goto_514

    .line 2482
    .end local v0    # "type":I
    .end local v1    # "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_34f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2485
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2486
    .local v1, "esnMeid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->esnMeidChangeInd(ILjava/lang/String;)V

    .line 2487
    goto/16 :goto_514

    .line 2472
    .end local v0    # "type":I
    .end local v1    # "esnMeid":Ljava/lang/String;
    :sswitch_35f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2475
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2476
    .local v1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->worldModeChangedIndication(ILjava/util/ArrayList;)V

    .line 2477
    goto/16 :goto_514

    .line 2462
    .end local v0    # "type":I
    .end local v1    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_36f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2465
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2466
    .local v1, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->gmssRatChangedIndication(ILjava/util/ArrayList;)V

    .line 2467
    goto/16 :goto_514

    .line 2452
    .end local v0    # "type":I
    .end local v1    # "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_37f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2455
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2456
    .local v1, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->registrationSuspendedIndication(ILjava/util/ArrayList;)V

    .line 2457
    goto/16 :goto_514

    .line 2442
    .end local v0    # "type":I
    .end local v1    # "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_38f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2444
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2445
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2446
    .local v1, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->plmnChangedIndication(ILjava/util/ArrayList;)V

    .line 2447
    goto/16 :goto_514

    .line 2432
    .end local v0    # "type":I
    .end local v1    # "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_39f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2435
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2436
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->oemHookRaw(ILjava/util/ArrayList;)V

    .line 2437
    goto/16 :goto_514

    .line 2423
    .end local v0    # "type":I
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :sswitch_3af
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2426
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->smsReadyInd(I)V

    .line 2427
    goto/16 :goto_514

    .line 2414
    .end local v0    # "type":I
    :sswitch_3bb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2417
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->meSmsStorageFullInd(I)V

    .line 2418
    goto/16 :goto_514

    .line 2403
    .end local v0    # "type":I
    :sswitch_3c7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2406
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;-><init>()V

    .line 2407
    .local v1, "etws":Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2408
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->newEtwsInd(ILvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;)V

    .line 2409
    goto/16 :goto_514

    .line 2392
    .end local v0    # "type":I
    .end local v1    # "etws":Lvendor/mediatek/hardware/mtkradioex/V2_0/EtwsNotification;
    :sswitch_3db
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2395
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;-><init>()V

    .line 2396
    .local v1, "event":Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2397
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onVsimEventIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;)V

    .line 2398
    goto/16 :goto_514

    .line 2383
    .end local v0    # "type":I
    .end local v1    # "event":Lvendor/mediatek/hardware/mtkradioex/V2_0/VsimOperationEvent;
    :sswitch_3ef
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2386
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onCardDetectedInd(I)V

    .line 2387
    goto/16 :goto_514

    .line 2373
    .end local v0    # "type":I
    :sswitch_3fb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2376
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2377
    .local v1, "eventId":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onRsuSimLockEvent(II)V

    .line 2378
    goto/16 :goto_514

    .line 2364
    .end local v0    # "type":I
    .end local v1    # "eventId":I
    :sswitch_40b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2366
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2367
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onSimMeLockEvent(I)V

    .line 2368
    goto/16 :goto_514

    .line 2353
    .end local v0    # "type":I
    :sswitch_417
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2356
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2357
    .local v1, "event":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2358
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onSimHotSwapInd(IILjava/lang/String;)V

    .line 2359
    goto/16 :goto_514

    .line 2344
    .end local v0    # "type":I
    .end local v1    # "event":I
    .end local v2    # "info":Ljava/lang/String;
    :sswitch_42b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2347
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onImsiRefreshDone(I)V

    .line 2348
    goto/16 :goto_514

    .line 2335
    .end local v0    # "type":I
    :sswitch_437
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2338
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onImeiLock(I)V

    .line 2339
    goto/16 :goto_514

    .line 2325
    .end local v0    # "type":I
    :sswitch_443
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2328
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2329
    .local v1, "simInserted":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->onVirtualSimStatusChanged(II)V

    .line 2330
    goto/16 :goto_514

    .line 2314
    .end local v0    # "type":I
    .end local v1    # "simInserted":I
    :sswitch_453
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2317
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2318
    .local v1, "ecc_list_with_card":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2319
    .local v2, "ecc_list_no_card":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V

    .line 2320
    goto/16 :goto_514

    .line 2305
    .end local v0    # "type":I
    .end local v1    # "ecc_list_with_card":Ljava/lang/String;
    .end local v2    # "ecc_list_no_card":Ljava/lang/String;
    :sswitch_467
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2307
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2308
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->cdmaCallAccepted(I)V

    .line 2309
    goto/16 :goto_514

    .line 2294
    .end local v0    # "type":I
    :sswitch_473
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2297
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;-><init>()V

    .line 2298
    .local v1, "crssNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2299
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->crssIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;)V

    .line 2300
    goto/16 :goto_514

    .line 2283
    .end local v0    # "type":I
    .end local v1    # "crssNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/CrssNotification;
    :sswitch_487
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2285
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2286
    .restart local v0    # "type":I
    new-instance v1, Landroid/hardware/radio/V1_0/SuppSvcNotification;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SuppSvcNotification;-><init>()V

    .line 2287
    .local v1, "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_0/SuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2288
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->suppSvcNotifyEx(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V

    .line 2289
    goto/16 :goto_514

    .line 2272
    .end local v0    # "type":I
    .end local v1    # "suppSvc":Landroid/hardware/radio/V1_0/SuppSvcNotification;
    :sswitch_49b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2275
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;-><init>()V

    .line 2276
    .local v1, "cipherNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2277
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->cipherIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;)V

    .line 2278
    goto :goto_514

    .line 2261
    .end local v0    # "type":I
    .end local v1    # "cipherNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/CipherNotification;
    :sswitch_4ae
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2264
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2265
    .local v1, "ciType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2266
    .local v2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->callAdditionalInfoInd(IILjava/util/ArrayList;)V

    .line 2267
    goto :goto_514

    .line 2250
    .end local v0    # "type":I
    .end local v1    # "ciType":I
    .end local v2    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_4c1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2253
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;-><init>()V

    .line 2254
    .local v1, "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2255
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;)V

    .line 2256
    goto :goto_514

    .line 2239
    .end local v0    # "type":I
    .end local v1    # "inCallNotify":Lvendor/mediatek/hardware/mtkradioex/V2_0/IncomingCallNotification;
    :sswitch_4d4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2242
    .restart local v0    # "type":I
    new-instance v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;

    invoke-direct {v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;-><init>()V

    .line 2243
    .local v1, "cfuStatus":Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;
    invoke-virtual {v1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2244
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;)V

    .line 2245
    goto :goto_514

    .line 2229
    .end local v0    # "type":I
    .end local v1    # "cfuStatus":Lvendor/mediatek/hardware/mtkradioex/V2_0/CfuStatusNotification;
    :sswitch_4e7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2232
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2233
    .local v1, "isPhbReady":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->phbReadyNotification(II)V

    .line 2234
    goto :goto_514

    .line 2219
    .end local v0    # "type":I
    .end local v1    # "isPhbReady":I
    :sswitch_4f6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2222
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2223
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->eMBMSSessionStatusIndication(II)V

    .line 2224
    goto :goto_514

    .line 2209
    .end local v0    # "type":I
    .end local v1    # "status":I
    :sswitch_505
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2212
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2213
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->eMBMSAtInfoIndication(ILjava/lang/String;)V

    .line 2214
    nop

    .line 3007
    .end local v0    # "type":I
    .end local v1    # "info":Ljava/lang/String;
    :goto_514
    return-void

    nop

    :sswitch_data_516
    .sparse-switch
        0x1 -> :sswitch_505
        0x2 -> :sswitch_4f6
        0x3 -> :sswitch_4e7
        0x4 -> :sswitch_4d4
        0x5 -> :sswitch_4c1
        0x6 -> :sswitch_4ae
        0x7 -> :sswitch_49b
        0x8 -> :sswitch_487
        0x9 -> :sswitch_473
        0xa -> :sswitch_467
        0xb -> :sswitch_453
        0xc -> :sswitch_443
        0xd -> :sswitch_437
        0xe -> :sswitch_42b
        0xf -> :sswitch_417
        0x10 -> :sswitch_40b
        0x11 -> :sswitch_3fb
        0x12 -> :sswitch_3ef
        0x13 -> :sswitch_3db
        0x14 -> :sswitch_3c7
        0x15 -> :sswitch_3bb
        0x16 -> :sswitch_3af
        0x17 -> :sswitch_39f
        0x18 -> :sswitch_38f
        0x19 -> :sswitch_37f
        0x1a -> :sswitch_36f
        0x1b -> :sswitch_35f
        0x1c -> :sswitch_34f
        0x1d -> :sswitch_33f
        0x1e -> :sswitch_32f
        0x1f -> :sswitch_31f
        0x20 -> :sswitch_30f
        0x21 -> :sswitch_2ff
        0x22 -> :sswitch_2ef
        0x23 -> :sswitch_2df
        0x24 -> :sswitch_2cf
        0x25 -> :sswitch_2bb
        0x26 -> :sswitch_2ab
        0x27 -> :sswitch_297
        0x28 -> :sswitch_283
        0x29 -> :sswitch_273
        0x2a -> :sswitch_263
        0x2b -> :sswitch_257
        0x2c -> :sswitch_24b
        0x2d -> :sswitch_23f
        0x2e -> :sswitch_22f
        0x2f -> :sswitch_21b
        0x30 -> :sswitch_20b
        0x31 -> :sswitch_1ff
        0x32 -> :sswitch_1f3
        0x33 -> :sswitch_1e3
        0x34 -> :sswitch_1d3
        0x35 -> :sswitch_1c3
        0x36 -> :sswitch_1b3
        0x37 -> :sswitch_1a3
        0x38 -> :sswitch_193
        0x39 -> :sswitch_183
        0x3a -> :sswitch_173
        0x3b -> :sswitch_163
        0x3c -> :sswitch_153
        0x3d -> :sswitch_143
        0x3e -> :sswitch_133
        0x3f -> :sswitch_123
        0x40 -> :sswitch_113
        0x41 -> :sswitch_103
        0x42 -> :sswitch_f3
        0x43 -> :sswitch_df
        0x44 -> :sswitch_cb
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

    .line 2160
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2188
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.0::IMtkRadioExIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2189
    return-object p0

    .line 2191
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

    .line 2195
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 2196
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 2150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioExIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2182
    const/4 v0, 0x1

    return v0
.end method
