.class public abstract Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;
.super Landroid/os/HwBinder;
.source "ISap.java"

# interfaces
.implements Lvendor/mediatek/hardware/radio/V3_3/ISap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/radio/V3_3/ISap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 464
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

    .line 483
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 526
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 527
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 528
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 529
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 530
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

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

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

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        0x0t
        -0x29t
        0x17t
        -0x34t
        0x4t
        0x6t
        0x33t
        0x55t
        0x24t
        -0x47t
        -0x3ft
        -0x1ct
        0x60t
        -0x11t
        0x5ct
        -0x47t
        -0x58t
        -0x26t
        -0x79t
        -0x78t
        0x56t
        0x0t
        0x1dt
        -0x44t
        -0x6at
        -0x4et
        -0x35t
        -0x3bt
        -0x73t
        -0xat
        0x6at
        0x1ct
    .end array-data

    :array_1
    .array-data 1
        0x57t
        0x30t
        0x21t
        0xft
        0x24t
        0x5ct
        0x34t
        -0x44t
        0x51t
        -0x22t
        0x1ft
        -0xdt
        0x37t
        0x0t
        0x2dt
        0x8t
        0x53t
        0x52t
        -0x59t
        -0x60t
        0x7at
        0x78t
        -0x6et
        -0x40t
        0x33t
        -0x35t
        0x62t
        -0x5ct
        0x4et
        0x5at
        -0x3et
        -0x70t
    .end array-data

    :array_2
    .array-data 1
        0x43t
        -0x43t
        0x2ct
        0x58t
        -0x31t
        -0x46t
        0x41t
        -0x1ct
        0x6t
        -0x37t
        0x37t
        0x5ct
        0x53t
        -0x45t
        -0x46t
        -0x70t
        -0xat
        0x1ft
        0x73t
        0x3bt
        -0x1t
        -0x41t
        -0x7dt
        -0x31t
        -0xat
        -0x76t
        0x3dt
        0x6at
        -0x7bt
        -0x4dt
        -0x80t
        -0x75t
    .end array-data

    :array_3
    .array-data 1
        -0x67t
        -0x37t
        0x3et
        0x3ft
        0x30t
        0x3ct
        0x5ct
        0x4ct
        0x8t
        -0x76t
        0x20t
        -0xat
        0x5bt
        -0x1et
        0x47t
        -0x7ft
        0x6at
        0x59t
        -0x41t
        0x37t
        0xat
        0x65t
        -0x3at
        0x7bt
        0x39t
        0x47t
        -0x17t
        0x62t
        0x69t
        -0x71t
        -0x2t
        -0x46t
    .end array-data

    :array_4
    .array-data 1
        0x2dt
        -0x7at
        -0x6et
        -0x69t
        -0x6ct
        0x79t
        0x5et
        0x5ct
        0x70t
        -0xct
        -0x3t
        -0x4bt
        0x7t
        0x34t
        -0x7bt
        -0x3t
        0x5t
        -0x7dt
        0x5ct
        -0x64t
        0x6ft
        0x49t
        0x61t
        0x16t
        0x68t
        0x7ct
        0x3dt
        -0x61t
        0x32t
        -0x1at
        -0x21t
        0x3et
    .end array-data

    :array_5
    .array-data 1
        -0x7t
        0x6ct
        -0x44t
        0x59t
        -0x21t
        -0x1ft
        0x6ct
        -0x73t
        0xct
        0x2at
        0x7et
        0x6t
        -0x25t
        0x24t
        -0x28t
        0x73t
        -0x76t
        0x63t
        0x28t
        -0x4at
        -0x17t
        0xft
        0x7bt
        -0x72t
        0x16t
        0x40t
        -0x16t
        0x2bt
        0x46t
        0x0t
        -0x22t
        -0x43t
    .end array-data

    :array_6
    .array-data 1
        -0x22t
        0x3at
        -0x47t
        -0x9t
        0x3bt
        0x10t
        0x73t
        -0x33t
        0x67t
        0x7bt
        0x19t
        -0x28t
        -0x7at
        -0x5t
        -0x6et
        0x7et
        -0x6dt
        -0x7ft
        -0x4dt
        0x1t
        0x61t
        -0x59t
        0x4t
        0x71t
        0x2dt
        0x2bt
        0x30t
        -0x8t
        0x75t
        -0x79t
        0x3ft
        0x5ct
    .end array-data

    :array_7
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.mediatek.hardware.radio@3.3::ISap"

    const-string v2, "vendor.mediatek.hardware.radio@3.2::ISap"

    const-string v3, "vendor.mediatek.hardware.radio@3.1::ISap"

    const-string v4, "vendor.mediatek.hardware.radio@3.0::ISap"

    const-string v5, "android.hardware.radio@1.2::ISap"

    const-string v6, "android.hardware.radio@1.1::ISap"

    const-string v7, "android.hardware.radio@1.0::ISap"

    const-string v8, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 489
    const-string v0, "vendor.mediatek.hardware.radio@3.3::ISap"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 536
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 538
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

    .line 566
    const-string v0, "android.hardware.radio@1.0::ISap"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 857
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 858
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_26

    .line 859
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 861
    goto/16 :goto_8

    .line 844
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    move v2, v3

    .line 845
    .local v2, "_hidl_is_oneway":Z
    :cond_1
    if-eq v2, v3, :cond_2

    .line 846
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 848
    goto/16 :goto_8

    .line 849
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->notifySyspropsChanged()V

    .line 852
    goto/16 :goto_8

    .line 828
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 829
    .local v3, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 830
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 832
    goto/16 :goto_8

    .line 833
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 836
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 839
    goto/16 :goto_8

    .line 813
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    .line 814
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 815
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 817
    goto/16 :goto_8

    .line 818
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->ping()V

    .line 821
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 823
    goto/16 :goto_8

    .line 803
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 804
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_26

    .line 805
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 806
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 807
    goto/16 :goto_8

    .line 790
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    move v2, v3

    .line 791
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v2, v3, :cond_9

    .line 792
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 794
    goto/16 :goto_8

    .line 795
    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->setHALInstrumentation()V

    .line 798
    goto/16 :goto_8

    .line 751
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    .line 752
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 753
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 755
    goto/16 :goto_8

    .line 756
    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 759
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 761
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 763
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 764
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 765
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 766
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 767
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 769
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 770
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 772
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_c

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_c

    .line 776
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 777
    nop

    .line 767
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 773
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 780
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 782
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 784
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto/16 :goto_8

    .line 735
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    .line 736
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v3, :cond_f

    .line 737
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_8

    .line 740
    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 744
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 746
    goto/16 :goto_8

    .line 718
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    .line 719
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v3, :cond_11

    .line 720
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 722
    goto/16 :goto_8

    .line 723
    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 726
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 727
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 728
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 729
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 730
    goto/16 :goto_8

    .line 702
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    .line 703
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v3, :cond_13

    .line 704
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 706
    goto/16 :goto_8

    .line 707
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 710
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 711
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_8

    .line 687
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_14

    move v2, v3

    .line 688
    .local v2, "_hidl_is_oneway":Z
    :cond_14
    if-eq v2, v3, :cond_15

    .line 689
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 691
    goto/16 :goto_8

    .line 692
    :cond_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 695
    .local v0, "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 696
    .local v1, "transferProtocol":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->setTransferProtocolReq(II)V

    .line 697
    goto/16 :goto_8

    .line 673
    .end local v0    # "token":I
    .end local v1    # "transferProtocol":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_16

    move v2, v3

    .line 674
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_16
    if-eq v2, v3, :cond_17

    .line 675
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 677
    goto/16 :goto_8

    .line 678
    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 681
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->transferCardReaderStatusReq(I)V

    .line 682
    goto/16 :goto_8

    .line 659
    .end local v0    # "token":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18

    move v2, v3

    .line 660
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_18
    if-eq v2, v3, :cond_19

    .line 661
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 662
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 663
    goto/16 :goto_8

    .line 664
    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 667
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->resetSimReq(I)V

    .line 668
    goto/16 :goto_8

    .line 644
    .end local v0    # "token":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a

    move v2, v3

    .line 645
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1a
    if-eq v2, v3, :cond_1b

    .line 646
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 647
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 648
    goto/16 :goto_8

    .line 649
    :cond_1b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 652
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 653
    .local v1, "state":Z
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->powerReq(IZ)V

    .line 654
    goto/16 :goto_8

    .line 630
    .end local v0    # "token":I
    .end local v1    # "state":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c

    move v2, v3

    .line 631
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1c
    if-eq v2, v3, :cond_1d

    .line 632
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 634
    goto/16 :goto_8

    .line 635
    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 638
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->transferAtrReq(I)V

    .line 639
    goto/16 :goto_8

    .line 614
    .end local v0    # "token":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e

    move v2, v3

    .line 615
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1e
    if-eq v2, v3, :cond_1f

    .line 616
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 618
    goto/16 :goto_8

    .line 619
    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 622
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 623
    .local v1, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 624
    .local v3, "command":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1, v3}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->apduReq(IILjava/util/ArrayList;)V

    .line 625
    goto :goto_8

    .line 600
    .end local v0    # "token":I
    .end local v1    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "command":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    .line 601
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_20
    if-eq v2, v3, :cond_21

    .line 602
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 604
    goto :goto_8

    .line 605
    :cond_21
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 608
    .restart local v0    # "token":I
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->disconnectReq(I)V

    .line 609
    goto :goto_8

    .line 585
    .end local v0    # "token":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_22

    move v2, v3

    .line 586
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_22
    if-eq v2, v3, :cond_23

    .line 587
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto :goto_8

    .line 590
    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 593
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 594
    .local v1, "maxMsgSize":I
    invoke-virtual {p0, v0, v1}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->connectReq(II)V

    .line 595
    goto :goto_8

    .line 569
    .end local v0    # "token":I
    .end local v1    # "maxMsgSize":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_24

    goto :goto_7

    :cond_24
    move v3, v2

    .line 570
    .local v3, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v3, :cond_25

    .line 571
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 572
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 573
    goto :goto_8

    .line 574
    :cond_25
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/ISapCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/ISapCallback;

    move-result-object v0

    .line 577
    .local v0, "sapCallback":Landroid/hardware/radio/V1_0/ISapCallback;
    invoke-virtual {p0, v0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->setCallback(Landroid/hardware/radio/V1_0/ISapCallback;)V

    .line 578
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    nop

    .line 866
    .end local v0    # "sapCallback":Landroid/hardware/radio/V1_0/ISapCallback;
    .end local v3    # "_hidl_is_oneway":Z
    :cond_26
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 520
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 548
    const-string v0, "vendor.mediatek.hardware.radio@3.3::ISap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    return-object p0

    .line 551
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

    .line 555
    invoke-virtual {p0, p1}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->registerService(Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 510
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/mediatek/hardware/radio/V3_3/ISap$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 542
    const/4 v0, 0x1

    return v0
.end method
