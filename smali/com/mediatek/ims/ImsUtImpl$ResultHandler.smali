.class Lcom/mediatek/ims/ImsUtImpl$ResultHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsUtImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 192
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 193
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 199
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

    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 200
    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "ImsUtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x4b0

    const/16 v3, 0x324

    const/4 v4, 0x0

    if-eq v0, v2, :cond_12

    const/16 v2, 0x4b1

    const-string v5, "utConfigurationUpdated(): event = "

    if-eq v0, v2, :cond_f

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 345
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 347
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 349
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 350
    .local v3, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_1

    array-length v4, v2

    if-eqz v4, :cond_1

    .line 351
    array-length v4, v2

    new-array v3, v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 352
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 353
    iget-object v5, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    aget-object v6, v2, v4

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsUtImpl;->access$400(Lcom/mediatek/ims/ImsUtImpl;Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v5

    aput-object v5, v3, v4

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_SET_CF: cfInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = , Condition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    .line 356
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "disabled"

    goto :goto_1

    :cond_0
    const-string v6, "enabled"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ToA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    .line 358
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getToA()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Service Class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    .line 359
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getServiceClass()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    .line 360
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/ims/ImsUtImpl;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Time (seconds): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    .line 361
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getTimeSeconds()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 366
    .end local v4    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 368
    goto/16 :goto_12

    .line 379
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 380
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 381
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    goto :goto_3

    .line 391
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_4

    .line 392
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 393
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 392
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_2

    .line 395
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 398
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 400
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_3
    goto/16 :goto_12

    .line 313
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 314
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 315
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 317
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 318
    .local v1, "result":[I
    new-instance v2, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 319
    .local v2, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    aget v3, v1, v4

    iput v3, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 320
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v3, "info":Landroid/os/Bundle;
    const-string v4, "imsSsInfo"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 323
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v4}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 324
    .end local v1    # "result":[I
    .end local v2    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v3    # "info":Landroid/os/Bundle;
    goto :goto_5

    .line 327
    :cond_5
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_6

    .line 328
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 329
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 328
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_4

    .line 331
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_6
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 334
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 336
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_5
    goto/16 :goto_12

    .line 287
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 289
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 291
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 292
    .local v1, "result":[I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v2, "info":Landroid/os/Bundle;
    const-string v3, "queryClir"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 295
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 296
    .end local v1    # "result":[I
    .end local v2    # "info":Landroid/os/Bundle;
    goto :goto_7

    .line 299
    :cond_7
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_8

    .line 300
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 301
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 300
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_6

    .line 303
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_8
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 306
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_6
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 308
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_7
    goto/16 :goto_12

    .line 258
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 259
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 260
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_9

    .line 262
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 263
    .local v3, "result":[I
    new-array v2, v2, [Landroid/telephony/ims/ImsSsInfo;

    .line 264
    .local v2, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v5, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v5, v2, v4

    .line 265
    aget-object v5, v2, v4

    aget v6, v3, v4

    iput v6, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_GET_CW: status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v3, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 272
    .end local v2    # "info":[Landroid/telephony/ims/ImsSsInfo;
    .end local v3    # "result":[I
    goto :goto_9

    .line 275
    :cond_9
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_a

    .line 276
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 277
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 276
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_8

    .line 279
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_a
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 282
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_8
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 284
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_9
    goto/16 :goto_12

    .line 235
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_b

    .line 239
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 240
    .local v1, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$300(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mediatek/ims/plugin/ImsSSExtPlugin;->getImsCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v2

    .line 242
    .local v2, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 243
    .end local v1    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_b

    .line 246
    :cond_b
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_c

    .line 247
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 248
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 247
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_a

    .line 250
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_c
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 253
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_a
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 255
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_b
    goto/16 :goto_12

    .line 205
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 206
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_d

    .line 210
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 211
    .restart local v3    # "result":[I
    new-array v2, v2, [Landroid/telephony/ims/ImsSsInfo;

    .line 212
    .local v2, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v5, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v5, v2, v4

    .line 213
    aget-object v5, v2, v4

    aget v6, v3, v4

    iput v6, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_GET_CB: status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v3, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 220
    .end local v2    # "info":[Landroid/telephony/ims/ImsSsInfo;
    .end local v3    # "result":[I
    goto :goto_d

    .line 223
    :cond_d
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_e

    .line 224
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 225
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 224
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_c

    .line 227
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_e
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 230
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_c
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 232
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_d
    goto/16 :goto_12

    .line 440
    :cond_f
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 441
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 442
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_f

    .line 449
    :cond_10
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_11

    .line 450
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 451
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 450
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_e

    .line 453
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_11
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 455
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_e
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-virtual {v2, p1, v1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 457
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_f
    goto/16 :goto_12

    .line 404
    :cond_12
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 405
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 406
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    .line 407
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 408
    .local v1, "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v2, 0x0

    .line 410
    .local v2, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v1, :cond_13

    .line 411
    array-length v3, v1

    new-array v2, v3, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 412
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_13

    .line 414
    new-instance v4, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 415
    .local v4, "info":Landroid/telephony/ims/ImsCallForwardInfo;
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 416
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 417
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 418
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 419
    aget-object v5, v1, v3

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 420
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 421
    aput-object v4, v2, v3

    .line 412
    .end local v4    # "info":Landroid/telephony/ims/ImsCallForwardInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 425
    .end local v3    # "i":I
    :cond_13
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 426
    .end local v1    # "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v2    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_12

    .line 428
    :cond_14
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_15

    .line 429
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 430
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 429
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_11

    .line 432
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_15
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 435
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_11
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 464
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_16
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
