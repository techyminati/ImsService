.class Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;
.super Ljava/lang/Object;
.source "MtkServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

.field final synthetic val$nitzReceiveTime:J

.field final synthetic val$nitzString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;J)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    .line 1101
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->val$nitzString:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->val$nitzReceiveTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->val$nitzString:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$2;->val$nitzReceiveTime:J

    # invokes: Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;->access$4000(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;Ljava/lang/String;J)V

    .line 1104
    return-void
.end method
