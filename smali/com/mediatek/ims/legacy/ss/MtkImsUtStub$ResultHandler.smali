.class Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;
.super Landroid/os/Handler;
.source "MtkImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 297
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 298
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 299
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(): event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 305
    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$000(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, "MtkImsUtService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$100(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    .line 309
    .local v0, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "UnknownHostException. event = "

    const-string v4, "utConfigurationUpdated(): event = "

    const v5, 0xf007

    const/16 v6, 0x324

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_2ce

    .line 453
    :pswitch_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2cc

    .line 413
    :pswitch_61
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$000(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_2cc

    .line 414
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 416
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b8

    .line 417
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 418
    .local v3, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .line 420
    .local v4, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v3, :cond_ae

    .line 421
    array-length v5, v3

    new-array v4, v5, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 422
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7c
    array-length v6, v3

    if-ge v5, v6, :cond_ae

    .line 424
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS_UT_EVENT_GET_CF_WITH_CLASS: cfInfo["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v6}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v6

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v6

    aput-object v6, v4, v5

    .line 422
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 431
    .end local v5    # "i":I
    :cond_ae
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationCallForwardQueried(Landroid/os/Message;[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 432
    .end local v3    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_103

    .line 433
    :cond_b8
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v3, :cond_db

    .line 434
    iget-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/mediatek/simservs/xcap/XcapException;

    .line 435
    .local v1, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 436
    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 435
    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 437
    .end local v1    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_103

    :cond_db
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_f5

    .line 439
    const-string v3, "IMS_UT_EVENT_GET_CF_WITH_CLASS: UnknownHostException."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v5, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_103

    .line 445
    :cond_f5
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 450
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :goto_103
    goto/16 :goto_2cc

    .line 385
    :pswitch_105
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$000(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_2cc

    .line 386
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 388
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_133

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_18d

    .line 395
    :cond_133
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_156

    .line 396
    iget-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/mediatek/simservs/xcap/XcapException;

    .line 397
    .restart local v1    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 398
    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 397
    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 399
    .end local v1    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_18d

    :cond_156
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_17f

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v5, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_18d

    .line 406
    :cond_17f
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 410
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :goto_18d
    goto/16 :goto_2cc

    .line 311
    :pswitch_18f
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$000(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_2cc

    .line 312
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 314
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1bd

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_217

    .line 321
    :cond_1bd
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_1e0

    .line 322
    iget-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/mediatek/simservs/xcap/XcapException;

    .line 323
    .restart local v1    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 324
    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 323
    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 325
    .end local v1    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_217

    :cond_1e0
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_209

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v5, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_217

    .line 332
    :cond_209
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 336
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :goto_217
    goto/16 :goto_2cc

    .line 339
    :pswitch_219
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;
    invoke-static {v2}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$000(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_2cc

    .line 340
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 342
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_281

    .line 343
    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 344
    .local v1, "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v3, 0x0

    .line 346
    .local v3, "imsCfInfo":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    if-eqz v1, :cond_275

    .line 347
    array-length v4, v1

    new-array v3, v4, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 348
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_234
    array-length v5, v1

    if-ge v4, v5, :cond_275

    .line 349
    new-instance v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;

    invoke-direct {v5}, Lcom/mediatek/ims/MtkImsCallForwardInfo;-><init>()V

    .line 351
    .local v5, "info":Lcom/mediatek/ims/MtkImsCallForwardInfo;
    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 352
    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v6}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v6

    aget-object v7, v1, v4

    iget v7, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getConditionFromCFReason(I)I

    move-result v6

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    .line 353
    aget-object v6, v1, v4

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    .line 354
    aget-object v6, v1, v4

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    .line 355
    aget-object v6, v1, v4

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    .line 356
    aget-object v6, v1, v4

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    iput-object v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 357
    aget-object v6, v1, v4

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    .line 358
    aget-object v6, v1, v4

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    iput-object v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    .line 359
    aput-object v5, v3, v4

    .line 348
    .end local v5    # "info":Lcom/mediatek/ims/MtkImsCallForwardInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_234

    .line 363
    .end local v4    # "i":I
    :cond_275
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mListener:Lcom/mediatek/ims/feature/MtkImsUtListener;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$000(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/ims/feature/MtkImsUtListener;->onUtConfigurationCallForwardInTimeSlotQueried(I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V

    .line 365
    .end local v1    # "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v3    # "imsCfInfo":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    goto :goto_2cc

    .line 366
    :cond_281
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v3, :cond_2a4

    .line 367
    iget-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/mediatek/simservs/xcap/XcapException;

    .line 368
    .local v1, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v3}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    .line 369
    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mPhoneId:I
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$300(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 368
    invoke-virtual {v3, p1, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 370
    .end local v1    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_2cc

    :cond_2a4
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_2be

    .line 372
    const-string v3, "IMS_UT_EVENT_GET_CF_TIME_SLOT: UnknownHostException."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v5, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2cc

    .line 378
    :cond_2be
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub$ResultHandler;->this$0:Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    # getter for: Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->mImsUtStub:Lcom/mediatek/ims/legacy/ss/ImsUtStub;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->access$200(Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v6, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 456
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_2cc
    :goto_2cc
    return-void

    nop

    :pswitch_data_2ce
    .packed-switch 0x4b0
        :pswitch_219
        :pswitch_18f
        :pswitch_105
        :pswitch_49
        :pswitch_61
    .end packed-switch
.end method
