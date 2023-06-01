.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;
.super Landroid/os/Handler;
.source "MtkDcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 256
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    rem-int/lit8 v0, v0, 0xa

    .line 262
    .local v0, "phoneId":I
    iget v1, p1, Landroid/os/Message;->what:I

    sub-int/2addr v1, v0

    .line 263
    .local v1, "eventId":I
    const/4 v2, -0x1

    .line 265
    .local v2, "restCallingPhoneId":I
    const-string v3, ", callingPhoneSize="

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_23a

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message with number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    goto/16 :goto_239

    .line 331
    :sswitch_27
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 332
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v6, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    .line 333
    .local v6, "callAdditionalInfo":[Ljava/lang/String;
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 334
    .local v7, "type":I
    const/4 v8, 0x4

    if-ne v7, v8, :cond_239

    .line 335
    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 336
    .local v8, "mtCallRq":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z
    invoke-static {v9}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z

    move-result-object v9

    if-ne v8, v5, :cond_47

    move v4, v5

    :cond_47
    aput-boolean v4, v9, v0

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MT_CALL_RQ, phoneId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mtCallRq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mGwsdDualSimStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 339
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z

    move-result-object v5

    aget-boolean v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 340
    .end local v8    # "mtCallRq":I
    goto/16 :goto_239

    .line 343
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "callAdditionalInfo":[Ljava/lang/String;
    .end local v7    # "type":I
    :sswitch_77
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isInCallStatusInternal()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z

    move-result v3

    if-eqz v3, :cond_239

    .line 344
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsPhoneOffhook:Z
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$002(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Z)Z

    .line 345
    const-string v3, "Voice Call OffHook, re-evaluate call start"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->onVoiceCallStarted()V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    goto/16 :goto_239

    .line 312
    :sswitch_90
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 313
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    if-eqz v3, :cond_239

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_239

    .line 314
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    iget-object v6, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I
    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$202(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;I)I

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDsdaMode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$200(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isInCallStatusInternal()Z
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$900(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 317
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ca
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    iget v6, v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhoneNum:I

    if-ge v4, v6, :cond_e2

    .line 318
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, v4

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    .line 320
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->onDsdaStateChanged()V

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_ca

    .line 324
    .end local v4    # "i":I
    :cond_e2
    invoke-static {}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getInstance()Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    move-result-object v4

    .line 325
    .local v4, "mSmartDataSwitchAssistant":Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    if-eqz v4, :cond_eb

    .line 326
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onDsdaStateChanged()V

    .line 328
    .end local v4    # "mSmartDataSwitchAssistant":Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    :cond_eb
    goto/16 :goto_239

    .line 281
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :sswitch_ed
    const-string v5, "Got \'no CS calls after SRVCC\' notification, tunnel it to VOICE_CALL_END"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 282
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    sget-object v6, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$502(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Lcom/android/internal/telephony/Call$SrvccState;)Lcom/android/internal/telephony/Call$SrvccState;

    .line 283
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v5

    .line 284
    .local v5, "phoneSwitcher":Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    if-eqz v5, :cond_104

    .line 285
    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->sendEmptyMessage(I)Z

    .line 288
    :cond_104
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsPhoneOffhook:Z
    invoke-static {v6, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$002(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Z)Z

    .line 289
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice Call Ended(no cs), phoneId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 291
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->onVoiceCallEnded()V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    .line 293
    goto/16 :goto_239

    .line 295
    .end local v5    # "phoneSwitcher":Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    :sswitch_142
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mIsPhoneOffhook:Z
    invoke-static {v5, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$002(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Z)Z

    .line 296
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 297
    .local v4, "ar":Landroid/os/AsyncResult;
    if-eqz v4, :cond_15b

    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_15b

    .line 298
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/Call$SrvccState;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$502(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Lcom/android/internal/telephony/Call$SrvccState;)Lcom/android/internal/telephony/Call$SrvccState;

    goto :goto_162

    .line 300
    :cond_15b
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    sget-object v6, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$502(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;Lcom/android/internal/telephony/Call$SrvccState;)Lcom/android/internal/telephony/Call$SrvccState;

    .line 302
    :goto_162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSrvccState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Lcom/android/internal/telephony/Call$SrvccState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 303
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->isInSRVCC()Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Z

    move-result v5

    if-nez v5, :cond_239

    .line 304
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice Call Ended, phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 306
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->onVoiceCallEnded()V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    goto/16 :goto_239

    .line 274
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_1bd
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voice Call Started, phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mSrvccState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Lcom/android/internal/telephony/Call$SrvccState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 277
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mCallingPhoneIdList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->onVoiceCallStarted()V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)V

    .line 279
    goto :goto_239

    .line 267
    :sswitch_210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_PHONE"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_RADIO_UNAVAILABLE"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->logd(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    const/16 v5, 0x1a4

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mDsdaMode:I
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$202(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;I)I

    .line 269
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$3;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->mGwsdDualSimStatusArray:[Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;)[Z

    move-result-object v3

    aput-boolean v4, v3, v0

    .line 270
    nop

    .line 353
    :cond_239
    :goto_239
    return-void

    :sswitch_data_23a
    .sparse-switch
        0xa -> :sswitch_210
        0x14 -> :sswitch_1bd
        0x1e -> :sswitch_142
        0x28 -> :sswitch_ed
        0x32 -> :sswitch_90
        0x3c -> :sswitch_77
        0x46 -> :sswitch_27
    .end sparse-switch
.end method
