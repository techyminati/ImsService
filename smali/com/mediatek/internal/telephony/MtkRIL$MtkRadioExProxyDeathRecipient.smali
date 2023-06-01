.class final Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;
.super Ljava/lang/Object;
.source "MtkRIL.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MtkRadioExProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkRIL;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 309
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 8
    .param p1, "cookie"    # J

    .line 313
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "IMtkRadioEx serviceDied"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    # getter for: Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->access$400(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL$RilHandler;->removeMessages(I)V

    .line 315
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    # getter for: Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->access$600(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 316
    # getter for: Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->access$500(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRadioExProxyDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 317
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 316
    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 315
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 318
    return-void
.end method
