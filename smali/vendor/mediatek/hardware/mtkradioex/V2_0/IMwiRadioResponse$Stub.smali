.class public abstract Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IMwiRadioResponse.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 624
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 627
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

    .line 640
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 677
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 678
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 679
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 680
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 681
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

    .line 652
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
        0x70t
        0x34t
        0x8t
        0x1at
        -0x33t
        -0x80t
        -0x72t
        0x35t
        -0x59t
        -0x30t
        0x0t
        0x1bt
        0x5bt
        0x65t
        0x29t
        -0x4at
        0x46t
        0x6t
        -0x4t
        0x5ct
        -0x4et
        -0x44t
        0x15t
        -0x29t
        0x14t
        0x42t
        -0x2et
        0x3bt
        -0x7et
        -0x5t
        -0x3dt
        0x4et
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

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.mtkradioex@2.0::IMwiRadioResponse"

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

    .line 646
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.0::IMwiRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 687
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 689
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

    .line 717
    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.mtkradioex@2.0::IMwiRadioResponse"

    sparse-switch p1, :sswitch_data_164

    goto/16 :goto_163

    .line 922
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->notifySyspropsChanged()V

    .line 925
    goto/16 :goto_163

    .line 911
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 914
    .local v1, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 915
    invoke-virtual {v1, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 917
    goto/16 :goto_163

    .line 901
    .end local v1    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->ping()V

    .line 904
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 905
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 906
    goto/16 :goto_163

    .line 896
    :sswitch_32
    goto/16 :goto_163

    .line 888
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setHALInstrumentation()V

    .line 891
    goto/16 :goto_163

    .line 854
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 857
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 859
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 861
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 862
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 863
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 864
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 865
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 867
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 868
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 870
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 874
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 875
    nop

    .line 865
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 871
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 878
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 880
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 882
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 883
    goto/16 :goto_163

    .line 843
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 847
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 849
    goto/16 :goto_163

    .line 831
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 834
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 835
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 836
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto/16 :goto_163

    .line 820
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 823
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 824
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 825
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 826
    goto/16 :goto_163

    .line 810
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 813
    .local v0, "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 814
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->notifyEPDGScreenStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 815
    goto/16 :goto_163

    .line 800
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_db
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 803
    .restart local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 804
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setWifiPingResultResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 805
    goto/16 :goto_163

    .line 790
    .end local v0    # "info":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_eb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 793
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 794
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setNattKeepAliveStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 795
    goto :goto_163

    .line 780
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_fa
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 783
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 784
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setEmergencyAddressIdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 785
    goto :goto_163

    .line 770
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_109
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 773
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 774
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setLocationInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 775
    goto :goto_163

    .line 760
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_118
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 763
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 764
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setWifiIpAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 765
    goto :goto_163

    .line 750
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_127
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 753
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 754
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setWifiSignalLevelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 755
    goto :goto_163

    .line 740
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_136
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 743
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 744
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setWfcConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 745
    goto :goto_163

    .line 730
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_145
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 733
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 734
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setWifiAssociatedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 735
    goto :goto_163

    .line 720
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :sswitch_154
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 723
    .restart local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 724
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->setWifiEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 725
    nop

    .line 934
    .end local v0    # "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    :goto_163
    return-void

    :sswitch_data_164
    .sparse-switch
        0x1 -> :sswitch_154
        0x2 -> :sswitch_145
        0x3 -> :sswitch_136
        0x4 -> :sswitch_127
        0x5 -> :sswitch_118
        0x6 -> :sswitch_109
        0x7 -> :sswitch_fa
        0x8 -> :sswitch_eb
        0x9 -> :sswitch_db
        0xa -> :sswitch_cb
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

    .line 671
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 699
    const-string v0, "vendor.mediatek.hardware.mtkradioex@2.0::IMwiRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 700
    return-object p0

    .line 702
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

    .line 706
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 661
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMwiRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 693
    const/4 v0, 0x1

    return v0
.end method
