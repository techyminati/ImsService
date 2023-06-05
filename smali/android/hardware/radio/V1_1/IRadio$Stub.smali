.class public abstract Landroid/hardware/radio/V1_1/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_1/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_1/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2699
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 2702
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

    .line 2716
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 2754
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2755
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 2756
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 2757
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 2758
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

    .line 2728
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

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

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2707
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.1::IRadio"

    const-string v2, "android.hardware.radio@1.0::IRadio"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2722
    const-string v0, "android.hardware.radio@1.1::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 2742
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 2764
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2766
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

    .line 2794
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.radio@1.1::IRadio"

    const-string v1, "android.hardware.radio@1.0::IRadio"

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 5003
    :sswitch_0
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    move v0, v3

    .line 5004
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_124

    .line 5005
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5006
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5007
    goto/16 :goto_8

    .line 4990
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    move v1, v3

    .line 4991
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_2

    .line 4992
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4993
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4994
    goto/16 :goto_8

    .line 4995
    :cond_2
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4997
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->notifySyspropsChanged()V

    .line 4998
    goto/16 :goto_8

    .line 4974
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    move v1, v4

    .line 4975
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4

    .line 4976
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4977
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4978
    goto/16 :goto_8

    .line 4979
    :cond_4
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4981
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 4982
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4983
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4985
    goto/16 :goto_8

    .line 4959
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    move v1, v4

    .line 4960
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6

    .line 4961
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4962
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4963
    goto/16 :goto_8

    .line 4964
    :cond_6
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4966
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->ping()V

    .line 4967
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4968
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4969
    goto/16 :goto_8

    .line 4949
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7

    move v3, v4

    :cond_7
    move v0, v3

    .line 4950
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_124

    .line 4951
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4952
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4953
    goto/16 :goto_8

    .line 4936
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_8

    move v3, v4

    :cond_8
    move v1, v3

    .line 4937
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_9

    .line 4938
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4940
    goto/16 :goto_8

    .line 4941
    :cond_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4943
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setHALInstrumentation()V

    .line 4944
    goto/16 :goto_8

    .line 4897
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    move v4, v3

    :goto_2
    move v1, v4

    .line 4898
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b

    .line 4899
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4900
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4901
    goto/16 :goto_8

    .line 4902
    :cond_b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4904
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4905
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4907
    new-instance v2, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 4909
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4910
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 4911
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 4912
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v3, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 4913
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_3
    if-ge v5, v4, :cond_d

    .line 4915
    mul-int/lit8 v6, v5, 0x20

    int-to-long v10, v6

    .line 4916
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 4918
    .local v6, "_hidl_array_item_1":[B
    if-eqz v6, :cond_c

    array-length v12, v6

    const/16 v13, 0x20

    if-ne v12, v13, :cond_c

    .line 4922
    invoke-virtual {v3, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 4923
    nop

    .line 4913
    .end local v6    # "_hidl_array_item_1":[B
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4919
    .restart local v6    # "_hidl_array_item_1":[B
    .restart local v10    # "_hidl_array_offset_1":J
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 4926
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_item_1":[B
    .end local v10    # "_hidl_array_offset_1":J
    :cond_d
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 4928
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 4930
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4931
    goto/16 :goto_8

    .line 4881
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    move v4, v3

    :goto_4
    move v1, v4

    .line 4882
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_f

    .line 4883
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4884
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4885
    goto/16 :goto_8

    .line 4886
    :cond_f
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4888
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 4889
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4890
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 4891
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4892
    goto/16 :goto_8

    .line 4864
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v4, v3

    :goto_5
    move v1, v4

    .line 4865
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11

    .line 4866
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4867
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4868
    goto/16 :goto_8

    .line 4869
    :cond_11
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 4872
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4873
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 4874
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4875
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4876
    goto/16 :goto_8

    .line 4848
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    move v4, v3

    :goto_6
    move v1, v4

    .line 4849
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13

    .line 4850
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4851
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4852
    goto/16 :goto_8

    .line 4853
    :cond_13
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4855
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 4856
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4857
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 4858
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4859
    goto/16 :goto_8

    .line 4833
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_14

    move v3, v4

    :cond_14
    move v1, v3

    .line 4834
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_15

    .line 4835
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4837
    goto/16 :goto_8

    .line 4838
    :cond_15
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4840
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4841
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4842
    .local v2, "sessionHandle":I
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopKeepalive(II)V

    .line 4843
    goto/16 :goto_8

    .line 4817
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "sessionHandle":I
    :pswitch_1
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_16

    move v3, v4

    :cond_16
    move v1, v3

    .line 4818
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_17

    .line 4819
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4820
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4821
    goto/16 :goto_8

    .line 4822
    :cond_17
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4824
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4825
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 4826
    .local v2, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4827
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 4828
    goto/16 :goto_8

    .line 4803
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_2
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_18

    move v3, v4

    :cond_18
    move v1, v3

    .line 4804
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_19

    .line 4805
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4807
    goto/16 :goto_8

    .line 4808
    :cond_19
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4810
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4811
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopNetworkScan(I)V

    .line 4812
    goto/16 :goto_8

    .line 4787
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1a

    move v3, v4

    :cond_1a
    move v1, v3

    .line 4788
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_1b

    .line 4789
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4791
    goto/16 :goto_8

    .line 4792
    :cond_1b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4795
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 4796
    .local v2, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4797
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 4798
    goto/16 :goto_8

    .line 4772
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_4
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1c

    move v3, v4

    :cond_1c
    move v1, v3

    .line 4773
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_1d

    .line 4774
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4775
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4776
    goto/16 :goto_8

    .line 4777
    :cond_1d
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4780
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4781
    .local v2, "powerUp":I
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 4782
    goto/16 :goto_8

    .line 4756
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "powerUp":I
    :pswitch_5
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1e

    move v3, v4

    :cond_1e
    move v1, v3

    .line 4757
    .restart local v1    # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_1f

    .line 4758
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4759
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4760
    goto/16 :goto_8

    .line 4761
    :cond_1f
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4763
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4764
    .restart local v0    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 4765
    .local v2, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4766
    invoke-virtual {v7, v0, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 4767
    goto/16 :goto_8

    .line 4743
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v3, v4

    :cond_20
    move v0, v3

    .line 4744
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_21

    .line 4745
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4747
    goto/16 :goto_8

    .line 4748
    :cond_21
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4750
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->responseAcknowledgement()V

    .line 4751
    goto/16 :goto_8

    .line 4728
    .end local v0    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v3, v4

    :cond_22
    move v0, v3

    .line 4729
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_23

    .line 4730
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4731
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4732
    goto/16 :goto_8

    .line 4733
    :cond_23
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4736
    .local v1, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4737
    .local v2, "powerUp":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSimCardPower(IZ)V

    .line 4738
    goto/16 :goto_8

    .line 4713
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "powerUp":Z
    :pswitch_8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_24

    move v3, v4

    :cond_24
    move v0, v3

    .line 4714
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_25

    .line 4715
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4716
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4717
    goto/16 :goto_8

    .line 4718
    :cond_25
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4721
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4722
    .local v2, "indicationFilter":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setIndicationFilter(II)V

    .line 4723
    goto/16 :goto_8

    .line 4697
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "indicationFilter":I
    :pswitch_9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_26

    move v3, v4

    :cond_26
    move v0, v3

    .line 4698
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_27

    .line 4699
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4700
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4701
    goto/16 :goto_8

    .line 4702
    :cond_27
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4705
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4706
    .local v2, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4707
    .local v3, "state":Z
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 4708
    goto/16 :goto_8

    .line 4683
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "deviceStateType":I
    .end local v3    # "state":Z
    :pswitch_a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_28

    move v3, v4

    :cond_28
    move v0, v3

    .line 4684
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_29

    .line 4685
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4686
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4687
    goto/16 :goto_8

    .line 4688
    :cond_29
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4691
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getAllowedCarriers(I)V

    .line 4692
    goto/16 :goto_8

    .line 4666
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2a

    move v3, v4

    :cond_2a
    move v0, v3

    .line 4667
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_2b

    .line 4668
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4669
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4670
    goto/16 :goto_8

    .line 4671
    :cond_2b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4674
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4675
    .local v2, "allAllowed":Z
    new-instance v3, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 4676
    .local v3, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v3, v8}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4677
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 4678
    goto/16 :goto_8

    .line 4652
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allAllowed":Z
    .end local v3    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2c

    move v3, v4

    :cond_2c
    move v0, v3

    .line 4653
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_2d

    .line 4654
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4655
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4656
    goto/16 :goto_8

    .line 4657
    :cond_2d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4660
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getModemActivityInfo(I)V

    .line 4661
    goto/16 :goto_8

    .line 4638
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2e

    move v3, v4

    :cond_2e
    move v0, v3

    .line 4639
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_2f

    .line 4640
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4641
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4642
    goto/16 :goto_8

    .line 4643
    :cond_2f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4645
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4646
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->pullLceData(I)V

    .line 4647
    goto/16 :goto_8

    .line 4624
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_30

    move v3, v4

    :cond_30
    move v0, v3

    .line 4625
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_31

    .line 4626
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4628
    goto/16 :goto_8

    .line 4629
    :cond_31
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4631
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4632
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopLceService(I)V

    .line 4633
    goto/16 :goto_8

    .line 4608
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_32

    move v3, v4

    :cond_32
    move v0, v3

    .line 4609
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_33

    .line 4610
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4611
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4612
    goto/16 :goto_8

    .line 4613
    :cond_33
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4615
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4616
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4617
    .local v2, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4618
    .local v3, "pullMode":Z
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startLceService(IIZ)V

    .line 4619
    goto/16 :goto_8

    .line 4592
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "reportInterval":I
    .end local v3    # "pullMode":Z
    :pswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_34

    move v3, v4

    :cond_34
    move v0, v3

    .line 4593
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_35

    .line 4594
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4596
    goto/16 :goto_8

    .line 4597
    :cond_35
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4600
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4601
    .local v2, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4602
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4603
    goto/16 :goto_8

    .line 4578
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_11
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_36

    move v3, v4

    :cond_36
    move v0, v3

    .line 4579
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_37

    .line 4580
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4581
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4582
    goto/16 :goto_8

    .line 4583
    :cond_37
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4585
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4586
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getRadioCapability(I)V

    .line 4587
    goto/16 :goto_8

    .line 4564
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_38

    move v3, v4

    :cond_38
    move v0, v3

    .line 4565
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_39

    .line 4566
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4567
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4568
    goto/16 :goto_8

    .line 4569
    :cond_39
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4571
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4572
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->requestShutdown(I)V

    .line 4573
    goto/16 :goto_8

    .line 4548
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_13
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3a

    move v3, v4

    :cond_3a
    move v0, v3

    .line 4549
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_3b

    .line 4550
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4551
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4552
    goto/16 :goto_8

    .line 4553
    :cond_3b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4556
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4557
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4558
    .local v3, "isRoaming":Z
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4559
    goto/16 :goto_8

    .line 4531
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v3    # "isRoaming":Z
    :pswitch_14
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3c

    move v3, v4

    :cond_3c
    move v0, v3

    .line 4532
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_3d

    .line 4533
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4535
    goto/16 :goto_8

    .line 4536
    :cond_3d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4539
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4540
    .local v2, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4541
    .local v3, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4542
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4543
    goto/16 :goto_8

    .line 4517
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "authContext":I
    .end local v3    # "authData":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3e

    move v3, v4

    :cond_3e
    move v0, v3

    .line 4518
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_3f

    .line 4519
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4520
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4521
    goto/16 :goto_8

    .line 4522
    :cond_3f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4524
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4525
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getHardwareConfig(I)V

    .line 4526
    goto/16 :goto_8

    .line 4502
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_16
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_40

    move v3, v4

    :cond_40
    move v0, v3

    .line 4503
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_41

    .line 4504
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4505
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4506
    goto/16 :goto_8

    .line 4507
    :cond_41
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4509
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4510
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4511
    .local v2, "allow":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4512
    goto/16 :goto_8

    .line 4486
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "allow":Z
    :pswitch_17
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_42

    move v3, v4

    :cond_42
    move v0, v3

    .line 4487
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_43

    .line 4488
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4489
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4490
    goto/16 :goto_8

    .line 4491
    :cond_43
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4494
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4495
    .local v2, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4496
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4497
    goto/16 :goto_8

    .line 4471
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_18
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_44

    move v3, v4

    :cond_44
    move v0, v3

    .line 4472
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_45

    .line 4473
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4474
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4475
    goto/16 :goto_8

    .line 4476
    :cond_45
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4479
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4480
    .local v2, "resetType":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvResetConfig(II)V

    .line 4481
    goto/16 :goto_8

    .line 4456
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "resetType":I
    :pswitch_19
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_46

    move v3, v4

    :cond_46
    move v0, v3

    .line 4457
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_47

    .line 4458
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4460
    goto/16 :goto_8

    .line 4461
    :cond_47
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4464
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v2

    .line 4465
    .local v2, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4466
    goto/16 :goto_8

    .line 4440
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_48

    move v3, v4

    :cond_48
    move v0, v3

    .line 4441
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_49

    .line 4442
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4443
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4444
    goto/16 :goto_8

    .line 4445
    :cond_49
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4447
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4448
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4449
    .local v2, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4450
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4451
    goto/16 :goto_8

    .line 4425
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4a

    move v3, v4

    :cond_4a
    move v0, v3

    .line 4426
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_4b

    .line 4427
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4429
    goto/16 :goto_8

    .line 4430
    :cond_4b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4433
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4434
    .local v2, "itemId":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->nvReadItem(II)V

    .line 4435
    goto/16 :goto_8

    .line 4409
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "itemId":I
    :pswitch_1c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4c

    move v3, v4

    :cond_4c
    move v0, v3

    .line 4410
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_4d

    .line 4411
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4412
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4413
    goto/16 :goto_8

    .line 4414
    :cond_4d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4417
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4418
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4419
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4420
    goto/16 :goto_8

    .line 4394
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4e

    move v3, v4

    :cond_4e
    move v0, v3

    .line 4395
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_4f

    .line 4396
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4398
    goto/16 :goto_8

    .line 4399
    :cond_4f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4401
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4402
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4403
    .local v2, "channelId":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4404
    goto/16 :goto_8

    .line 4378
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "channelId":I
    :pswitch_1e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_50

    move v3, v4

    :cond_50
    move v0, v3

    .line 4379
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_51

    .line 4380
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4381
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4382
    goto/16 :goto_8

    .line 4383
    :cond_51
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4386
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4387
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4388
    .local v3, "p2":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4389
    goto/16 :goto_8

    .line 4362
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "p2":I
    :pswitch_1f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_52

    move v3, v4

    :cond_52
    move v0, v3

    .line 4363
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_53

    .line 4364
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4365
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4366
    goto/16 :goto_8

    .line 4367
    :cond_53
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4370
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4371
    .local v2, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4372
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4373
    goto/16 :goto_8

    .line 4346
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_20
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_54

    move v3, v4

    :cond_54
    move v0, v3

    .line 4347
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_55

    .line 4348
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4350
    goto/16 :goto_8

    .line 4351
    :cond_55
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4354
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4355
    .local v2, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4356
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4357
    goto/16 :goto_8

    .line 4332
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_21
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_56

    move v3, v4

    :cond_56
    move v0, v3

    .line 4333
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_57

    .line 4334
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4335
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4336
    goto/16 :goto_8

    .line 4337
    :cond_57
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4340
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4341
    goto/16 :goto_8

    .line 4314
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_22
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_58

    move v3, v4

    :cond_58
    move v0, v3

    .line 4315
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_59

    .line 4316
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4318
    goto/16 :goto_8

    .line 4319
    :cond_59
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4322
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4323
    .local v2, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4325
    .local v3, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 4326
    .local v4, "isRoaming":Z
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4327
    goto/16 :goto_8

    .line 4299
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v3    # "modemCognitive":Z
    .end local v4    # "isRoaming":Z
    :pswitch_23
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5a

    move v3, v4

    :cond_5a
    move v0, v3

    .line 4300
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_5b

    .line 4301
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4302
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4303
    goto/16 :goto_8

    .line 4304
    :cond_5b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4307
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4308
    .local v2, "rate":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4309
    goto/16 :goto_8

    .line 4285
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "rate":I
    :pswitch_24
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5c

    move v3, v4

    :cond_5c
    move v0, v3

    .line 4286
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_5d

    .line 4287
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4288
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4289
    goto/16 :goto_8

    .line 4290
    :cond_5d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4293
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCellInfoList(I)V

    .line 4294
    goto/16 :goto_8

    .line 4271
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_25
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5e

    move v3, v4

    :cond_5e
    move v0, v3

    .line 4272
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_5f

    .line 4273
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4274
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4275
    goto/16 :goto_8

    .line 4276
    :cond_5f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4279
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4280
    goto/16 :goto_8

    .line 4256
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_26
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_60

    move v3, v4

    :cond_60
    move v0, v3

    .line 4257
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_61

    .line 4258
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4260
    goto/16 :goto_8

    .line 4261
    :cond_61
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4263
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4264
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4265
    .local v2, "contents":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4266
    goto/16 :goto_8

    .line 4240
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "contents":Ljava/lang/String;
    :pswitch_27
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_62

    move v3, v4

    :cond_62
    move v0, v3

    .line 4241
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_63

    .line 4242
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4243
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4244
    goto/16 :goto_8

    .line 4245
    :cond_63
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4247
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4248
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4249
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4250
    .local v3, "ackPdu":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4251
    goto/16 :goto_8

    .line 4225
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "ackPdu":Ljava/lang/String;
    :pswitch_28
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_64

    move v3, v4

    :cond_64
    move v0, v3

    .line 4226
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_65

    .line 4227
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4228
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4229
    goto/16 :goto_8

    .line 4230
    :cond_65
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4233
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4234
    .local v2, "challenge":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4235
    goto/16 :goto_8

    .line 4211
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "challenge":Ljava/lang/String;
    :pswitch_29
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_66

    move v3, v4

    :cond_66
    move v0, v3

    .line 4212
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_67

    .line 4213
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4214
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4215
    goto/16 :goto_8

    .line 4216
    :cond_67
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4218
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4219
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4220
    goto/16 :goto_8

    .line 4197
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_68

    move v3, v4

    :cond_68
    move v0, v3

    .line 4198
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_69

    .line 4199
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4201
    goto/16 :goto_8

    .line 4202
    :cond_69
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4204
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4205
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4206
    goto/16 :goto_8

    .line 4182
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6a

    move v3, v4

    :cond_6a
    move v0, v3

    .line 4183
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_6b

    .line 4184
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4185
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4186
    goto/16 :goto_8

    .line 4187
    :cond_6b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4189
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4190
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4191
    .local v2, "available":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4192
    goto/16 :goto_8

    .line 4167
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "available":Z
    :pswitch_2c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6c

    move v3, v4

    :cond_6c
    move v0, v3

    .line 4168
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_6d

    .line 4169
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4170
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4171
    goto/16 :goto_8

    .line 4172
    :cond_6d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4174
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4175
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4176
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4177
    goto/16 :goto_8

    .line 4153
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsc":Ljava/lang/String;
    :pswitch_2d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6e

    move v3, v4

    :cond_6e
    move v0, v3

    .line 4154
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_6f

    .line 4155
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4156
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4157
    goto/16 :goto_8

    .line 4158
    :cond_6f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4161
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getSmscAddress(I)V

    .line 4162
    goto/16 :goto_8

    .line 4139
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_70

    move v3, v4

    :cond_70
    move v0, v3

    .line 4140
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_71

    .line 4141
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4143
    goto/16 :goto_8

    .line 4144
    :cond_71
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4147
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 4148
    goto/16 :goto_8

    .line 4125
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_2f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_72

    move v3, v4

    :cond_72
    move v0, v3

    .line 4126
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_73

    .line 4127
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4128
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4129
    goto/16 :goto_8

    .line 4130
    :cond_73
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4132
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4133
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDeviceIdentity(I)V

    .line 4134
    goto/16 :goto_8

    .line 4110
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_30
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_74

    move v3, v4

    :cond_74
    move v0, v3

    .line 4111
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_75

    .line 4112
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4113
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4114
    goto/16 :goto_8

    .line 4115
    :cond_75
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4117
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4118
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4119
    .local v2, "index":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 4120
    goto/16 :goto_8

    .line 4094
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_31
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v3, v4

    :cond_76
    move v0, v3

    .line 4095
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_77

    .line 4096
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4097
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4098
    goto/16 :goto_8

    .line 4099
    :cond_77
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4102
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 4103
    .local v2, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4104
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 4105
    goto/16 :goto_8

    .line 4080
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_32
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_78

    move v3, v4

    :cond_78
    move v0, v3

    .line 4081
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_79

    .line 4082
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4083
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4084
    goto/16 :goto_8

    .line 4085
    :cond_79
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4088
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCDMASubscription(I)V

    .line 4089
    goto/16 :goto_8

    .line 4065
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_33
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7a

    move v3, v4

    :cond_7a
    move v0, v3

    .line 4066
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_7b

    .line 4067
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4068
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4069
    goto/16 :goto_8

    .line 4070
    :cond_7b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4072
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4073
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4074
    .local v2, "activate":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 4075
    goto/16 :goto_8

    .line 4050
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_34
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v3, v4

    :cond_7c
    move v0, v3

    .line 4051
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_7d

    .line 4052
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4053
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4054
    goto/16 :goto_8

    .line 4055
    :cond_7d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4057
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4058
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4059
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4060
    goto/16 :goto_8

    .line 4036
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_35
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v3, v4

    :cond_7e
    move v0, v3

    .line 4037
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_7f

    .line 4038
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4040
    goto/16 :goto_8

    .line 4041
    :cond_7f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4044
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 4045
    goto/16 :goto_8

    .line 4021
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_36
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    move v3, v4

    :cond_80
    move v0, v3

    .line 4022
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_81

    .line 4023
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4025
    goto/16 :goto_8

    .line 4026
    :cond_81
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4029
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4030
    .local v2, "activate":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 4031
    goto/16 :goto_8

    .line 4006
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "activate":Z
    :pswitch_37
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_82

    move v3, v4

    :cond_82
    move v0, v3

    .line 4007
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_83

    .line 4008
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 4010
    goto/16 :goto_8

    .line 4011
    :cond_83
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4014
    .restart local v1    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4015
    .local v2, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4016
    goto/16 :goto_8

    .line 3992
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_38
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_84

    move v3, v4

    :cond_84
    move v0, v3

    .line 3993
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_85

    .line 3994
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3995
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3996
    goto/16 :goto_8

    .line 3997
    :cond_85
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3999
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4000
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 4001
    goto/16 :goto_8

    .line 3976
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_39
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v3, v4

    :cond_86
    move v0, v3

    .line 3977
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_87

    .line 3978
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3979
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3980
    goto/16 :goto_8

    .line 3981
    :cond_87
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3983
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3984
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 3985
    .local v2, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3986
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 3987
    goto/16 :goto_8

    .line 3960
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_3a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_88

    move v3, v4

    :cond_88
    move v0, v3

    .line 3961
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_89

    .line 3962
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3963
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3964
    goto/16 :goto_8

    .line 3965
    :cond_89
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3968
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 3969
    .local v2, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3970
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 3971
    goto/16 :goto_8

    .line 3943
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_3b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8a

    move v3, v4

    :cond_8a
    move v0, v3

    .line 3944
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_8b

    .line 3945
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3947
    goto/16 :goto_8

    .line 3948
    :cond_8b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3951
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3952
    .local v2, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3953
    .local v3, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 3954
    .local v4, "off":I
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 3955
    goto/16 :goto_8

    .line 3928
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dtmf":Ljava/lang/String;
    .end local v3    # "on":I
    .end local v4    # "off":I
    :pswitch_3c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8c

    move v3, v4

    :cond_8c
    move v0, v3

    .line 3929
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_8d

    .line 3930
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3932
    goto/16 :goto_8

    .line 3933
    :cond_8d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3936
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3937
    .local v2, "featureCode":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 3938
    goto/16 :goto_8

    .line 3914
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "featureCode":Ljava/lang/String;
    :pswitch_3d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_8e

    move v3, v4

    :cond_8e
    move v0, v3

    .line 3915
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_8f

    .line 3916
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3917
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3918
    goto/16 :goto_8

    .line 3919
    :cond_8f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3922
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 3923
    goto/16 :goto_8

    .line 3899
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_3e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_90

    move v3, v4

    :cond_90
    move v0, v3

    .line 3900
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_91

    .line 3901
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3902
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3903
    goto/16 :goto_8

    .line 3904
    :cond_91
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3907
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3908
    .local v2, "enable":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 3909
    goto/16 :goto_8

    .line 3885
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_3f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_92

    move v3, v4

    :cond_92
    move v0, v3

    .line 3886
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_93

    .line 3887
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3889
    goto/16 :goto_8

    .line 3890
    :cond_93
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3892
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3893
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getTTYMode(I)V

    .line 3894
    goto/16 :goto_8

    .line 3870
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_40
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_94

    move v3, v4

    :cond_94
    move v0, v3

    .line 3871
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_95

    .line 3872
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3873
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3874
    goto/16 :goto_8

    .line 3875
    :cond_95
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3878
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3879
    .local v2, "mode":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setTTYMode(II)V

    .line 3880
    goto/16 :goto_8

    .line 3856
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_41
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_96

    move v3, v4

    :cond_96
    move v0, v3

    .line 3857
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_97

    .line 3858
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3860
    goto/16 :goto_8

    .line 3861
    :cond_97
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3863
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3864
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 3865
    goto/16 :goto_8

    .line 3841
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_42
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_98

    move v3, v4

    :cond_98
    move v0, v3

    .line 3842
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_99

    .line 3843
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3844
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3845
    goto/16 :goto_8

    .line 3846
    :cond_99
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3849
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3850
    .local v2, "type":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 3851
    goto/16 :goto_8

    .line 3826
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "type":I
    :pswitch_43
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9a

    move v3, v4

    :cond_9a
    move v0, v3

    .line 3827
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_9b

    .line 3828
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3829
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3830
    goto/16 :goto_8

    .line 3831
    :cond_9b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3834
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3835
    .local v2, "cdmaSub":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 3836
    goto/16 :goto_8

    .line 3811
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cdmaSub":I
    :pswitch_44
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9c

    move v3, v4

    :cond_9c
    move v0, v3

    .line 3812
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_9d

    .line 3813
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3814
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3815
    goto/16 :goto_8

    .line 3816
    :cond_9d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3818
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3819
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3820
    .local v2, "enable":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 3821
    goto/16 :goto_8

    .line 3797
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_45
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_9e

    move v3, v4

    :cond_9e
    move v0, v3

    .line 3798
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_9f

    .line 3799
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3801
    goto/16 :goto_8

    .line 3802
    :cond_9f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3805
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getNeighboringCids(I)V

    .line 3806
    goto/16 :goto_8

    .line 3783
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_46
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a0

    move v3, v4

    :cond_a0
    move v0, v3

    .line 3784
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_a1

    .line 3785
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3786
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3787
    goto/16 :goto_8

    .line 3788
    :cond_a1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3790
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3791
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 3792
    goto/16 :goto_8

    .line 3768
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_47
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a2

    move v3, v4

    :cond_a2
    move v0, v3

    .line 3769
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_a3

    .line 3770
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3771
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3772
    goto/16 :goto_8

    .line 3773
    :cond_a3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3776
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3777
    .local v2, "nwType":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 3778
    goto/16 :goto_8

    .line 3754
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "nwType":I
    :pswitch_48
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a4

    move v3, v4

    :cond_a4
    move v0, v3

    .line 3755
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_a5

    .line 3756
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3757
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3758
    goto/16 :goto_8

    .line 3759
    :cond_a5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3761
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3762
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->explicitCallTransfer(I)V

    .line 3763
    goto/16 :goto_8

    .line 3739
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_49
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a6

    move v3, v4

    :cond_a6
    move v0, v3

    .line 3740
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_a7

    .line 3741
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3743
    goto/16 :goto_8

    .line 3744
    :cond_a7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3746
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3747
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3748
    .local v2, "accept":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 3749
    goto/16 :goto_8

    .line 3724
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "accept":Z
    :pswitch_4a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_a8

    move v3, v4

    :cond_a8
    move v0, v3

    .line 3725
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_a9

    .line 3726
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3727
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3728
    goto/16 :goto_8

    .line 3729
    :cond_a9
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3731
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3732
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3733
    .local v2, "commandResponse":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 3734
    goto/16 :goto_8

    .line 3709
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "commandResponse":Ljava/lang/String;
    :pswitch_4b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_aa

    move v3, v4

    :cond_aa
    move v0, v3

    .line 3710
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_ab

    .line 3711
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3713
    goto/16 :goto_8

    .line 3714
    :cond_ab
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3716
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3717
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3718
    .local v2, "command":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 3719
    goto/16 :goto_8

    .line 3695
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "command":Ljava/lang/String;
    :pswitch_4c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ac

    move v3, v4

    :cond_ac
    move v0, v3

    .line 3696
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_ad

    .line 3697
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3698
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3699
    goto/16 :goto_8

    .line 3700
    :cond_ad
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3702
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3703
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getAvailableBandModes(I)V

    .line 3704
    goto/16 :goto_8

    .line 3680
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_4d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ae

    move v3, v4

    :cond_ae
    move v0, v3

    .line 3681
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_af

    .line 3682
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3684
    goto/16 :goto_8

    .line 3685
    :cond_af
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3687
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3688
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3689
    .local v2, "mode":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setBandMode(II)V

    .line 3690
    goto/16 :goto_8

    .line 3665
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "mode":I
    :pswitch_4e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b0

    move v3, v4

    :cond_b0
    move v0, v3

    .line 3666
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_b1

    .line 3667
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3669
    goto/16 :goto_8

    .line 3670
    :cond_b1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3672
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3673
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3674
    .local v2, "index":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 3675
    goto/16 :goto_8

    .line 3649
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "index":I
    :pswitch_4f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b2

    move v3, v4

    :cond_b2
    move v0, v3

    .line 3650
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_b3

    .line 3651
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3653
    goto/16 :goto_8

    .line 3654
    :cond_b3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3657
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 3658
    .local v2, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3659
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 3660
    goto/16 :goto_8

    .line 3634
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_50
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b4

    move v3, v4

    :cond_b4
    move v0, v3

    .line 3635
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_b5

    .line 3636
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3638
    goto/16 :goto_8

    .line 3639
    :cond_b5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3642
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3643
    .local v2, "enable":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 3644
    goto/16 :goto_8

    .line 3620
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_51
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b6

    move v3, v4

    :cond_b6
    move v0, v3

    .line 3621
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_b7

    .line 3622
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3623
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3624
    goto/16 :goto_8

    .line 3625
    :cond_b7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3628
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDataCallList(I)V

    .line 3629
    goto/16 :goto_8

    .line 3606
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_52
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_b8

    move v3, v4

    :cond_b8
    move v0, v3

    .line 3607
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_b9

    .line 3608
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3610
    goto/16 :goto_8

    .line 3611
    :cond_b9
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3613
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3614
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getClip(I)V

    .line 3615
    goto/16 :goto_8

    .line 3592
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_53
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ba

    move v3, v4

    :cond_ba
    move v0, v3

    .line 3593
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_bb

    .line 3594
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3596
    goto/16 :goto_8

    .line 3597
    :cond_bb
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3600
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getMute(I)V

    .line 3601
    goto/16 :goto_8

    .line 3577
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_54
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_bc

    move v3, v4

    :cond_bc
    move v0, v3

    .line 3578
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_bd

    .line 3579
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3581
    goto/16 :goto_8

    .line 3582
    :cond_bd
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3585
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3586
    .restart local v2    # "enable":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setMute(IZ)V

    .line 3587
    goto/16 :goto_8

    .line 3562
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    :pswitch_55
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_be

    move v3, v4

    :cond_be
    move v0, v3

    .line 3563
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_bf

    .line 3564
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3566
    goto/16 :goto_8

    .line 3567
    :cond_bf
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3570
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3571
    .local v2, "gsmIndex":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->separateConnection(II)V

    .line 3572
    goto/16 :goto_8

    .line 3548
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_56
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c0

    move v3, v4

    :cond_c0
    move v0, v3

    .line 3549
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_c1

    .line 3550
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3551
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3552
    goto/16 :goto_8

    .line 3553
    :cond_c1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3556
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getBasebandVersion(I)V

    .line 3557
    goto/16 :goto_8

    .line 3534
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_57
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c2

    move v3, v4

    :cond_c2
    move v0, v3

    .line 3535
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_c3

    .line 3536
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3537
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3538
    goto/16 :goto_8

    .line 3539
    :cond_c3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3541
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3542
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->stopDtmf(I)V

    .line 3543
    goto/16 :goto_8

    .line 3519
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_58
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c4

    move v3, v4

    :cond_c4
    move v0, v3

    .line 3520
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_c5

    .line 3521
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3522
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3523
    goto/16 :goto_8

    .line 3524
    :cond_c5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3527
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3528
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 3529
    goto/16 :goto_8

    .line 3505
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_59
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c6

    move v3, v4

    :cond_c6
    move v0, v3

    .line 3506
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_c7

    .line 3507
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3509
    goto/16 :goto_8

    .line 3510
    :cond_c7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3513
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getAvailableNetworks(I)V

    .line 3514
    goto/16 :goto_8

    .line 3490
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_c8

    move v3, v4

    :cond_c8
    move v0, v3

    .line 3491
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_c9

    .line 3492
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3493
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3494
    goto/16 :goto_8

    .line 3495
    :cond_c9
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3498
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3499
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 3500
    goto/16 :goto_8

    .line 3476
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :pswitch_5b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ca

    move v3, v4

    :cond_ca
    move v0, v3

    .line 3477
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_cb

    .line 3478
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3480
    goto/16 :goto_8

    .line 3481
    :cond_cb
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3483
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3484
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 3485
    goto/16 :goto_8

    .line 3462
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_cc

    move v3, v4

    :cond_cc
    move v0, v3

    .line 3463
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_cd

    .line 3464
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3465
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3466
    goto/16 :goto_8

    .line 3467
    :cond_cd
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3470
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 3471
    goto/16 :goto_8

    .line 3445
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_5d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ce

    move v3, v4

    :cond_ce
    move v0, v3

    .line 3446
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_cf

    .line 3447
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3448
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3449
    goto/16 :goto_8

    .line 3450
    :cond_cf
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3452
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3453
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3454
    .local v2, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3455
    .local v3, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3456
    .local v4, "newPassword":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    goto/16 :goto_8

    .line 3426
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "facility":Ljava/lang/String;
    .end local v3    # "oldPassword":Ljava/lang/String;
    .end local v4    # "newPassword":Ljava/lang/String;
    :pswitch_5e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d0

    move v3, v4

    :cond_d0
    move v10, v3

    .line 3427
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v4, :cond_d1

    .line 3428
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3429
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3430
    goto/16 :goto_8

    .line 3431
    :cond_d1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3433
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 3434
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3435
    .local v12, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 3436
    .local v13, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3437
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 3438
    .local v15, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 3439
    .local v16, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 3440
    goto/16 :goto_8

    .line 3408
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "serial":I
    .end local v12    # "facility":Ljava/lang/String;
    .end local v13    # "lockState":Z
    .end local v14    # "password":Ljava/lang/String;
    .end local v15    # "serviceClass":I
    .end local v16    # "appId":Ljava/lang/String;
    :pswitch_5f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d2

    move v3, v4

    :cond_d2
    move v6, v3

    .line 3409
    .local v6, "_hidl_is_oneway":Z
    if-eq v6, v4, :cond_d3

    .line 3410
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3412
    goto/16 :goto_8

    .line 3413
    :cond_d3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 3416
    .local v10, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 3417
    .local v11, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 3418
    .local v12, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 3419
    .local v13, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3420
    .local v14, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3421
    goto/16 :goto_8

    .line 3392
    .end local v6    # "_hidl_is_oneway":Z
    .end local v10    # "serial":I
    .end local v11    # "facility":Ljava/lang/String;
    .end local v12    # "password":Ljava/lang/String;
    .end local v13    # "serviceClass":I
    .end local v14    # "appId":Ljava/lang/String;
    :pswitch_60
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d4

    move v3, v4

    :cond_d4
    move v0, v3

    .line 3393
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_d5

    .line 3394
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3395
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3396
    goto/16 :goto_8

    .line 3397
    :cond_d5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3399
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3400
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3401
    .local v2, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 3402
    .local v3, "reasonRadioShutDown":Z
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 3403
    goto/16 :goto_8

    .line 3378
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "cid":I
    .end local v3    # "reasonRadioShutDown":Z
    :pswitch_61
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d6

    move v3, v4

    :cond_d6
    move v0, v3

    .line 3379
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_d7

    .line 3380
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3381
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3382
    goto/16 :goto_8

    .line 3383
    :cond_d7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3385
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3386
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acceptCall(I)V

    .line 3387
    goto/16 :goto_8

    .line 3362
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_62
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_d8

    move v3, v4

    :cond_d8
    move v0, v3

    .line 3363
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_d9

    .line 3364
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3365
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3366
    goto/16 :goto_8

    .line 3367
    :cond_d9
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3370
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3371
    .local v2, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3372
    .local v3, "cause":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 3373
    goto/16 :goto_8

    .line 3346
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "success":Z
    .end local v3    # "cause":I
    :pswitch_63
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_da

    move v3, v4

    :cond_da
    move v0, v3

    .line 3347
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_db

    .line 3348
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3350
    goto/16 :goto_8

    .line 3351
    :cond_db
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3354
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3355
    .local v2, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 3356
    .local v3, "serviceClass":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCallWaiting(IZI)V

    .line 3357
    goto/16 :goto_8

    .line 3331
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_64
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_dc

    move v3, v4

    :cond_dc
    move v0, v3

    .line 3332
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_dd

    .line 3333
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3334
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3335
    goto/16 :goto_8

    .line 3336
    :cond_dd
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3338
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3339
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3340
    .local v2, "serviceClass":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCallWaiting(II)V

    .line 3341
    goto/16 :goto_8

    .line 3315
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "serviceClass":I
    :pswitch_65
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_de

    move v3, v4

    :cond_de
    move v0, v3

    .line 3316
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_df

    .line 3317
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3318
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3319
    goto/16 :goto_8

    .line 3320
    :cond_df
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3323
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3324
    .local v2, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3325
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3326
    goto/16 :goto_8

    .line 3299
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_66
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e0

    move v3, v4

    :cond_e0
    move v0, v3

    .line 3300
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_e1

    .line 3301
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3302
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3303
    goto/16 :goto_8

    .line 3304
    :cond_e1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3307
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 3308
    .restart local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3309
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 3310
    goto/16 :goto_8

    .line 3284
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_67
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e2

    move v3, v4

    :cond_e2
    move v0, v3

    .line 3285
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_e3

    .line 3286
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3287
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3288
    goto/16 :goto_8

    .line 3289
    :cond_e3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3291
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3292
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 3293
    .local v2, "status":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setClir(II)V

    .line 3294
    goto/16 :goto_8

    .line 3270
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "status":I
    :pswitch_68
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e4

    move v3, v4

    :cond_e4
    move v0, v3

    .line 3271
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_e5

    .line 3272
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3273
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3274
    goto/16 :goto_8

    .line 3275
    :cond_e5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3277
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3278
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getClir(I)V

    .line 3279
    goto/16 :goto_8

    .line 3256
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_69
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e6

    move v3, v4

    :cond_e6
    move v0, v3

    .line 3257
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_e7

    .line 3258
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3259
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3260
    goto/16 :goto_8

    .line 3261
    :cond_e7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3263
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3264
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->cancelPendingUssd(I)V

    .line 3265
    goto/16 :goto_8

    .line 3241
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_6a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_e8

    move v3, v4

    :cond_e8
    move v0, v3

    .line 3242
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_e9

    .line 3243
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3244
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3245
    goto/16 :goto_8

    .line 3246
    :cond_e9
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3248
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3249
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3250
    .local v2, "ussd":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 3251
    goto/16 :goto_8

    .line 3225
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "ussd":Ljava/lang/String;
    :pswitch_6b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ea

    move v3, v4

    :cond_ea
    move v0, v3

    .line 3226
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_eb

    .line 3227
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3228
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3229
    goto/16 :goto_8

    .line 3230
    :cond_eb
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3233
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 3234
    .local v2, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3235
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 3236
    goto/16 :goto_8

    .line 3205
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_6c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ec

    move v3, v4

    :cond_ec
    move v10, v3

    .line 3206
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v4, :cond_ed

    .line 3207
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3208
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3209
    goto/16 :goto_8

    .line 3210
    :cond_ed
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 3213
    .local v11, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 3214
    .local v12, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v13, v0

    .line 3215
    .local v13, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v13, v8}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3216
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 3217
    .local v14, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 3218
    .local v15, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 3219
    .local v16, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 3220
    goto/16 :goto_8

    .line 3189
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "serial":I
    .end local v12    # "radioTechnology":I
    .end local v13    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v14    # "modemCognitive":Z
    .end local v15    # "roamingAllowed":Z
    .end local v16    # "isRoaming":Z
    :pswitch_6d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_ee

    move v3, v4

    :cond_ee
    move v0, v3

    .line 3190
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_ef

    .line 3191
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3192
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3193
    goto/16 :goto_8

    .line 3194
    :cond_ef
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3196
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3197
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3198
    .local v2, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3199
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3200
    goto/16 :goto_8

    .line 3173
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_6e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f0

    move v3, v4

    :cond_f0
    move v0, v3

    .line 3174
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_f1

    .line 3175
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3177
    goto/16 :goto_8

    .line 3178
    :cond_f1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3181
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 3182
    .restart local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3183
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 3184
    goto/16 :goto_8

    .line 3158
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_6f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f2

    move v3, v4

    :cond_f2
    move v0, v3

    .line 3159
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_f3

    .line 3160
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3161
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3162
    goto/16 :goto_8

    .line 3163
    :cond_f3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3166
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3167
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 3168
    goto/16 :goto_8

    .line 3143
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_70
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f4

    move v3, v4

    :cond_f4
    move v0, v3

    .line 3144
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_f5

    .line 3145
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3146
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3147
    goto/16 :goto_8

    .line 3148
    :cond_f5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3150
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3151
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 3152
    .local v2, "on":Z
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setRadioPower(IZ)V

    .line 3153
    goto/16 :goto_8

    .line 3129
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "on":Z
    :pswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f6

    move v3, v4

    :cond_f6
    move v0, v3

    .line 3130
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_f7

    .line 3131
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3133
    goto/16 :goto_8

    .line 3134
    :cond_f7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3137
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getOperator(I)V

    .line 3138
    goto/16 :goto_8

    .line 3115
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_f8

    move v3, v4

    :cond_f8
    move v0, v3

    .line 3116
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_f9

    .line 3117
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3118
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3119
    goto/16 :goto_8

    .line 3120
    :cond_f9
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3122
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3123
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3124
    goto/16 :goto_8

    .line 3101
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_73
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fa

    move v3, v4

    :cond_fa
    move v0, v3

    .line 3102
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_fb

    .line 3103
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3104
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3105
    goto/16 :goto_8

    .line 3106
    :cond_fb
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3109
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3110
    goto/16 :goto_8

    .line 3087
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_74
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fc

    move v3, v4

    :cond_fc
    move v0, v3

    .line 3088
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_fd

    .line 3089
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3090
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3091
    goto/16 :goto_8

    .line 3092
    :cond_fd
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3094
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3095
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getSignalStrength(I)V

    .line 3096
    goto/16 :goto_8

    .line 3073
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_75
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_fe

    move v3, v4

    :cond_fe
    move v0, v3

    .line 3074
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_ff

    .line 3075
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3076
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3077
    goto/16 :goto_8

    .line 3078
    :cond_ff
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3081
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3082
    goto/16 :goto_8

    .line 3059
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_76
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_100

    move v3, v4

    :cond_100
    move v0, v3

    .line 3060
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_101

    .line 3061
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3062
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3063
    goto/16 :goto_8

    .line 3064
    :cond_101
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3067
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->rejectCall(I)V

    .line 3068
    goto/16 :goto_8

    .line 3045
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    move v3, v4

    :cond_102
    move v0, v3

    .line 3046
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_103

    .line 3047
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3048
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3049
    goto/16 :goto_8

    .line 3050
    :cond_103
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3053
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->conference(I)V

    .line 3054
    goto/16 :goto_8

    .line 3031
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_78
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_104

    move v3, v4

    :cond_104
    move v0, v3

    .line 3032
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_105

    .line 3033
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3034
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3035
    goto/16 :goto_8

    .line 3036
    :cond_105
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3038
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3039
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3040
    goto/16 :goto_8

    .line 3017
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_106

    move v3, v4

    :cond_106
    move v0, v3

    .line 3018
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_107

    .line 3019
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3020
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3021
    goto/16 :goto_8

    .line 3022
    :cond_107
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3024
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3025
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3026
    goto/16 :goto_8

    .line 3003
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_108

    move v3, v4

    :cond_108
    move v0, v3

    .line 3004
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_109

    .line 3005
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3006
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3007
    goto/16 :goto_8

    .line 3008
    :cond_109
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3011
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3012
    goto/16 :goto_8

    .line 2988
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10a

    move v3, v4

    :cond_10a
    move v0, v3

    .line 2989
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_10b

    .line 2990
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2991
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2992
    goto/16 :goto_8

    .line 2993
    :cond_10b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2995
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2996
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2997
    .local v2, "gsmIndex":I
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->hangup(II)V

    .line 2998
    goto/16 :goto_8

    .line 2973
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "gsmIndex":I
    :pswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10c

    move v3, v4

    :cond_10c
    move v0, v3

    .line 2974
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_10d

    .line 2975
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2976
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2977
    goto/16 :goto_8

    .line 2978
    :cond_10d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2980
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2981
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2982
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 2983
    goto/16 :goto_8

    .line 2957
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_7d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10e

    move v3, v4

    :cond_10e
    move v0, v3

    .line 2958
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_10f

    .line 2959
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2960
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2961
    goto/16 :goto_8

    .line 2962
    :cond_10f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2965
    .restart local v1    # "serial":I
    new-instance v2, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 2966
    .local v2, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v2, v8}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2967
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 2968
    goto/16 :goto_8

    .line 2943
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_7e
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_110

    move v3, v4

    :cond_110
    move v0, v3

    .line 2944
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_111

    .line 2945
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2946
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2947
    goto/16 :goto_8

    .line 2948
    :cond_111
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2950
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2951
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getCurrentCalls(I)V

    .line 2952
    goto/16 :goto_8

    .line 2928
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_7f
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_112

    move v3, v4

    :cond_112
    move v0, v3

    .line 2929
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_113

    .line 2930
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2932
    goto/16 :goto_8

    .line 2933
    :cond_113
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2936
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2937
    .local v2, "netPin":Ljava/lang/String;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 2938
    goto/16 :goto_8

    .line 2911
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "netPin":Ljava/lang/String;
    :pswitch_80
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_114

    move v3, v4

    :cond_114
    move v0, v3

    .line 2912
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_115

    .line 2913
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2914
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2915
    goto/16 :goto_8

    .line 2916
    :cond_115
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2918
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2919
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2920
    .local v2, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2921
    .local v3, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2922
    .local v4, "aid":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    goto/16 :goto_8

    .line 2894
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin2":Ljava/lang/String;
    .end local v3    # "newPin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_116

    move v3, v4

    :cond_116
    move v0, v3

    .line 2895
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_117

    .line 2896
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2898
    goto/16 :goto_8

    .line 2899
    :cond_117
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2902
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2903
    .local v2, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2904
    .local v3, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2905
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    goto/16 :goto_8

    .line 2877
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "oldPin":Ljava/lang/String;
    .end local v3    # "newPin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_118

    move v3, v4

    :cond_118
    move v0, v3

    .line 2878
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_119

    .line 2879
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2880
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2881
    goto/16 :goto_8

    .line 2882
    :cond_119
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2885
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2886
    .local v2, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2887
    .local v3, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2888
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    goto/16 :goto_8

    .line 2861
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk2":Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_83
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11a

    move v3, v4

    :cond_11a
    move v0, v3

    .line 2862
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_11b

    .line 2863
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2864
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2865
    goto/16 :goto_8

    .line 2866
    :cond_11b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2868
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2869
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2870
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2871
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 2872
    goto/16 :goto_8

    .line 2844
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11c

    move v3, v4

    :cond_11c
    move v0, v3

    .line 2845
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_11d

    .line 2846
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2848
    goto/16 :goto_8

    .line 2849
    :cond_11d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2852
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2853
    .local v2, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2854
    .local v3, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2855
    .restart local v4    # "aid":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    goto/16 :goto_8

    .line 2828
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "puk":Ljava/lang/String;
    .end local v3    # "pin":Ljava/lang/String;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_85
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11e

    move v3, v4

    :cond_11e
    move v0, v3

    .line 2829
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_11f

    .line 2830
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2832
    goto :goto_8

    .line 2833
    :cond_11f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2836
    .restart local v1    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2837
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2838
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v7, v1, v2, v3}, Landroid/hardware/radio/V1_1/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 2839
    goto :goto_8

    .line 2814
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_86
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_120

    move v3, v4

    :cond_120
    move v0, v3

    .line 2815
    .restart local v0    # "_hidl_is_oneway":Z
    if-eq v0, v4, :cond_121

    .line 2816
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2817
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2818
    goto :goto_8

    .line 2819
    :cond_121
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2821
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2822
    .restart local v1    # "serial":I
    invoke-virtual {v7, v1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->getIccCardStatus(I)V

    .line 2823
    goto :goto_8

    .line 2797
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "serial":I
    :pswitch_87
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_122

    goto :goto_7

    :cond_122
    move v4, v3

    :goto_7
    move v0, v4

    .line 2798
    .restart local v0    # "_hidl_is_oneway":Z
    if-eqz v0, :cond_123

    .line 2799
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2800
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2801
    goto :goto_8

    .line 2802
    :cond_123
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v1

    .line 2805
    .local v1, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v2

    .line 2806
    .local v2, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v7, v1, v2}, Landroid/hardware/radio/V1_1/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 2807
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2808
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2809
    nop

    .line 5012
    .end local v0    # "_hidl_is_oneway":Z
    .end local v1    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v2    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :cond_124
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2748
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2776
    const-string v0, "android.hardware.radio@1.1::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2777
    return-object p0

    .line 2779
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

    .line 2783
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_1/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 2784
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 2738
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_1/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 2770
    const/4 v0, 0x1

    return v0
.end method
