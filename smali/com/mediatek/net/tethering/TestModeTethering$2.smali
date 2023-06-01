.class Lcom/mediatek/net/tethering/TestModeTethering$2;
.super Ljava/lang/Object;
.source "TestModeTethering.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/net/tethering/TestModeTethering;->enableUsbTethering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/net/tethering/TestModeTethering;


# direct methods
.method constructor <init>(Lcom/mediatek/net/tethering/TestModeTethering;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/net/tethering/TestModeTethering;

    .line 127
    iput-object p1, p0, Lcom/mediatek/net/tethering/TestModeTethering$2;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 130
    iget-object v0, p0, Lcom/mediatek/net/tethering/TestModeTethering$2;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    # getter for: Lcom/mediatek/net/tethering/TestModeTethering;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/net/tethering/TestModeTethering;->access$500(Lcom/mediatek/net/tethering/TestModeTethering;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method
