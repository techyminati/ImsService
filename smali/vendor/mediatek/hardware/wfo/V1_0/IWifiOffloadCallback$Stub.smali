.class public abstract Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiOffloadCallback.java"

# interfaces
.implements Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 657
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 660
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

    .line 673
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 710
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 711
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 712
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 713
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 714
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

    .line 685
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
        0x19t
        0x3et
        -0x52t
        0x58t
        0xet
        -0x3t
        -0x55t
        0x48t
        -0x58t
        0x71t
        0x18t
        0x4ft
        -0x45t
        0x40t
        -0x1dt
        -0x43t
        0xft
        -0x71t
        0xbt
        -0x5bt
        0x5ct
        -0x5t
        0x5at
        -0x5bt
        -0x2ft
        0x54t
        -0x59t
        -0x6ct
        -0x17t
        0x41t
        -0x22t
        -0x54t
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

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.wfo@1.0::IWifiOffloadCallback"

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

    .line 679
    const-string v0, "vendor.mediatek.hardware.wfo@1.0::IWifiOffloadCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 698
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 720
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 722
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

    .line 750
    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "vendor.mediatek.hardware.wfo@1.0::IWifiOffloadCallback"

    sparse-switch p1, :sswitch_data_168

    goto/16 :goto_167

    .line 956
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->notifySyspropsChanged()V

    .line 959
    goto/16 :goto_167

    .line 945
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 948
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 950
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 951
    goto/16 :goto_167

    .line 935
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->ping()V

    .line 938
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 939
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 940
    goto/16 :goto_167

    .line 930
    :sswitch_32
    goto/16 :goto_167

    .line 922
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->setHALInstrumentation()V

    .line 925
    goto/16 :goto_167

    .line 888
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 891
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 893
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 895
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 896
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 897
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 898
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 899
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 901
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 902
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 904
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 908
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 909
    nop

    .line 899
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 905
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 912
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 914
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 916
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 917
    goto/16 :goto_167

    .line 877
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 881
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 883
    goto/16 :goto_167

    .line 865
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 868
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 869
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 870
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 872
    goto/16 :goto_167

    .line 854
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 857
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 860
    goto/16 :goto_167

    .line 843
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 846
    .local v0, "simIdx":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 847
    .local v1, "stage":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 848
    .local v2, "ratType":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onHandover(III)V

    .line 849
    goto/16 :goto_167

    .line 832
    .end local v0    # "simIdx":I
    .end local v1    # "stage":I
    .end local v2    # "ratType":I
    :sswitch_df
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 835
    .restart local v0    # "simIdx":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 836
    .local v1, "roveOut":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 837
    .local v2, "rssi":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onRoveOut(IZI)V

    .line 838
    goto/16 :goto_167

    .line 822
    .end local v0    # "simIdx":I
    .end local v1    # "roveOut":Z
    .end local v2    # "rssi":I
    :sswitch_f3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 825
    .restart local v0    # "simIdx":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 826
    .local v1, "active":Z
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onPdnStateChanged(IZ)V

    .line 827
    goto :goto_167

    .line 811
    .end local v0    # "simIdx":I
    .end local v1    # "active":Z
    :sswitch_102
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 814
    .restart local v0    # "simIdx":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 815
    .local v1, "interfaceId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 816
    .local v2, "ranType":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onPdnRanTypeChanged(III)V

    .line 817
    goto :goto_167

    .line 803
    .end local v0    # "simIdx":I
    .end local v1    # "interfaceId":I
    .end local v2    # "ranType":I
    :sswitch_115
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onMalReset()V

    .line 806
    goto :goto_167

    .line 792
    :sswitch_11c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 795
    .restart local v0    # "simIdx":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 796
    .local v1, "lastErr":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 797
    .local v2, "lastSubErr":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onDisconnectCauseNotify(III)V

    .line 798
    goto :goto_167

    .line 783
    .end local v0    # "simIdx":I
    .end local v1    # "lastErr":I
    .end local v2    # "lastSubErr":I
    :sswitch_12f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 786
    .local v0, "pdnCount":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onRequestSetWifiDisabled(I)V

    .line 787
    goto :goto_167

    .line 773
    .end local v0    # "pdnCount":I
    :sswitch_13a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 776
    .local v0, "simIdx":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 777
    .local v1, "isImsOn":Z
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onRequestImsSwitch(IZ)V

    .line 778
    goto :goto_167

    .line 762
    .end local v0    # "simIdx":I
    .end local v1    # "isImsOn":Z
    :sswitch_149
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 765
    .local v0, "simId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 766
    .local v1, "size":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 767
    .local v2, "rssiThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1, v2}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onRssiMonitorRequest(IILjava/util/ArrayList;)V

    .line 768
    goto :goto_167

    .line 753
    .end local v0    # "simId":I
    .end local v1    # "size":I
    .end local v2    # "rssiThresholds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_15c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 756
    .local v0, "simIdx":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->onRequestLocationInfo(I)V

    .line 757
    nop

    .line 968
    .end local v0    # "simIdx":I
    :goto_167
    return-void

    :sswitch_data_168
    .sparse-switch
        0x1 -> :sswitch_15c
        0x2 -> :sswitch_149
        0x3 -> :sswitch_13a
        0x4 -> :sswitch_12f
        0x5 -> :sswitch_11c
        0x6 -> :sswitch_115
        0x7 -> :sswitch_102
        0x8 -> :sswitch_f3
        0x9 -> :sswitch_df
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

    .line 704
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 732
    const-string v0, "vendor.mediatek.hardware.wfo@1.0::IWifiOffloadCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 733
    return-object p0

    .line 735
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

    .line 739
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 694
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffloadCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 726
    const/4 v0, 0x1

    return v0
.end method
