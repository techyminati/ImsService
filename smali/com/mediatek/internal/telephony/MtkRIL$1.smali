.class Lcom/mediatek/internal/telephony/MtkRIL$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MODE_CDMA_ASSERT:I = 0x1f

.field private static final MODE_CDMA_RESET:I = 0x20

.field private static final MODE_CDMA_RILD_NE:I = 0x67

.field private static final MODE_GSM_RILD_NE:I = 0x65

.field private static final MODE_PHONE_PROCESS_JE:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkRIL;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 433
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL$1;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mtk.TEST_TRM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MtkRILJ"

    if-eqz v0, :cond_48

    .line 444
    const/4 v0, 0x2

    const-string v2, "mode"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, "mode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL received com.mtk.TEST_TRM, mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mInstanceIds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL$1;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/16 v1, 0x64

    if-eq v0, v1, :cond_40

    .line 450
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$1;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setTrm(ILandroid/os/Message;)V

    .line 452
    .end local v0    # "mode":I
    goto :goto_60

    .line 448
    .restart local v0    # "mode":I
    :cond_40
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UserTriggerPhoneJE"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    .end local v0    # "mode":I
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL received unexpected Intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_60
    return-void
.end method
