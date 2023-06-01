.class public Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;
.super Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;
.source "OmadmServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omadm/OmadmServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OmadmIndication"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omadm/OmadmServiceImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/omadm/OmadmServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 218
    iput-object p1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-direct {p0}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadmIndication$Stub;-><init>()V

    return-void
.end method

.method private arrayListTobyte(Ljava/util/ArrayList;I)[B
    .registers 6
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)[B"
        }
    .end annotation

    .line 222
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-array v0, p2, [B

    .line 223
    .local v0, "byteList":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p2, :cond_14

    .line 225
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 227
    .end local v1    # "i":I
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMADM HIDL : arrayListTobyte, byteList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@M_OmadmServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v0
.end method


# virtual methods
.method public getApnIntTypeInfo(II)I
    .registers 5
    .param p1, "iidex"    # I
    .param p2, "apncls"    # I

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnIntTypeInfo: idex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    packed-switch p1, :pswitch_data_40

    .line 375
    const-string v0, "OmadmServiceImpl"

    const-string v1, "Fault getApnIntTypeInfo iidex"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x1

    return v0

    .line 374
    :pswitch_2a
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->is_ApnEnabled(I)I

    move-result v0

    return v0

    .line 373
    :pswitch_31
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ApnId(I)I

    move-result v0

    return v0

    .line 372
    :pswitch_38
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ApnIpvX(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_38
        :pswitch_31
        :pswitch_2a
    .end packed-switch
.end method

.method public getApnStringTypeInfo(II)Ljava/lang/String;
    .registers 5
    .param p1, "iidex"    # I
    .param p2, "apncls"    # I

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApnStringTypeInfo: idex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    packed-switch p1, :pswitch_data_32

    .line 343
    const-string v0, "OmadmServiceImpl"

    const-string v1, "Fault getApnStringTypeInfo iidex"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v0, ""

    return-object v0

    .line 342
    :pswitch_2b
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ApnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method

.method public getIntTypeInfo(I)I
    .registers 5
    .param p1, "iidex"    # I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntTypeInfo: idex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "OmadmServiceImpl"

    packed-switch p1, :pswitch_data_50

    .line 313
    goto :goto_41

    .line 312
    :pswitch_1c
    :try_start_1c
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ImsVwfState()I

    move-result v0

    return v0

    .line 311
    :pswitch_23
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ImsLvcState()I

    move-result v0

    return v0

    .line 310
    :pswitch_2a
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ImsVlt()I

    move-result v0

    return v0

    .line 309
    :pswitch_31
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ImsSmsFormat()I

    move-result v0

    return v0

    .line 308
    :pswitch_38
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->is_ImsSmsOverIpEnabled()I

    move-result v0

    return v0

    .line 315
    :catch_3f
    move-exception v1

    goto :goto_47

    .line 313
    :goto_41
    const-string v1, "Fault getIntTypeInfo iidex"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_3f

    .line 317
    goto :goto_4c

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    :goto_47
    const-string v2, "Unexpected Exception "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4c
    const/16 v0, 0xb

    return v0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_38
        :pswitch_31
        :pswitch_2a
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method

.method public getStringTypeInfo(I)Ljava/lang/String;
    .registers 5
    .param p1, "iidex"    # I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringTypeInfo: idex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "Unexpected Exception "

    const-string v1, "OmadmServiceImpl"

    packed-switch p1, :pswitch_data_ea

    .line 299
    :pswitch_1d
    const-string v0, "Fault getStringTypeInfo iidex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e6

    .line 297
    :pswitch_24
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_Ext()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 296
    :pswitch_2b
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_Iccid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_32
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_Language()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :pswitch_39
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_Dmversion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :pswitch_40
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_Model()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :pswitch_47
    :try_start_47
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_Manufacturer()Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_4e

    return-object v0

    .line 289
    :catch_4e
    move-exception v2

    .line 290
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_e6

    .line 280
    :pswitch_54
    :try_start_54
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_Type()Ljava/lang/String;

    move-result-object v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5a} :catch_5b

    return-object v0

    .line 281
    :catch_5b
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_e6

    .line 272
    :pswitch_61
    :try_start_61
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_HostID()Ljava/lang/String;

    move-result-object v0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_68

    return-object v0

    .line 273
    :catch_68
    move-exception v2

    .line 274
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_e6

    .line 269
    :pswitch_6e
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_HostDateStamp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_75
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_HostHWV()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_7c
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_HostFWV()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :pswitch_83
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_HostSWV()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :pswitch_8a
    :try_start_8a
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_HostDeviceModel()Ljava/lang/String;

    move-result-object v0
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_90} :catch_91

    return-object v0

    .line 261
    :catch_91
    move-exception v2

    .line 262
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_e6

    .line 252
    :pswitch_96
    :try_start_96
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_HostDeviceManu()Ljava/lang/String;

    move-result-object v0
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9c} :catch_9d

    return-object v0

    .line 253
    :catch_9d
    move-exception v2

    .line 254
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_e6

    .line 249
    :pswitch_a2
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_Time()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :pswitch_a9
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_Date()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :pswitch_b0
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->support_lrgobj_get()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_b7
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_HWV()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :pswitch_be
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_SWV()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    :pswitch_c5
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_FWV()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_cc
    :try_start_cc
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_DeviceOEM()Ljava/lang/String;

    move-result-object v0
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d2} :catch_d3

    return-object v0

    .line 239
    :catch_d3
    move-exception v2

    .line 240
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_e6

    .line 235
    :pswitch_d8
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_ImsDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_df
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/omadm/OmadmServiceImpl;->get_DeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :goto_e6
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_df
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_d8
        :pswitch_1d
        :pswitch_cc
        :pswitch_c5
        :pswitch_be
        :pswitch_b7
        :pswitch_b0
        :pswitch_a9
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_83
        :pswitch_7c
        :pswitch_75
        :pswitch_6e
        :pswitch_61
        :pswitch_54
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_24
    .end packed-switch
