.class Lcom/mediatek/omadm/OmadmServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "OmadmServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omadm/OmadmServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omadm/OmadmServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/omadm/OmadmServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 449
    iput-object p1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$1;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 452
    const-string v0, "OmadmServiceImpl"

    const-string v1, "BroadcastReceiver::onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "action":Ljava/lang/String;
    monitor-enter p0

    .line 455
    :try_start_c
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$1;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    invoke-static {v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$000(Lcom/mediatek/omadm/OmadmServiceImpl;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    move-result-object v1

    if-eqz v1, :cond_cd

    .line 456
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$1;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    # invokes: Lcom/mediatek/omadm/OmadmServiceImpl;->isOmadmWapPush(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$100(Lcom/mediatek/omadm/OmadmServiceImpl;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 457
    sget-boolean v1, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_2f

    const-string v1, "OmadmServiceImpl"

    const-string v2, "WAP PUSH received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_2f
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$1;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->checkOmadmWapPush(Landroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lcom/mediatek/omadm/OmadmServiceImpl$1;->abortBroadcast()V

    goto/16 :goto_cd

    .line 460
    :cond_39
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 461
    sget-boolean v1, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_4c

    const-string v1, "OmadmServiceImpl"

    const-string v2, "DATA SMS received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_4c
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$1;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->checkDataSms(Landroid/content/Intent;)V

    goto/16 :goto_cd

    .line 463
    :cond_53
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 464
    sget-boolean v1, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_66

    const-string v1, "OmadmServiceImpl"

    const-string v2, "DATA SMS received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_66
    iget-object v1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$1;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1, p2}, Lcom/mediatek/omadm/OmadmServiceImpl;->checkDataSms(Landroid/content/Intent;)V

    goto :goto_cd

    .line 466
    :cond_6c
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 467
    const-string v1, "OmadmServiceImpl"

    const-string v2, "ACTION_BOOT_COMPLETED received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 470
    :cond_7c
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 471
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "state":Ljava/lang/String;
    const-string v2, "OmadmServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM_STATE_CHANGED received, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$1;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mFactoyMode:I
    invoke-static {v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$200(Lcom/mediatek/omadm/OmadmServiceImpl;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_cd

    .line 474
    const-string v2, "OmadmServiceImpl"

    const-string v3, "SIM_STATE_CHANGED Loaded & is factory mode check APN NVsettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_c .. :try_end_b8} :catchall_cf

    .line 477
    :try_start_b8
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$1;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mOmadmProxy:Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;
    invoke-static {v2}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$000(Lcom/mediatek/omadm/OmadmServiceImpl;)Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Lvendor/mediatek/hardware/omadm/V1_0/IOmadm;->writeInt(I)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c2} :catch_c3
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_cf

    .line 480
    goto :goto_c7

    .line 478
    :catch_c3
    move-exception v2

    .line 479
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_c7
    iget-object v2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$1;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    const/4 v3, 0x0

    # setter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mFactoyMode:I
    invoke-static {v2, v3}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$202(Lcom/mediatek/omadm/OmadmServiceImpl;I)I

    .line 485
    .end local v1    # "state":Ljava/lang/String;
    :cond_cd
    :goto_cd
    monitor-exit p0

    .line 486
    return-void

    .line 485
    :catchall_cf
    move-exception v1

    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_cf

    throw v1
.end method
