.class public abstract Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;
.super Landroid/os/HwBinder;
.source "IOmadmIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 591
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 594
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

    .line 607
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 644
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 645
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 646
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 647
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 648
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

    .line 619
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
        -0x18t
        -0x42t
        0x57t
        -0xet
        -0x5ct
        0xet
        0x73t
        -0x4t
        -0x6t
        -0x5t
        -0x72t
        0x5ct
        -0x36t
        0x7t
        0x7ct
        0x51t
        0x30t
        0x4dt
        -0x3t
        0xct
        -0x45t
        -0x57t
        0xdt
        -0x75t
        -0xbt
        0xdt
        -0x55t
        0x65t
        -0x7bt
        0x6at
        0x2et
        -0x4bt
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

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.omadm@1.0::IOmadmIndication"

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

    .line 613
    const-string v0, "vendor.mediatek.hardware.omadm@1.0::IOmadmIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 632
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 654
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 656
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

    .line 684
    const-string v0, "android.hidl.base@1.0::IBase"

    const-string v1, "vendor.mediatek.hardware.omadm@1.0::IOmadmIndication"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_194

    goto/16 :goto_192

    .line 892
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->notifySyspropsChanged()V

    .line 895
    goto/16 :goto_192

    .line 881
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 884
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 886
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 887
    goto/16 :goto_192

    .line 871
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->ping()V

    .line 874
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 875
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 876
    goto/16 :goto_192

    .line 866
    :sswitch_32
    goto/16 :goto_192

    .line 858
    :sswitch_34
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->setHALInstrumentation()V

    .line 861
    goto/16 :goto_192

    .line 824
    :sswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 827
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 829
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 831
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 832
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 833
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 834
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 835
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 837
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 838
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 840
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 844
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 845
    nop

    .line 835
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 841
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 848
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 850
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 852
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto/16 :goto_192

    .line 813
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 817
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 819
    goto/16 :goto_192

    .line 801
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 804
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 805
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 806
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 808
    goto/16 :goto_192

    .line 790
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 793
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 794
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 795
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 796
    goto/16 :goto_192

    .line 778
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 781
    .local v0, "enable":Z
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->requestAdminNetwork(Z)I

    move-result v1

    .line 782
    .local v1, "_hidl_out_value":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto/16 :goto_192

    .line 764
    .end local v0    # "enable":Z
    .end local v1    # "_hidl_out_value":I
    :sswitch_e1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 767
    .local v0, "iidex":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 768
    .local v1, "apncls":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 769
    .local v3, "i_info":I
    invoke-virtual {p0, v0, v1, v3}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->setApnIntTypeInfo(III)I

    move-result v4

    .line 770
    .local v4, "_hidl_out_value":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 771
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 772
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 773
    goto/16 :goto_192

    .line 751
    .end local v0    # "iidex":I
    .end local v1    # "apncls":I
    .end local v3    # "i_info":I
    .end local v4    # "_hidl_out_value":I
    :sswitch_ff
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 754
    .restart local v0    # "iidex":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 755
    .restart local v1    # "apncls":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->getApnIntTypeInfo(II)I

    move-result v3

    .line 756
    .local v3, "_hidl_out_i_info":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 757
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 758
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 759
    goto/16 :goto_192

    .line 737
    .end local v0    # "iidex":I
    .end local v1    # "apncls":I
    .end local v3    # "_hidl_out_i_info":I
    :sswitch_119
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 740
    .restart local v0    # "iidex":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 741
    .restart local v1    # "apncls":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, "s_info":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->setApnStringTypeInfo(IILjava/lang/String;)I

    move-result v4

    .line 743
    .restart local v4    # "_hidl_out_value":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 744
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 746
    goto :goto_192

    .line 724
    .end local v0    # "iidex":I
    .end local v1    # "apncls":I
    .end local v3    # "s_info":Ljava/lang/String;
    .end local v4    # "_hidl_out_value":I
    :sswitch_136
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 727
    .restart local v0    # "iidex":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 728
    .restart local v1    # "apncls":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->getApnStringTypeInfo(II)Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, "_hidl_out_s_info":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 730
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 732
    goto :goto_192

    .line 711
    .end local v0    # "iidex":I
    .end local v1    # "apncls":I
    .end local v3    # "_hidl_out_s_info":Ljava/lang/String;
    :sswitch_14f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 714
    .restart local v0    # "iidex":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 715
    .local v1, "i_info":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->setIntTypeInfo(II)I

    move-result v3

    .line 716
    .local v3, "_hidl_out_value":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 717
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 718
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 719
    goto :goto_192

    .line 699
    .end local v0    # "iidex":I
    .end local v1    # "i_info":I
    .end local v3    # "_hidl_out_value":I
    :sswitch_168
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 702
    .restart local v0    # "iidex":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->getIntTypeInfo(I)I

    move-result v1

    .line 703
    .local v1, "_hidl_out_i_info":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 704
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 706
    goto :goto_192

    .line 687
    .end local v0    # "iidex":I
    .end local v1    # "_hidl_out_i_info":I
    :sswitch_17d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 690
    .restart local v0    # "iidex":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->getStringTypeInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "_hidl_out_s_info":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 692
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 694
    nop

    .line 904
    .end local v0    # "iidex":I
    .end local v1    # "_hidl_out_s_info":Ljava/lang/String;
    :goto_192
    return-void

    nop

    :sswitch_data_194
    .sparse-switch
        0x1 -> :sswitch_17d
        0x2 -> :sswitch_168
        0x3 -> :sswitch_14f
        0x4 -> :sswitch_136
        0x5 -> :sswitch_119
        0x6 -> :sswitch_ff
        0x7 -> :sswitch_e1
        0x8 -> :sswitch_cb
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

    .line 638
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 666
    const-string v0, "vendor.mediatek.hardware.omadm@1.0::IOmadmIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 667
    return-object p0

    .line 669
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

    .line 673
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 628
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 660
    const/4 v0, 0x1

    return v0
.end method
