.class Lcom/mediatek/wfo/impl/WifiOffloadService$4;
.super Ljava/lang/Thread;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;->initMalConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 1061
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$4;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1064
    const-string v0, "WifiOffloadService"

    :try_start_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$4;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    const-string v2, "initMalConnection: enter thread "

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1065
    :goto_9
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$4;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mWifiOffload:Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$4600(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;

    move-result-object v1

    invoke-interface {v1}, Lvendor/mediatek/hardware/wfo/V1_0/IWifiOffload;->nativeConnectToMal()I

    move-result v1

    if-nez v1, :cond_3d

    .line 1066
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$4;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeConnectToMal return 0, wait for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->MAL_CONNECTION_SETUP_RETRY_TIMEOUT:I
    invoke-static {}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5700()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1066
    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 1068
    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->MAL_CONNECTION_SETUP_RETRY_TIMEOUT:I
    invoke-static {}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$5700()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_9

    .line 1070
    :cond_3d
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$4;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    const-string v2, "nativeConnectToMal success"

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_44} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_44} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_45

    goto :goto_59

    .line 1075
    :catch_45
    move-exception v1

    .line 1076
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Wos HIDL Exception-2:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .line 1073
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4c
    move-exception v1

    .line 1074
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Wos HIDL Exception:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_59

    .line 1071
    :catch_53
    move-exception v1

    .line 1072
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "thread interrupt! continue to do MAL init!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_59
    nop

    .line 1078
    :goto_5a
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$4;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$4;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1079
    return-void
.end method
