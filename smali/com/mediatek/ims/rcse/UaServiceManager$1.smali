.class Lcom/mediatek/ims/rcse/UaServiceManager$1;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/RcsUaService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/UaServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 243
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceConnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 5
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManagerMtk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsCallback:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/ImsEventCallback;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/ImsEventCallback;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/ImsEventCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$102(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/Client;)Lcom/mediatek/ims/rcsua/Client;

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v3}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$100(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0, v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$002(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acsCallback:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v3}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/AcsEventCallback;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/AcsEventCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    iget-object v0, v0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    iget-object v0, v0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    .line 256
    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/AcsEventCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0, v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$302(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/AcsEventCallback;)Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 260
    :cond_1
    return-void
.end method

.method public serviceDisconnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 3
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceDisconnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UaServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$100(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {}, Lcom/mediatek/ims/rcsua/RcsUaService;->getInstance()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$100(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 267
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$102(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/Client;)Lcom/mediatek/ims/rcsua/Client;

    .line 268
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$402(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/SipChannel;)Lcom/mediatek/ims/rcsua/SipChannel;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$202(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$502(Lcom/mediatek/ims/rcse/UaServiceManager;Z)Z

    .line 274
    return-void
.end method
