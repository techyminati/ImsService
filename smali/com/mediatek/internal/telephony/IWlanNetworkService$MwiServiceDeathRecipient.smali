.class Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;
.super Ljava/lang/Object;
.source "IWlanNetworkService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IWlanNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MwiServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/internal/telephony/IWlanNetworkService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/IWlanNetworkService;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/IWlanNetworkService$1;

    .line 357
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 360
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const-string v1, "binderDied"

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 362
    :try_start_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # getter for: Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1000(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 363
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # getter for: Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1000(Lcom/mediatek/internal/telephony/IWlanNetworkService;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a

    .line 367
    :cond_19
    goto :goto_31

    .line 365
    :catch_1a
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$500(Lcom/mediatek/internal/telephony/IWlanNetworkService;Ljava/lang/String;)V

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/internal/telephony/IWlanNetworkService;->sWifiOffloadService:Lcom/mediatek/wfo/IWifiOffloadService;
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1102(Lcom/mediatek/internal/telephony/IWlanNetworkService;Lcom/mediatek/wfo/IWifiOffloadService;)Lcom/mediatek/wfo/IWifiOffloadService;

    .line 369
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # setter for: Lcom/mediatek/internal/telephony/IWlanNetworkService;->mBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1002(Lcom/mediatek/internal/telephony/IWlanNetworkService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 370
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IWlanNetworkService$MwiServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/IWlanNetworkService;

    # invokes: Lcom/mediatek/internal/telephony/IWlanNetworkService;->bindAndRegisterWifiOffloadService()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IWlanNetworkService;->access$1200(Lcom/mediatek/internal/telephony/IWlanNetworkService;)V

    .line 371
    return-void
.end method
