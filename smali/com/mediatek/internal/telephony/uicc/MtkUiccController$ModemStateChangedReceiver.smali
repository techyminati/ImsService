.class Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtkUiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModemStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;)V
    .registers 2

    .line 835
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;Lcom/mediatek/internal/telephony/uicc/MtkUiccController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccController;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/uicc/MtkUiccController$1;

    .line 835
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 837
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mediatek.intent.action.MODEM_POWER_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 839
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->access$100(Lcom/mediatek/internal/telephony/uicc/MtkUiccController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_40

    .line 840
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 841
    .local v2, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 842
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->sendMessage(Landroid/os/Message;)Z

    .line 843
    iget-object v4, p0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController$ModemStateChangedReceiver;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trigger GET_SIM_STATUS due to modem state changed for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;->mtkLog(Ljava/lang/String;)V

    .line 839
    .end local v2    # "index":Ljava/lang/Integer;
    .end local v3    # "msg":Landroid/os/Message;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 846
    .end local v1    # "i":I
    :cond_40
    return-void
.end method
