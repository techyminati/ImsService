.class Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "IWlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IWlanNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/internal/telephony/IWlanNetworkService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/IWlanNetworkService$1;

    .line 305
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    return-void
.end method


# virtual methods
.method public onWfcStateChanged(II)V
    .registers 6
    .param p1, "simId"    # I
    .param p2, "state"    # I

    .line 308
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWfcStateChanged simIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$800(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->notifyWfcStateChanged(II)V
    invoke-static {v0, p1, p2}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$900(Lcom/mediatek/internal/telephony/IWlanNetworkService;II)V

    .line 310
    return-void
.end method