.end method

.method public requestAdminNetwork(Z)I
    .registers 6
    .param p1, "enable"    # Z

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAdminNetwork : enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x0

    .line 400
    .local v0, "ret":I
    :try_start_17
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p1}, Lcom/mediatek/omadm/OmadmServiceImpl;->request_AdminNetwork(Z)I

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1f

    move v0, v1

    .line 403
    goto :goto_27

    .line 401
    :catch_1f
    move-exception v1

    .line 402
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OmadmServiceImpl"

    const-string v3, "Unexpected Exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_27
    return v0
.end method

.method public setApnIntTypeInfo(III)I
    .registers 7
    .param p1, "iidex"    # I
    .param p2, "apncls"    # I
    .param p3, "i_info"    # I

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApnIntTypeInfo: idex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v0, "OmadmServiceImpl"

    packed-switch p1, :pswitch_data_4a

    .line 387
    goto :goto_3c

    .line 386
    :pswitch_2c
    :try_start_2c
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/omadm/OmadmServiceImpl;->enable_Apn(II)I

    move-result v0

    return v0

    .line 385
    :pswitch_33
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/omadm/OmadmServiceImpl;->set_ApnIpvX(II)I

    move-result v0

    return v0

    .line 389
    :catch_3a
    move-exception v1

    goto :goto_42

    .line 387
    :goto_3c
    const-string v1, "Fault setApnIntTypeInfo iidex"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_41} :catch_3a

    .line 391
    goto :goto_47

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    :goto_42
    const-string v2, "Unexpected Exception "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_47
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2c
    .end packed-switch
.end method

.method public setApnStringTypeInfo(IILjava/lang/String;)I
    .registers 7
    .param p1, "iidex"    # I
    .param p2, "apncls"    # I
    .param p3, "s_info"    # Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApnStringTypeInfo: idex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v0, "OmadmServiceImpl"

    packed-switch p1, :pswitch_data_48

    .line 364
    const-string v1, "Fault setApnStringTypeInfo iidex"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 361
    :pswitch_31
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0, p2, p3}, Lcom/mediatek/omadm/OmadmServiceImpl;->checkApnRestore(ILjava/lang/String;)V

    .line 362
    goto :goto_45

    .line 354
    :pswitch_37
    :try_start_37
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/omadm/OmadmServiceImpl;->set_ApnName(ILjava/lang/String;)I

    move-result v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_3e

    return v0

    .line 355
    :catch_3e
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Unexpected Exception "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    .line 366
    :goto_45
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_37
        :pswitch_31
    .end packed-switch
.end method

.method public setIntTypeInfo(II)I
    .registers 6
    .param p1, "iidex"    # I
    .param p2, "i_info"    # I

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntTypeInfo: idex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_OmadmServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v0, "OmadmServiceImpl"

    packed-switch p1, :pswitch_data_5e

    .line 331
    goto :goto_50

    .line 330
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->set_IsFactory(I)I

    move-result v0

    return v0

    .line 329
    :pswitch_2b
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->set_ImsVwfState(I)I

    move-result v0

    return v0

    .line 328
    :pswitch_32
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->set_ImsLvcState(I)I

    move-result v0

    return v0

    .line 327
    :pswitch_39
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->set_ImsVlt(I)I

    move-result v0

    return v0

    .line 326
    :pswitch_40
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->set_ImsSmsFormat(I)I

    move-result v0

    return v0

    .line 325
    :pswitch_47
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmIndication;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->enable_ImsSmsOverIp(I)I

    move-result v0

    return v0

    .line 333
    :catch_4e
    move-exception v1

    goto :goto_56

    .line 331
    :goto_50
    const-string v1, "Fault setIntTypeInfo iidex"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_55} :catch_4e

    .line 335
    goto :goto_5b

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    :goto_56
    const-string v2, "Unexpected Exception "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_24
    .end packed-switch
.end method
