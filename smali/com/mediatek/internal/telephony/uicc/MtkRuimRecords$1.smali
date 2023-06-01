.class Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkRuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 147
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "phone"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_96

    .line 155
    const/4 v1, -0x1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 156
    .local v2, "phoneId":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onReceive] ACTION_RADIO_TECHNOLOGY_CHANGED phoneId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Ljava/lang/String;)V

    .line 157
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$100(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    if-eqz v5, :cond_94

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$200(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v5

    if-ne v5, v2, :cond_94

    .line 158
    const-string v5, "phoneName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "activePhoneName":Ljava/lang/String;
    const-string v6, "subscription"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 160
    .local v1, "subId":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onReceive] ACTION_RADIO_TECHNOLOGY_CHANGED activePhoneName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", subId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", phoneId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Ljava/lang/String;)V

    .line 162
    const-string v6, "CDMA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 163
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V
    invoke-static {v6, v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$300(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;ZZ)V

    .line 164
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    const/16 v4, 0x1f7

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 166
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$400(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 169
    .end local v1    # "subId":I
    .end local v2    # "phoneId":I
    .end local v5    # "activePhoneName":Ljava/lang/String;
    :cond_94
    goto/16 :goto_1f9

    :cond_96
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 170
    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$500(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_d9

    .line 173
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onReceive] onReceive ACTION_SUBINFO_RECORD_UPDATED mPhbWaitSub: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 174
    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$600(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$600(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v1

    if-ne v1, v3, :cond_1f9

    .line 176
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # setter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z
    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$602(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z

    .line 177
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v2

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V
    invoke-static {v1, v2, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$300(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;ZZ)V

    .line 178
    return-void

    .line 180
    :cond_d9
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 181
    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$800(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_1b9

    .line 182
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, "id":I
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "simState":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$900(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)I

    move-result v5

    if-ne v1, v5, :cond_1f8

    .line 185
    const/4 v5, 0x0

    .line 186
    .local v5, "strPhbReady":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$1000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->isUsingGsmPhbReady(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v6

    const-string v7, "false"

    if-eqz v6, :cond_117

    .line 187
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I
    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$900(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)I

    move-result v6

    const-string v8, "vendor.gsm.sim.ril.phbready"

    invoke-static {v6, v8, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_123

    .line 190
    :cond_117
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhoneId:I
    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$900(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)I

    move-result v6

    const-string v8, "vendor.cdma.sim.ril.phbready"

    invoke-static {v6, v8, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    :goto_123
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sim state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mPhbReady: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",strPhbReady: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v8, "true"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Ljava/lang/String;)V

    .line 196
    const-string v6, "READY"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f8

    .line 197
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v6

    if-nez v6, :cond_17b

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 198
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # setter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z
    invoke-static {v6, v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$702(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z

    .line 199
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v6

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V
    invoke-static {v3, v6, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$300(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;ZZ)V

    goto/16 :goto_1f8

    .line 200
    :cond_17b
    iget-object v6, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$600(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v6

    if-ne v3, v6, :cond_1f8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 201
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPhbWaitSub is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z
    invoke-static {v7}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$600(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", broadcast if need"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Ljava/lang/String;)V

    .line 202
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # setter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbWaitSub:Z
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$602(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z

    .line 203
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPhbReady:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$700(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v6

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V
    invoke-static {v3, v6, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$300(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;ZZ)V

    goto :goto_1f8

    .line 207
    .end local v1    # "id":I
    .end local v2    # "simState":Ljava/lang/String;
    .end local v5    # "strPhbReady":Ljava/lang/String;
    :cond_1b9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    .line 208
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] ACTION_BOOT_COMPLETED mPendingPhbNotify : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    .line 209
    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$1100(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mtkLogd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$000(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$1100(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    .line 211
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isPhbReady()Z

    move-result v2

    # invokes: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->broadcastPhbStateChangedIntent(ZZ)V
    invoke-static {v1, v2, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$300(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;ZZ)V

    .line 212
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    # setter for: Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->mPendingPhbNotify:Z
    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->access$1102(Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;Z)Z

    goto :goto_1f9

    .line 207
    :cond_1f8
    :goto_1f8
    nop

    .line 215
    :cond_1f9
    :goto_1f9
    return-void
.end method
