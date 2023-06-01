.class Lcom/mediatek/internal/telephony/cat/MtkCatService$1;
.super Landroid/os/Handler;
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

    .line 160
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2e

    goto :goto_2d

    .line 165
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache DISPLAY_TEXT time out, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    # getter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$000(Lcom/mediatek/internal/telephony/cat/MtkCatService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    goto :goto_2d

    .line 168
    :sswitch_21
    const-string v0, "[Reset Disable Display Text flag because timeout"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatService$1;->this$0:Lcom/mediatek/internal/telephony/cat/MtkCatService;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/internal/telephony/cat/MtkCatService;->isDisplayTextDisabled:Z
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatService;->access$102(Lcom/mediatek/internal/telephony/cat/MtkCatService;Z)Z

    .line 170
    nop

    .line 174
    :goto_2d
    return-void

    :sswitch_data_2e
    .sparse-switch
        0xf -> :sswitch_21
        0x2e -> :sswitch_6
    .end sparse-switch
.end method
