.class Lcom/mediatek/ims/rcsua/RcsUaService$4;
.super Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;
.source "RcsUaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/RcsUaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/RcsUaService;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 1173
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$4;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregStarted(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 3
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 1197
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$4;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1199
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$4;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$900(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Client;

    .line 1200
    .local v2, "client":Lcom/mediatek/ims/rcsua/Client;
    invoke-virtual {v2, p1}, Lcom/mediatek/ims/rcsua/Client;->handleImsDeregInd(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 1201
    .end local v2    # "client":Lcom/mediatek/ims/rcsua/Client;
    goto :goto_0

    .line 1202
    :cond_0
    monitor-exit v0

    .line 1203
    return-void

    .line 1202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReregistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 3
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 1187
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReregistered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$4;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1189
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$4;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$900(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Client;

    .line 1190
    .local v2, "client":Lcom/mediatek/ims/rcsua/Client;
    invoke-virtual {v2, p1}, Lcom/mediatek/ims/rcsua/Client;->handleImsReregistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 1191
    .end local v2    # "client":Lcom/mediatek/ims/rcsua/Client;
    goto :goto_0

    .line 1192
    :cond_0
    monitor-exit v0

    .line 1193
    return-void

    .line 1192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStatusChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 3
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 1177
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$4;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1179
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$4;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$900(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Client;

    .line 1180
    .local v2, "client":Lcom/mediatek/ims/rcsua/Client;
    invoke-virtual {v2, p1}, Lcom/mediatek/ims/rcsua/Client;->handleImsEventCallback(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 1181
    .end local v2    # "client":Lcom/mediatek/ims/rcsua/Client;
    goto :goto_0

    .line 1182
    :cond_0
    monitor-exit v0

    .line 1183
    return-void

    .line 1182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVopsIndication(I)V
    .locals 3
    .param p1, "vops"    # I

    .line 1207
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVopsIndication:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$4;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1209
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$4;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$900(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Client;

    .line 1210
    .local v2, "client":Lcom/mediatek/ims/rcsua/Client;
    invoke-virtual {v2, p1}, Lcom/mediatek/ims/rcsua/Client;->handleVopsInd(I)V

    .line 1211
    .end local v2    # "client":Lcom/mediatek/ims/rcsua/Client;
    goto :goto_0

    .line 1212
    :cond_0
    monitor-exit v0

    .line 1213
    return-void

    .line 1212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
