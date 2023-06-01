.class Lcom/mediatek/wfo/impl/WifiOffloadService$5;
.super Landroid/telephony/PhoneStateListener;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;->updateServiceStateListeners()V
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

    .line 1104
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$5;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1107
    if-nez p1, :cond_20

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$5;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": serviceState is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiOffloadService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-void

    .line 1112
    :cond_20
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$5;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$5;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 1113
    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$5;->mSubId:Ljava/lang/Integer;

    .line 1114
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    .line 1113
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1112
    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1115
    return-void
.end method
