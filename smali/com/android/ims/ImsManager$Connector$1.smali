.class Lcom/android/ims/ImsManager$Connector$1;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/MmTelFeatureConnection$IFeatureUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager$Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsManager$Connector;


# direct methods
.method constructor <init>(Lcom/android/ims/ImsManager$Connector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager$Connector;

    .line 232
    iput-object p1, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$notifyStateChanged$0$ImsManager$Connector$1()V
    .locals 3

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "status":I
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v1}, Lcom/android/ims/ImsManager$Connector;->access$300(Lcom/android/ims/ImsManager$Connector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v2}, Lcom/android/ims/ImsManager$Connector;->access$400(Lcom/android/ims/ImsManager$Connector;)Lcom/android/ims/ImsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v2}, Lcom/android/ims/ImsManager$Connector;->access$400(Lcom/android/ims/ImsManager$Connector;)Lcom/android/ims/ImsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getImsServiceState()I

    move-result v2

    move v0, v2

    .line 242
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->access$500(Ljava/lang/String;)V

    .line 244
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 256
    const-string v1, "ImsManager"

    const-string v2, "Unexpected State!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v1}, Lcom/android/ims/ImsManager$Connector;->access$600(Lcom/android/ims/ImsManager$Connector;)V

    .line 247
    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v1}, Lcom/android/ims/ImsManager$Connector;->access$100(Lcom/android/ims/ImsManager$Connector;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    nop

    .line 263
    .end local v0    # "status":I
    :goto_0
    goto :goto_1

    .line 242
    .restart local v0    # "status":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/ims/ImsManager$Connector$1;
    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 259
    .end local v0    # "status":I
    .restart local p0    # "this":Lcom/android/ims/ImsManager$Connector$1;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Lcom/android/ims/ImsException;
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v1}, Lcom/android/ims/ImsManager$Connector;->access$100(Lcom/android/ims/ImsManager$Connector;)V

    .line 262
    iget-object v1, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v1}, Lcom/android/ims/ImsManager$Connector;->access$200(Lcom/android/ims/ImsManager$Connector;)V

    .line 264
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method

.method public synthetic lambda$notifyUnavailable$1$ImsManager$Connector$1()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v0}, Lcom/android/ims/ImsManager$Connector;->access$100(Lcom/android/ims/ImsManager$Connector;)V

    .line 271
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v0}, Lcom/android/ims/ImsManager$Connector;->access$200(Lcom/android/ims/ImsManager$Connector;)V

    .line 272
    return-void
.end method

.method public notifyStateChanged()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v0}, Lcom/android/ims/ImsManager$Connector;->access$000(Lcom/android/ims/ImsManager$Connector;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$ImsManager$Connector$1$QkUK3GnYms22eckyg3OL-BmtP3M;

    invoke-direct {v1, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$1$QkUK3GnYms22eckyg3OL-BmtP3M;-><init>(Lcom/android/ims/ImsManager$Connector$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method public notifyUnavailable()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/ims/ImsManager$Connector$1;->this$0:Lcom/android/ims/ImsManager$Connector;

    invoke-static {v0}, Lcom/android/ims/ImsManager$Connector;->access$000(Lcom/android/ims/ImsManager$Connector;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/-$$Lambda$ImsManager$Connector$1$noNC6hbyVe0dHnOoOYgo9PyTSxw;

    invoke-direct {v1, p0}, Lcom/android/ims/-$$Lambda$ImsManager$Connector$1$noNC6hbyVe0dHnOoOYgo9PyTSxw;-><init>(Lcom/android/ims/ImsManager$Connector$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method
