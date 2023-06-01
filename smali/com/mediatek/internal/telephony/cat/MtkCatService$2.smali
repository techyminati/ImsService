.class Lcom/mediatek/internal/telephony/cat/MtkCatService$2;
.super Landroid/content/BroadcastReceiver;
.source "MtkCatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/MtkCatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/MtkCatService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 997
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1001
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CatServiceReceiver action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    const-string v1, "com.mediatek.intent.action.IVSR_NOTIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "slot"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_55

    .line 1004
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$200(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v1

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_31

    .line 1006
    return-void

    .line 1009
    :cond_31
    const-string v1, "action"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    .local v1, "ivsrAction":Ljava/lang/String;
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1012
    const-string v2, "[IVSR set IVSR flag"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # setter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->isIvsrBootUp:Z
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$302(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z

    .line 1014
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    const/16 v3, 0xe

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->sendEmptyMessageDelayed(IJ)Z

    .line 1016
    .end local v1    # "ivsrAction":Ljava/lang/String;
    :cond_53
    goto/16 :goto_134

    :cond_55
    const-string v1, "mediatek.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[World phone flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$400(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDisplayTextDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$100(Lcom/mediatek/internal/telephony/cat/MtkCatService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    const/16 v2, 0xf

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->startTimeOut(IJ)V

    .line 1023
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # setter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z
    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$102(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z

    goto/16 :goto_134

    .line 1024
    :cond_95
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 1025
    const/4 v1, -0x1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1026
    .local v1, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM state change, id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", simId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$500(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$600(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v2

    if-ne v1, v2, :cond_134

    .line 1028
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    const-string v5, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I
    invoke-static {v2, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$702(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)I

    .line 1030
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # setter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->simIdfromIntent:I
    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$802(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)I

    .line 1031
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simIdfromIntent["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->simIdfromIntent:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$800(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "],simState["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    .line 1032
    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$700(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->simState:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$700(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v2

    if-ne v2, v3, :cond_134

    .line 1034
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$900(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 1035
    const-string v2, "Igonre absent sim state"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    return-void

    .line 1038
    :cond_127
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    iput-boolean v4, v2, Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSaveNewSetUpMenu:Z

    .line 1039
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$2;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$1000(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v3

    # invokes: Lcom/mediatek/internal/telephony/cat/MtkCatService;->handleDBHandler(I)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$1100(Lcom/mediatek/internal/telephony/cat/MtkCatService;I)V

    .line 1043
    .end local v1    # "id":I
    :cond_134
    :goto_134
    return-void
.end method
