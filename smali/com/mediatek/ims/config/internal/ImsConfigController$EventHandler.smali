.class Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;
.super Landroid/os/Handler;
.source "ImsConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigController;ILandroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;
    .param p2, "phoneId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 192
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 193
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    .line 195
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_8

    .line 389
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_IMS_CFG_CONFIG_LOADED phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    goto/16 :goto_8

    .line 370
    :pswitch_1
    goto/16 :goto_8

    .line 373
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 374
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 375
    .local v4, "value":[I
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v5, "intent":Landroid/content/Intent;
    aget v6, v4, v3

    const-string v7, "phone_id"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    aget v6, v4, v2

    const-string v7, "item"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    aget v6, v4, v1

    const-string v7, "value"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v6}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_IMS_CFG_FEATURE_CHANGED: phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v4, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " feature ="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v4, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v4, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "value":[I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    goto/16 :goto_8

    .line 358
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DYNAMIC_IMS_SWITCH_COMPLETE phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    goto/16 :goto_8

    .line 346
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigController;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    if-nez v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    .line 348
    invoke-static {v3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v1

    .line 347
    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$302(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigController;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigController;)Landroid/content/Context;

    move-result-object v1

    .line 352
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v3

    .line 351
    invoke-interface {v0, v1, v3, v2}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 354
    goto/16 :goto_8

    .line 307
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigController;)V

    .line 308
    goto/16 :goto_8

    .line 311
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 312
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;

    .line 315
    .local v4, "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    iget-object v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 316
    :try_start_0
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    .line 317
    iget v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->requestConfigNum:I

    new-array v2, v2, [I

    .line 318
    .local v2, "errorResult":[I
    nop

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_4

    .line 319
    const/4 v6, -0x1

    aput v6, v2, v3

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    .end local v3    # "i":I
    :cond_4
    iput-object v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    .line 323
    iput v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 324
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET_MDCFG_DONE, error ret, e="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    nop

    .end local v2    # "errorResult":[I
    goto :goto_2

    .line 326
    :cond_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 328
    .local v1, "resultStr":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, "resultStrArray":[Ljava/lang/String;
    array-length v7, v6

    new-array v7, v7, [I

    .line 330
    .local v7, "resultIntArray":[I
    nop

    .restart local v3    # "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_6

    .line 331
    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 333
    .end local v3    # "i":I
    :cond_6
    iput-object v7, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->resultArray:[I

    .line 335
    iput v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->configResult:I

    .line 337
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 338
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SET_MDCFG_DONE, finish set MD Ims config!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v1    # "resultStr":Ljava/lang/String;
    .end local v6    # "resultStrArray":[Ljava/lang/String;
    .end local v7    # "resultIntArray":[I
    :cond_7
    :goto_2
    iget-object v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 341
    monitor-exit v5

    .line 343
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    goto/16 :goto_8

    .line 341
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 288
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigController$MdConfigResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 289
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 291
    .local v4, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v5, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 292
    :try_start_1
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 293
    iput v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 294
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_IMS_GET_RESOURCE_DONE: error ret null, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 297
    :cond_8
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 298
    .local v1, "value":[I
    aget v3, v1, v3

    iput v3, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    .line 299
    iput v2, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 301
    .end local v1    # "value":[I
    :goto_3
    iget-object v1, v4, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 302
    monitor-exit v5

    .line 304
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_8

    .line 302
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_1
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 201
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 202
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 204
    .local v3, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v4, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 205
    :try_start_2
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_9

    .line 207
    iput v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 208
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_SET_FEATURE_DONE: error ret null, e="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 211
    :cond_9
    iput v2, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 213
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 214
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSG_IMS_SET_FEATURE_DONE: Finish set feature!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_a
    :goto_4
    iget-object v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit v4

    .line 219
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_8

    .line 217
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_2
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 222
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 223
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;

    .line 225
    .restart local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    iget-object v4, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 226
    :try_start_3
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_b

    .line 227
    iput v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 228
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_FEATURE_DONE: error ret null, e="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 231
    :cond_b
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    .line 232
    iput v2, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureResult:I

    .line 234
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 235
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_FEATURE_DONE: featureValue:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->featureValue:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_c
    :goto_5
    iget-object v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 239
    monitor-exit v4

    .line 241
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    goto/16 :goto_8

    .line 239
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :catchall_3
    move-exception v1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 267
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$FeatureResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 268
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    .line 270
    .local v3, "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v4, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 271
    :try_start_4
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_d

    .line 273
    iput v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 274
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_SET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 277
    :cond_d
    iput v2, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 279
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 280
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSG_IMS_SET_PROVISION_DONE: Finish set provision!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_e
    :goto_6
    iget-object v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 283
    monitor-exit v4

    .line 285
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    goto :goto_8

    .line 283
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :catchall_4
    move-exception v1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 244
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 245
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;

    .line 247
    .restart local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    iget-object v4, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 248
    :try_start_5
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_f

    .line 249
    iput v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 250
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 253
    :cond_f
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 255
    iput v2, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 257
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 258
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$EventHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->access$000(Lcom/mediatek/ims/config/internal/ImsConfigController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_IMS_GET_PROVISION_DONE: provisionInfo:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionInfo:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_10
    :goto_7
    iget-object v1, v3, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 262
    monitor-exit v4

    .line 264
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    nop

    .line 404
    :goto_8
    return-void

    .line 262
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v3    # "result":Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
    :catchall_5
    move-exception v1

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
