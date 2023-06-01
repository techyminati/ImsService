.class Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WosLocationListener"
.end annotation


# instance fields
.field private mSimIdx:I

.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V
    .registers 3
    .param p2, "simIdx"    # I

    .line 650
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;->mSimIdx:I

    .line 652
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .line 656
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->log(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;->mSimIdx:I

    # invokes: Lcom/mediatek/wfo/impl/WifiOffloadService;->cancelNetworkLocationRequest(I)V
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2600(Lcom/mediatek/wfo/impl/WifiOffloadService;I)V

    .line 658
    if-nez p1, :cond_20

    .line 659
    return-void

    .line 661
    :cond_20
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;->mSimIdx:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 662
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WosLocationListener;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    .end local v0    # "msg":Landroid/os/Message;
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 668
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 672
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 676
    return-void
.end method
