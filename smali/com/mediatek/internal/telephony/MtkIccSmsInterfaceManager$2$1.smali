.class Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;
.super Ljava/lang/Thread;
.source "MtkIccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    .line 1010
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1012
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1013
    .local v0, "updateRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1014
    :try_start_6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete message on sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    # getter for: Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$100(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1015
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1017
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    # getter for: Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$200(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, -0x1

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V

    .line 1018
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2$1;->this$1:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;->this$0:Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    # invokes: Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V
    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->access$300(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1019
    .end local v1    # "response":Landroid/os/Message;
    monitor-exit v0

    .line 1020
    return-void

    .line 1019
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_4d

    throw v1
.end method
