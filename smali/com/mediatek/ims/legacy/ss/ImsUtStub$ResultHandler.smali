.class Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;
.super Landroid/os/Handler;
.source "ImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/legacy/ss/ImsUtStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/legacy/ss/ImsUtStub;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 243
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage(): event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 251
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    const-string v3, "ImsUtService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v2

    .line 255
    .local v2, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v4, v1, Landroid/os/Message;->what:I

    const-string v5, "During call and later do IMS dereg"

    const-string v6, "IMS dereg."

    const-string v7, "IMS_UT_EVENT_SET_CF: cfInfo["

    const-string v8, "Skip IMS dereg."

    const-string v9, "-1"

    const-string v10, "persist.vendor.radio.ss.imsdereg_off"

    const-string v11, "UnknownHostException. event = "

    const-string v12, "0"

    const-string v13, "vendor.gsm.radio.ss.imsdereg"

    const-string v14, "1"

    packed-switch v4, :pswitch_data_5d0

    .line 551
    move-object v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Event: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Landroid/os/Message;->what:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5cf

    .line 547
    :pswitch_70
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mImsService:Lcom/mediatek/ims/ImsService;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$600(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 548
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I

    move-result v4

    .line 547
    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/ims/ImsService;->deregisterImsWithCause(II)V

    .line 549
    move-object v4, v1

    goto/16 :goto_5cf

    .line 462
    :pswitch_83
    iget-object v4, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    if-eqz v4, :cond_131

    .line 463
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 465
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_e5

    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v15, :cond_e5

    .line 466
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v5, v5, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v5, :cond_131

    .line 467
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 468
    .local v5, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v6, 0x0

    .line 470
    .local v6, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v5, :cond_d7

    array-length v8, v5

    if-eqz v8, :cond_d7

    .line 471
    array-length v8, v5

    new-array v6, v8, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 472
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_ab
    array-length v9, v5

    if-ge v8, v9, :cond_d7

    .line 474
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v5, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v9, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    aget-object v10, v5, v8

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v9

    aput-object v9, v6, v8

    .line 472
    add-int/lit8 v8, v8, 0x1

    goto :goto_ab

    .line 481
    .end local v8    # "i":I
    :cond_d7
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 483
    move-object v4, v1

    goto/16 :goto_5cf

    .line 486
    .end local v5    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v6    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_e5
    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_131

    .line 487
    invoke-virtual {v2}, Lcom/mediatek/ims/SuppSrvConfig;->isNeedIMSDereg()Z

    move-result v7

    if-eqz v7, :cond_131

    .line 488
    nop

    .line 489
    invoke-static {v13, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 488
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 491
    .local v7, "enable":Z
    invoke-static {v13, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    nop

    .line 494
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 496
    .local v9, "disableIMSDereg":Z
    if-eqz v7, :cond_12e

    if-nez v9, :cond_12e

    .line 497
    iget-object v8, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsInVoLteCall:Z
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$400(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Z

    move-result v8

    if-eqz v8, :cond_11a

    .line 498
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v5, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    const/4 v6, 0x1

    # setter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsNeedImsDereg:Z
    invoke-static {v5, v6}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$502(Lcom/mediatek/ims/legacy/ss/ImsUtStub;Z)Z

    goto :goto_131

    .line 501
    :cond_11a
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v5, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mImsService:Lcom/mediatek/ims/ImsService;
    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$600(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Lcom/mediatek/ims/ImsService;

    move-result-object v5

    iget-object v6, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 503
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I
    invoke-static {v6}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I

    move-result v6

    .line 502
    const/4 v8, 0x2

    invoke-virtual {v5, v6, v8}, Lcom/mediatek/ims/ImsService;->deregisterImsWithCause(II)V

    goto :goto_131

    .line 506
    :cond_12e
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "enable":Z
    .end local v9    # "disableIMSDereg":Z
    :cond_131
    :goto_131
    :pswitch_131
    iget-object v4, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    if-eqz v4, :cond_1c8

    .line 517
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 519
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_163

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "utConfigurationUpdated(): event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    goto :goto_1c5

    .line 527
    :cond_163
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v5, :cond_183

    .line 528
    iget-object v3, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/mediatek/simservs/xcap/XcapException;

    .line 529
    .local v3, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v5, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 530
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 529
    invoke-virtual {v5, v6, v7}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 531
    .end local v3    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_1c5

    :cond_183
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_1b2

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const v7, 0xf007

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1c5

    .line 539
    :cond_1b2
    const/4 v8, 0x0

    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x324

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 544
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :goto_1c5
    move-object v4, v1

    goto/16 :goto_5cf

    .line 516
    :cond_1c8
    move-object v4, v1

    goto/16 :goto_5cf

    .line 424
    :pswitch_1cb
    iget-object v4, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    if-eqz v4, :cond_278

    .line 425
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 427
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_213

    .line 428
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    .line 429
    .local v5, "result":[I
    if-eqz v5, :cond_20d

    .line 430
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UT GET CLIP/COLR/COLP result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    const/4 v6, 0x0

    aget v6, v5, v6

    invoke-direct {v3, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v3

    .line 432
    .local v3, "info":Landroid/telephony/ims/ImsSsInfo;
    iget-object v6, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v6}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v3}, Landroid/telephony/ims/ImsUtListener;->onLineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 434
    .end local v3    # "info":Landroid/telephony/ims/ImsSsInfo;
    goto :goto_212

    .line 435
    :cond_20d
    const-string v6, "UT GET CLIP/COLR/COLP: Something funny going on"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v5    # "result":[I
    :goto_212
    goto :goto_275

    .line 438
    :cond_213
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v5, :cond_233

    .line 439
    iget-object v3, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/mediatek/simservs/xcap/XcapException;

    .line 440
    .local v3, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v5, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 441
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 440
    invoke-virtual {v5, v6, v7}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 442
    .end local v3    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_275

    :cond_233
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_262

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const v7, 0xf007

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_275

    .line 450
    :cond_262
    const/4 v8, 0x0

    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x324

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 455
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :goto_275
    move-object v4, v1

    goto/16 :goto_5cf

    .line 424
    :cond_278
    move-object v4, v1

    goto/16 :goto_5cf

    .line 388
    :pswitch_27b
    iget-object v4, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    if-eqz v4, :cond_329

    .line 389
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 391
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2d3

    .line 392
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    .line 393
    .restart local v5    # "result":[I
    if-eqz v5, :cond_2cd

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2cd

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UT GET CLIR result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    const/4 v6, -0x1

    invoke-direct {v3, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const/4 v6, 0x0

    aget v6, v5, v6

    .line 397
    invoke-virtual {v3, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    const/4 v6, 0x1

    aget v6, v5, v6

    .line 398
    invoke-virtual {v3, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v3

    .line 399
    .local v3, "info":Landroid/telephony/ims/ImsSsInfo;
    iget-object v6, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v6}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v3}, Landroid/telephony/ims/ImsUtListener;->onLineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 401
    .end local v3    # "info":Landroid/telephony/ims/ImsSsInfo;
    goto :goto_2d2

    .line 402
    :cond_2cd
    const-string v6, "UT GET CLIR: Something funny going on"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v5    # "result":[I
    :goto_2d2
    goto :goto_326

    :cond_2d3
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_2f3

    .line 406
    const-string v5, "IMS_UT_EVENT_GET_CLIR: UnknownHostException."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const v7, 0xf007

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_326

    .line 410
    :cond_2f3
    iget-object v3, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v3, :cond_313

    .line 411
    iget-object v3, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/mediatek/simservs/xcap/XcapException;

    .line 412
    .local v3, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v5, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 413
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 412
    invoke-virtual {v5, v6, v7}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 414
    .end local v3    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_326

    .line 415
    :cond_313
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x324

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 419
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :goto_326
    move-object v4, v1

    goto/16 :goto_5cf

    .line 388
    :cond_329
    move-object v4, v1

    goto/16 :goto_5cf

    .line 356
    :pswitch_32c
    iget-object v4, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    if-eqz v4, :cond_3c9

    .line 357
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 359
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_373

    .line 360
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    .line 361
    .restart local v5    # "result":[I
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/telephony/ims/ImsSsInfo;

    .line 362
    .local v6, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v7, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v7}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 363
    aget-object v7, v6, v8

    aget v9, v5, v8

    iput v9, v7, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMS_UT_EVENT_GET_CW: status = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 370
    .end local v5    # "result":[I
    .end local v6    # "info":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_3c6

    :cond_373
    iget-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_393

    .line 372
    const-string v5, "IMS_UT_EVENT_GET_CW: UnknownHostException."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const v7, 0xf007

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3c6

    .line 376
    :cond_393
    iget-object v3, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v3, :cond_3b3

    .line 377
    iget-object v3, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/mediatek/simservs/xcap/XcapException;

    .line 378
    .restart local v3    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v5, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 379
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 378
    invoke-virtual {v5, v6, v7}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 380
    .end local v3    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_3c6

    .line 381
    :cond_3b3
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x324

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 385
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :goto_3c6
    move-object v4, v1

    goto/16 :goto_5cf

    .line 356
    :cond_3c9
    move-object v4, v1

    goto/16 :goto_5cf

    .line 289
    :pswitch_3cc
    iget-object v4, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    if-eqz v4, :cond_531

    .line 290
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 292
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v11, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_4d7

    .line 293
    iget-object v11, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 294
    .local v11, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v15, 0x0

    .line 296
    .local v15, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v11, :cond_479

    .line 297
    move-object/from16 v16, v15

    .end local v15    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    .local v16, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    array-length v15, v11

    new-array v15, v15, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 298
    .end local v16    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    .restart local v15    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/16 v16, 0x0

    move-object/from16 v17, v4

    move/from16 v4, v16

    .local v4, "i":I
    .local v17, "ar":Landroid/os/AsyncResult;
    :goto_3ee
    array-length v1, v11

    if-ge v4, v1, :cond_476

    .line 299
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-object/from16 v18, v8

    aget-object v8, v11, v4

    invoke-virtual {v1, v8}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v1

    aput-object v1, v15, v4

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] = , Condition: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v15, v4

    .line 302
    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Status: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    aget-object v8, v15, v4

    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v8

    if-nez v8, :cond_426

    const-string v8, "disabled"

    goto :goto_428

    :cond_426
    const-string v8, "enabled"

    :goto_428
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", ToA: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v15, v4

    .line 304
    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallForwardInfo;->getToA()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Service Class: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v15, v4

    .line 305
    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallForwardInfo;->getServiceClass()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Number="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v15, v4

    .line 306
    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Time (seconds): "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v15, v4

    .line 307
    invoke-virtual {v8}, Landroid/telephony/ims/ImsCallForwardInfo;->getTimeSeconds()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move-object/from16 v8, v18

    goto/16 :goto_3ee

    :cond_476
    move-object/from16 v18, v8

    goto :goto_47f

    .line 296
    .end local v17    # "ar":Landroid/os/AsyncResult;
    .local v4, "ar":Landroid/os/AsyncResult;
    :cond_479
    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object/from16 v16, v15

    .line 312
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .restart local v17    # "ar":Landroid/os/AsyncResult;
    :goto_47f
    invoke-virtual {v2}, Lcom/mediatek/ims/SuppSrvConfig;->isNeedIMSDereg()Z

    move-result v1

    if-eqz v1, :cond_4c9

    .line 313
    nop

    .line 314
    invoke-static {v13, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 316
    .local v1, "enable":Z
    invoke-static {v13, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    nop

    .line 319
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 320
    .local v4, "disableIMSDereg":Z
    if-eqz v1, :cond_4c4

    if-nez v4, :cond_4c4

    .line 321
    iget-object v7, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsInVoLteCall:Z
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$400(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Z

    move-result v7

    if-eqz v7, :cond_4b0

    .line 322
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mIsNeedImsDereg:Z
    invoke-static {v3, v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$502(Lcom/mediatek/ims/legacy/ss/ImsUtStub;Z)Z

    goto :goto_4c9

    .line 325
    :cond_4b0
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mImsService:Lcom/mediatek/ims/ImsService;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$600(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    iget-object v5, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 327
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I
    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I

    move-result v5

    .line 326
    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lcom/mediatek/ims/ImsService;->deregisterImsWithCause(II)V

    goto :goto_4c9

    .line 330
    :cond_4c4
    move-object/from16 v5, v18

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v1    # "enable":Z
    .end local v4    # "disableIMSDereg":Z
    :cond_4c9
    :goto_4c9
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    move-object/from16 v4, p1

    iget v3, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v15}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 335
    .end local v11    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v15    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_52f

    .line 336
    .end local v17    # "ar":Landroid/os/AsyncResult;
    .local v4, "ar":Landroid/os/AsyncResult;
    :cond_4d7
    move-object/from16 v17, v4

    move-object v4, v1

    .end local v4    # "ar":Landroid/os/AsyncResult;
    .restart local v17    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v1, v17

    .end local v17    # "ar":Landroid/os/AsyncResult;
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v5, :cond_4fc

    .line 337
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/mediatek/simservs/xcap/XcapException;

    .line 338
    .restart local v3    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v5, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v5

    iget v6, v4, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 339
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 338
    invoke-virtual {v5, v6, v7}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 340
    .end local v3    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_52f

    :cond_4fc
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_51c

    .line 342
    const-string v5, "IMS_UT_EVENT_GET_CF: UnknownHostException."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v4, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const v7, 0xf007

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_52f

    .line 348
    :cond_51c
    const/4 v8, 0x0

    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v4, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x324

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 353
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :goto_52f
    goto/16 :goto_5cf

    .line 289
    :cond_531
    move-object v4, v1

    goto/16 :goto_5cf

    .line 257
    :pswitch_534
    move-object v4, v1

    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_5cf

    .line 258
    iget-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 260
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_57c

    .line 261
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    .line 262
    .restart local v5    # "result":[I
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/telephony/ims/ImsSsInfo;

    .line 263
    .restart local v6    # "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v7, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v7}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 264
    aget-object v7, v6, v8

    aget v9, v5, v8

    iput v9, v7, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMS_UT_EVENT_GET_CB: status = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v7, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 271
    .end local v5    # "result":[I
    .end local v6    # "info":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_5cf

    :cond_57c
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_59c

    .line 273
    const-string v5, "IMS_UT_EVENT_GET_CB: UnknownHostException."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v4, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const v7, 0xf007

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_5cf

    .line 277
    :cond_59c
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v3, :cond_5bc

    .line 278
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/mediatek/simservs/xcap/XcapException;

    .line 279
    .restart local v3    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v5, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v5

    iget v6, v4, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 280
    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mPhoneId:I
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)I

    move-result v7

    invoke-static {v3, v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 279
    invoke-virtual {v5, v6, v7}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 281
    .end local v3    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_5cf

    .line 282
    :cond_5bc
    iget-object v3, v0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->mListener:Landroid/telephony/ims/ImsUtListener;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v5, v4, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x324

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 554
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_5cf
    :goto_5cf
    return-void

    :pswitch_data_5d0
    .packed-switch 0x3e8
        :pswitch_534
        :pswitch_3cc
        :pswitch_32c
        :pswitch_27b
        :pswitch_1cb
        :pswitch_1cb
        :pswitch_1cb
        :pswitch_83
        :pswitch_83
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_131
        :pswitch_70
    .end packed-switch
.end method
