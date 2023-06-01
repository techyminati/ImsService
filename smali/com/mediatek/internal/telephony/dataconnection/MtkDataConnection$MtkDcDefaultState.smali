.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;
.super Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkDcDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 2

    .line 924
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$1;

    .line 924
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .line 927
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->enter()V

    .line 931
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 932
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 933
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 934
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasRaCapability()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 935
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->registerNetworkAlertObserver()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$400(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 938
    :cond_2f
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 939
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->DBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 941
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState: register for intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mActionRetry:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 943
    :cond_5f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$600(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIntentReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 945
    return-void
.end method

.method public exit()V
    .registers 3

    .line 948
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->exit()V

    .line 952
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 953
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 954
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mTelDevController:Lcom/android/internal/telephony/TelephonyDevController;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$300(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/TelephonyDevController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    .line 955
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->hasRaCapability()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 956
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->unregisterNetworkAlertObserver()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$700(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V

    .line 958
    :cond_2f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$800(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIntentReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$500(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 960
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 964
    const/4 v0, 0x1

    .line 966
    .local v0, "retVal":Z
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 967
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefault msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " RefCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 968
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mApnContexts:Ljava/util/Map;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 967
    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 970
    :cond_37
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_9e

    .line 1001
    :pswitch_3c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_9c

    .line 990
    :pswitch_41
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 991
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v2, "DcDefaultState: ignore EVENT_IPV6_ADDRESS_UPDATED not in ActiveState"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_9c

    .line 996
    :pswitch_4f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_57

    const/4 v2, 0x1

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    # setter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->mIsInVoiceCall:Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1302(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Z)Z

    .line 997
    goto :goto_9c

    .line 984
    :pswitch_5c
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 985
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getWhatToString(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$1200(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_9c

    .line 978
    :pswitch_81
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 979
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v2, "DcDefaultState: ignore EVENT_IPV6_ADDRESS_REMOVED not in ActiveState"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    goto :goto_9c

    .line 972
    :pswitch_8f
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->VDBG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$900()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 973
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$MtkDcDefaultState;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const-string v2, "DcDefaultState: ignore EVENT_IPV4_ADDRESS_REMOVED not in ActiveState"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->log(Ljava/lang/String;)V

    .line 1005
    :cond_9c
    :goto_9c
    return v0

    nop

    :pswitch_data_9e
    .packed-switch 0x40028
        :pswitch_8f
        :pswitch_81
        :pswitch_5c
        :pswitch_4f
        :pswitch_3c
        :pswitch_41
    .end packed-switch
.end method
