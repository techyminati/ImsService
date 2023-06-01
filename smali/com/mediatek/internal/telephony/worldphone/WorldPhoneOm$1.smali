.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 347
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 353
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " sMajorSim:"

    const-string v3, "slot"

    const-string v4, "android.telephony.extra.SIM_STATE"

    const/4 v5, 0x0

    if-eqz v1, :cond_6f

    .line 354
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 356
    .local v1, "state":I
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 357
    .local v3, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v4

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "sSimLockedSlotId:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSimLockedSlotId:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$200()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimApplicationStateChanged(II)V
    invoke-static {v2, v3, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;II)V

    goto/16 :goto_210

    .line 361
    .end local v1    # "state":I
    .end local v3    # "slotId":I
    :cond_6f
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 362
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 364
    .restart local v1    # "state":I
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 365
    .restart local v3    # "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v4

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimCardStateChanged(II)V
    invoke-static {v2, v3, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;II)V

    goto/16 :goto_210

    .line 368
    .end local v1    # "state":I
    .end local v3    # "slotId":I
    :cond_b3
    const-string v1, "mediatek.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v6, 0x3

    if-eqz v1, :cond_11b

    .line 369
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()I

    move-result v1

    const/16 v7, 0x64

    if-ne v1, v7, :cond_ed

    .line 370
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 371
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$600()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 373
    const-string v1, "Reload to FDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_210

    .line 375
    :cond_dd
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$600()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1, v6}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 377
    const-string v1, "Reload to WG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_210

    .line 379
    :cond_ed
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()I

    move-result v1

    const/16 v3, 0x65

    if-ne v1, v3, :cond_210

    .line 380
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 381
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$600()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 383
    const-string v1, "Reload to TDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_210

    .line 385
    :cond_10b
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$600()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 387
    const-string v1, "Reload to TG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_210

    .line 390
    :cond_11b
    const-string v1, "mediatek.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_154

    .line 391
    const-string v1, "mdType"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 393
    .local v1, "toModem":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toModem: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 394
    if-eq v1, v6, :cond_14d

    if-eq v1, v4, :cond_14d

    if-eq v1, v3, :cond_14d

    if-ne v1, v2, :cond_147

    goto :goto_14d

    .line 400
    :cond_147
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-virtual {v2, v7, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto :goto_152

    .line 398
    :cond_14d
    :goto_14d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-virtual {v2, v5, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    .line 402
    .end local v1    # "toModem":I
    :goto_152
    goto/16 :goto_210

    :cond_154
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 403
    const-string v1, "state"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 404
    const-string v1, "Leave flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 405
    const/4 v1, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16e
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$800()I

    move-result v2

    if-ge v1, v2, :cond_17d

    .line 407
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$900()[Z

    move-result-object v2

    aput-boolean v5, v2, v1

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_16e

    .end local v1    # "i":I
    :cond_17d
    goto/16 :goto_210

    .line 410
    :cond_17f
    const-string v1, "Enter flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 411
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_185
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$800()I

    move-result v2

    if-ge v1, v2, :cond_194

    .line 412
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1000()[Z

    move-result-object v2

    aput-boolean v7, v2, v1

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_185

    .end local v1    # "i":I
    :cond_194
    goto/16 :goto_210

    .line 415
    :cond_196
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bb

    .line 417
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    .line 418
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v1

    if-ne v1, v7, :cond_1b5

    .line 419
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->setSimSwitchingFlag(Z)V

    .line 420
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->setActiveModemType(I)V

    .line 423
    :cond_1b5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto :goto_210

    .line 424
    :cond_1bb
    const-string v1, "mediatek.intent.action.ACTION_TEST_WORLDPHOE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d5

    .line 425
    const-string v1, "FAKE_USER_TYPE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 426
    .local v1, "fakeUserType":I
    const-string v2, "EXTRA_FAKE_REGION"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 427
    .local v2, "fakeRegion":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleWorldPhoneTest(II)V
    invoke-static {v3, v1, v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;II)V

    .end local v1    # "fakeUserType":I
    .end local v2    # "fakeRegion":I
    goto :goto_20f

    .line 428
    :cond_1d5
    const-string v1, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20f

    .line 429
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 430
    .local v1, "sapState":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1ef

    .line 431
    const-string v2, "BT_SAP connection state is CONNECTED"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 432
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1302(I)I

    goto :goto_210

    .line 433
    :cond_1ef
    if-nez v1, :cond_1fa

    .line 434
    const-string v2, "BT_SAP connection state is DISCONNECTED"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 435
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1302(I)I

    goto :goto_210

    .line 437
    :cond_1fa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT_SAP connection state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_210

    .line 428
    .end local v1    # "sapState":I
    :cond_20f
    :goto_20f
    nop

    .line 440
    :cond_210
    :goto_210
    return-void
.end method
