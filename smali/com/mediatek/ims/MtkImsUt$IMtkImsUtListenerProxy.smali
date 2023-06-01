.class Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;
.super Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;
.source "MtkImsUt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IMtkImsUtListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkImsUt;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/MtkImsUt;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsUt;

    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/MtkImsUt;Lcom/mediatek/ims/MtkImsUt$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/ims/MtkImsUt;
    .param p2, "x1"    # Lcom/mediatek/ims/MtkImsUt$1;

    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;-><init>(Lcom/mediatek/ims/MtkImsUt;)V

    return-void
.end method


# virtual methods
.method public utConfigurationCallForwardInTimeSlotQueried(Lcom/mediatek/ims/internal/IMtkImsUt;I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V
    .registers 8
    .param p1, "iMtkUt"    # Lcom/mediatek/ims/internal/IMtkImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 93
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsUt;

    # getter for: Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUt;->access$100(Lcom/mediatek/ims/MtkImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 94
    :try_start_b
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsUt;

    # getter for: Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUt;->access$200(Lcom/mediatek/ims/MtkImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    # invokes: Lcom/mediatek/ims/MtkImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    invoke-static {v2, v3, p3}, Lcom/mediatek/ims/MtkImsUt;->access$300(Lcom/mediatek/ims/MtkImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsUt;

    # getter for: Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUt;->access$400(Lcom/mediatek/ims/MtkImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v2
.end method

.method public utConfigurationCallForwardQueried(Lcom/mediatek/ims/internal/IMtkImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 8
    .param p1, "iMtkUt"    # Lcom/mediatek/ims/internal/IMtkImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsUt;

    # getter for: Lcom/mediatek/ims/MtkImsUt;->mLockObj:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUt;->access$500(Lcom/mediatek/ims/MtkImsUt;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_b
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsUt;

    # getter for: Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUt;->access$600(Lcom/mediatek/ims/MtkImsUt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    # invokes: Lcom/mediatek/ims/MtkImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    invoke-static {v2, v3, p3}, Lcom/mediatek/ims/MtkImsUt;->access$700(Lcom/mediatek/ims/MtkImsUt;Landroid/os/Message;Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUt$IMtkImsUtListenerProxy;->this$0:Lcom/mediatek/ims/MtkImsUt;

    # getter for: Lcom/mediatek/ims/MtkImsUt;->mPendingCmds:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUt;->access$800(Lcom/mediatek/ims/MtkImsUt;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v2
.end method
