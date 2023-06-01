.class public Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;
.super Landroid/os/Handler;
.source "AnrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/anr/AnrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnrMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/server/anr/AnrManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/server/anr/AnrManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/server/anr/AnrManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 699
    iput-object p1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    .line 700
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 701
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 705
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    goto :goto_40

    .line 712
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;

    .line 713
    .local v0, "adp":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 714
    .local v1, "isSilentANR":Z
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START_ANR_DUMP_MSG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isSilentANR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AnrManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v3, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mAnrDumpManager:Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;
    invoke-static {v3}, Lcom/mediatek/server/anr/AnrManagerService;->access$000(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->dumpAnrDebugInfo(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;ZZ)V

    .line 716
    goto :goto_40

    .line 709
    .end local v0    # "adp":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .end local v1    # "isSilentANR":Z
    :pswitch_3a
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v0}, Lcom/mediatek/server/anr/AnrManagerService;->updateProcessStats()V

    .line 710
    nop

    .line 720
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x3e9
        :pswitch_3a
        :pswitch_3a
        :pswitch_6
        :pswitch_3a
    .end packed-switch
.end method
