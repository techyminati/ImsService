.class Lcom/mediatek/wfo/impl/WfcLocationHandler$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WfcLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/WfcLocationHandler;->registerDefaultNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 700
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 703
    const-string v0, "WfcLocationHandler"

    const-string v1, "NetworkCallback.onAvailable()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/4 v1, 0x1

    # setter for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$402(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z

    .line 705
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendEmptyMessage(I)Z

    .line 706
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 710
    const-string v0, "WfcLocationHandler"

    const-string v1, "NetworkCallback.onLost()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$402(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z

    .line 712
    return-void
.end method
