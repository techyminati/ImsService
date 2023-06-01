.class public Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;
.super Lcom/android/internal/telephony/RIL$RilHandler;
.source "MtkRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtkRilHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkRIL;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 281
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL$RilHandler;-><init>(Lcom/android/internal/telephony/RIL;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    .line 303
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL$RilHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_87

    .line 286
    :pswitch_a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_MTKRADIOEX_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mMtkRadioExProxyCookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 287
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_87

    .line 289
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    # getter for: Lcom/mediatek/internal/telephony/MtkRIL;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->access$000(Lcom/mediatek/internal/telephony/MtkRIL;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    if-nez v0, :cond_82

    .line 290
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "handleMessage: wait for getting mRadioProxy"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLoge(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    # getter for: Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->access$100(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL$RilHandler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    # getter for: Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->access$300(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 293
    # getter for: Lcom/mediatek/internal/telephony/MtkRIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkRIL;->access$200(Lcom/mediatek/internal/telephony/MtkRIL;)Lcom/android/internal/telephony/RIL$RilHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkRadioExProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 294
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 293
    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 292
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/RIL$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_87

    .line 297
    :cond_82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$MtkRilHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkRIL;->resetMtkProxyAndRequestList()V

    .line 306
    :cond_87
    :goto_87
    return-void

    :pswitch_data_88
    .packed-switch 0x3ee
        :pswitch_a
    .end packed-switch
.end method
