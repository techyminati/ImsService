.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOp01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 327
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 333
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " sMajorSim:"

    const-string v4, " state: "

    const-string v5, "slotId: "

    const-string v6, "slot"

    const-string v7, "android.telephony.extra.SIM_STATE"

    const/4 v8, 0x0

    if-eqz v1, :cond_63

    .line 334
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 336
    .local v1, "state":I
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 337
    .local v6, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v7

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$102(I)I

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimApplicationStateChanged(II)V
    invoke-static {v3, v6, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;II)V

    goto/16 :goto_1e6

    .line 340
    .end local v1    # "state":I
    .end local v6    # "slotId":I
    :cond_63
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 341
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 343
    .restart local v1    # "state":I
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 344
    .restart local v6    # "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v7

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$102(I)I

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimCardStateChanged(II)V
    invoke-static {v3, v6, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;II)V

    goto/16 :goto_1e6

    .line 347
    .end local v1    # "state":I
    .end local v6    # "slotId":I
    :cond_a3
    const-string v1, "mediatek.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eqz v1, :cond_10b

    .line 348
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$400()I

    move-result v1

    const/16 v7, 0x64

    if-ne v1, v7, :cond_dd

    .line 349
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 350
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$500()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 352
    const-string v1, "Reload to FDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1e6

    .line 354
    :cond_cd
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$500()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {v1, v6}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 356
    const-string v1, "Reload to WG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1e6

    .line 358
    :cond_dd
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$400()I

    move-result v1

    const/16 v4, 0x65

    if-ne v1, v4, :cond_1e6

    .line 359
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 360
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$500()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 362
    const-string v1, "Reload to TDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1e6

    .line 364
    :cond_fb
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$500()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/mediatek/internal/telephony/MtkRIL;I)V

    .line 366
    const-string v1, "Reload to TG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1e6

    .line 369
    :cond_10b
    const-string v1, "mediatek.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_144

    .line 370
    const-string v1, "mdType"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 372
    .local v1, "toModem":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toModem: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 373
    if-eq v1, v6, :cond_13d

    if-eq v1, v5, :cond_13d

    if-eq v1, v4, :cond_13d

    if-ne v1, v3, :cond_137

    goto :goto_13d

    .line 379
    :cond_137
    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-virtual {v3, v7, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->setModemSelectionMode(II)V

    goto :goto_142

    .line 377
    :cond_13d
    :goto_13d
    iget-object v3, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-virtual {v3, v8, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->setModemSelectionMode(II)V

    .line 381
    .end local v1    # "toModem":I
    :goto_142
    goto/16 :goto_1e6

    :cond_144
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_188

    .line 382
    const-string v1, "state"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_16f

    .line 383
    const-string v1, "Leave flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 384
    const/4 v1, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15e
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$700()I

    move-result v3

    if-ge v1, v3, :cond_16d

    .line 386
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$800()[Z

    move-result-object v3

    aput-boolean v8, v3, v1

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_15e

    .end local v1    # "i":I
    :cond_16d
    goto/16 :goto_1e6

    .line 389
    :cond_16f
    const-string v1, "Enter flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_175
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$700()I

    move-result v3

    if-ge v1, v3, :cond_184

    .line 391
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$900()[Z

    move-result-object v3

    aput-boolean v7, v3, v1

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_175

    .line 393
    .end local v1    # "i":I
    :cond_184
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1002(I)I

    goto :goto_1e6

    .line 395
    :cond_188
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 397
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$102(I)I

    .line 398
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isSimSwitching()Z

    move-result v1

    if-ne v1, v7, :cond_1a7

    .line 399
    invoke-static {v8}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->setSimSwitchingFlag(Z)V

    .line 400
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getToModemType()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->setActiveModemType(I)V

    .line 403
    :cond_1a7
    iget-object v1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    goto :goto_1e6

    .line 405
    :cond_1ad
    const-string v1, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e6

    .line 406
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 407
    .local v1, "sapState":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1c7

    .line 408
    const-string v3, "BT_SAP connection state is CONNECTED"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 409
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sBtSapState:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1202(I)I

    goto :goto_1e6

    .line 410
    :cond_1c7
    if-nez v1, :cond_1d2

    .line 411
    const-string v3, "BT_SAP connection state is DISCONNECTED"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 412
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sBtSapState:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1202(I)I

    goto :goto_1e6

    .line 414
    :cond_1d2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT_SAP connection state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 417
    .end local v1    # "sapState":I
    :cond_1e6
    :goto_1e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 418
    return-void
.end method
