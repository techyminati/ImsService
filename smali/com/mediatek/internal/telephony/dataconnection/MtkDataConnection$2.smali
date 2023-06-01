.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    .line 1928
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 1931
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getEventByAddress(ZLandroid/net/LinkAddress;)I
    invoke-static {v0, v1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ZLandroid/net/LinkAddress;)I

    move-result v0

    .line 1933
    .local v0, "event":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessageForSM(ILjava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v1, v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ILjava/lang/String;Landroid/net/LinkAddress;)V

    .line 1934
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 1937
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->getEventByAddress(ZLandroid/net/LinkAddress;)I
    invoke-static {v0, v1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$16900(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ZLandroid/net/LinkAddress;)I

    move-result v0

    .line 1939
    .local v0, "event":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->sendMessageForSM(ILjava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v1, v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->access$17000(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ILjava/lang/String;Landroid/net/LinkAddress;)V

    .line 1940
    return-void
.end method
