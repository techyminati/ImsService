.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;
.super Landroid/os/Handler;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VsimIndEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 1103
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private dumpEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1169
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->ENG:Z
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1300()Z

    move-result v0

    const-string v1, ", data_len:"

    const-string v2, ", slot_id:"

    const-string v3, ", message_id:"

    const-string v4, "dumpEvent: transaction_id: "

    const-string v5, "ExternalSimMgr"

    if-eqz v0, :cond_59

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->truncateString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 1176
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :goto_8d
    return-void
.end method


# virtual methods
.method protected getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1110
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1117
    .local v0, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_35

    .line 1118
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_18

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_18

    .line 1119
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_35

    .line 1120
    :cond_18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_35

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_35

    .line 1121
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1122
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_35

    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_35

    .line 1123
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 1127
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_35
    :goto_35
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1134
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "ExternalSimMgr"

    packed-switch v1, :pswitch_data_ce

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Unknown Event "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cc

    .line 1152
    :pswitch_23
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->ENG:Z
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "Received EVENT_MULTI_SIM_CONFIG_CHANGED..."

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_2e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_48

    .line 1154
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForVsimIndication(Landroid/os/Handler;)V

    .line 1153
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1156
    .end local v1    # "i":I
    :cond_48
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    # setter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$202(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;[Lcom/android/internal/telephony/CommandsInterface;)[Lcom/android/internal/telephony/CommandsInterface;

    .line 1157
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_52
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_71

    .line 1158
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1159
    .local v2, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    aget-object v3, v3, v1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForVsimIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1157
    .end local v2    # "index":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 1162
    .end local v1    # "i":I
    :cond_71
    goto :goto_cc

    .line 1136
    :pswitch_72
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->ENG:Z
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_7d

    const-string v1, "Received EVENT_VSIM_INDICATION..."

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_7d
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 1139
    .local v1, "ciIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_ad

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$200(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    array-length v4, v4

    if-lt v3, v4, :cond_95

    goto :goto_ad

    .line 1144
    :cond_95
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1145
    .local v2, "indicationEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->dumpEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1147
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1148
    .local v3, "vsimMsg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1149
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIndEventHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    invoke-static {v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1150
    goto :goto_cc

    .line 1140
    .end local v2    # "indicationEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .end local v3    # "vsimMsg":Landroid/os/Message;
    :cond_ad
    :goto_ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " received with event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return-void

    .line 1166
    .end local v1    # "ciIndex":Ljava/lang/Integer;
    :goto_cc
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_72
        :pswitch_23
    .end packed-switch
.end method
