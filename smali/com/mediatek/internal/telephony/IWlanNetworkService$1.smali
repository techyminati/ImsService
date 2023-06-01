.class Lcom/mediatek/internal/telephony/IWlanNetworkService$1;
.super Ljava/lang/Object;
.source "IWlanNetworkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/IWlanNetworkService;->bindAndRegisterWifiOffloadService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 379
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # getter for: Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1100(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    if-nez v0, :cond_57

    .line 383
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->checkAndBindWifiOffloadService()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1300(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    .line 384
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # getter for: Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1100(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 386
    :try_start_15
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # getter for: Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1100(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    .line 387
    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->createWifiOffloadListenerProxy()Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1400(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/internal/telephony/IWlanNetworkService$IWifiOffloadListenerProxy;

    move-result-object v1

    .line 386
    invoke-interface {v0, v1}, Lcom/mediatek/wfo/IWifiOffloadService;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_2d

    .line 388
    :catch_25
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const-string v2, "can\'t register handover event"

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 390
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    goto :goto_3f

    .line 392
    :cond_2e
    const/4 v0, 0x0

    const-string v1, "persist.vendor.mtk_wfc_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3f

    .line 393
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const-string v1, "can\'t get WifiOffloadService"

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 394
    goto :goto_57

    .line 398
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # getter for: Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1100(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 399
    goto :goto_57

    .line 402
    :cond_48
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$1;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const-string v1, "can\'t get WifiOffloadService, retry after 1s."

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 404
    const-wide/16 v0, 0x3e8

    :try_start_51
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_54} :catch_55

    .line 407
    :goto_54
    goto :goto_0

    .line 405
    :catch_55
    move-exception v0

    goto :goto_54

    .line 409
    :cond_57
    :goto_57
    return-void
.end method
