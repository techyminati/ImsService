.class Lcom/mediatek/omadm/OmadmServiceImpl$2;
.super Ljava/lang/Thread;
.source "OmadmServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omadm/OmadmServiceImpl;->request_AdminNetwork(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

.field final synthetic val$subID:I


# direct methods
.method constructor <init>(Lcom/mediatek/omadm/OmadmServiceImpl;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 1046
    iput-object p1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    iput p2, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->val$subID:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1050
    const-string v0, "OmadmServiceImpl"

    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_4
    iget-object v3, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaManager:Lcom/mediatek/omadm/FotaNetworkManager;
    invoke-static {v3}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$400(Lcom/mediatek/omadm/OmadmServiceImpl;)Lcom/mediatek/omadm/FotaNetworkManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mediatek/omadm/FotaNetworkManager;->acquireNetwork(Ljava/lang/String;)I

    move-result v4

    # setter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mNetId:I
    invoke-static {v3, v4}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$302(Lcom/mediatek/omadm/OmadmServiceImpl;I)I

    .line 1051
    iget-object v3, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaManager:Lcom/mediatek/omadm/FotaNetworkManager;
    invoke-static {v3}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$400(Lcom/mediatek/omadm/OmadmServiceImpl;)Lcom/mediatek/omadm/FotaNetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/omadm/FotaNetworkManager;->getApnName()Ljava/lang/String;

    move-result-object v3

    .line 1052
    .local v3, "apnName":Ljava/lang/String;
    sget-boolean v4, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_41

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mNetId:I
    invoke-static {v5}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$300(Lcom/mediatek/omadm/OmadmServiceImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " APN name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_41
    iget-object v4, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$600(Lcom/mediatek/omadm/OmadmServiceImpl;)Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->val$subID:I

    const/4 v7, 0x1

    invoke-static {v5, v3, v6, v0, v7}, Lcom/mediatek/omadm/FotaApnSettings;->load(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Lcom/mediatek/omadm/FotaApnSettings;

    move-result-object v5

    # setter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaApn:Lcom/mediatek/omadm/FotaApnSettings;
    invoke-static {v4, v5}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$502(Lcom/mediatek/omadm/OmadmServiceImpl;Lcom/mediatek/omadm/FotaApnSettings;)Lcom/mediatek/omadm/FotaApnSettings;

    .line 1055
    sget-boolean v4, Lcom/mediatek/omadm/OmadmServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_73

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mFotaApn:Lcom/mediatek/omadm/FotaApnSettings;
    invoke-static {v5}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$500(Lcom/mediatek/omadm/OmadmServiceImpl;)Lcom/mediatek/omadm/FotaApnSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/omadm/FotaApnSettings;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_73
    iget-object v4, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 1057
    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->mNetId:I
    invoke-static {v4}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$300(Lcom/mediatek/omadm/OmadmServiceImpl;)I

    move-result v5

    .line 1056
    invoke-virtual {v4, v7, v5}, Lcom/mediatek/omadm/OmadmServiceImpl;->omadmControllerDispachAdminNetStatus(II)V
    :try_end_7c
    .catch Lcom/mediatek/omadm/FotaException; {:try_start_4 .. :try_end_7c} :catch_9a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7c} :catch_7f
    .catchall {:try_start_4 .. :try_end_7c} :catchall_7d

    .end local v3    # "apnName":Ljava/lang/String;
    goto :goto_a5

    .line 1068
    :catchall_7d
    move-exception v0

    goto :goto_ae

    .line 1062
    :catch_7f
    move-exception v3

    .line 1064
    .local v3, "e":Ljava/lang/Exception;
    :try_start_80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception when acquiring Admin Network"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->omadmControllerDispachAdminNetStatus(II)V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_a5

    .line 1058
    :catch_9a
    move-exception v3

    .line 1059
    .local v3, "e":Lcom/mediatek/omadm/FotaException;
    const-string v4, "Unable to acquire Admin Network. Timed Out"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/mediatek/omadm/OmadmServiceImpl$2;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/omadm/OmadmServiceImpl;->omadmControllerDispachAdminNetStatus(II)V
    :try_end_a5
    .catchall {:try_start_80 .. :try_end_a5} :catchall_7d

    .line 1068
    .end local v3    # "e":Lcom/mediatek/omadm/FotaException;
    :goto_a5
    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->trCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$700()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1069
    nop

    .line 1070
    return-void

    .line 1068
    :goto_ae
    # getter for: Lcom/mediatek/omadm/OmadmServiceImpl;->trCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/mediatek/omadm/OmadmServiceImpl;->access$700()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1069
    throw v0
.end method
