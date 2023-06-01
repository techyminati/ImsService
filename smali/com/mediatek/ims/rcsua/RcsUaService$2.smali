.class Lcom/mediatek/ims/rcsua/RcsUaService$2;
.super Ljava/lang/Object;
.source "RcsUaService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcsua/RcsUaService;-><init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V
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

    .line 1074
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$2;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1077
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$2;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$200(Lcom/mediatek/ims/rcsua/RcsUaService;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$2;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$202(Lcom/mediatek/ims/rcsua/RcsUaService;I)I

    .line 1079
    :cond_0
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 1080
    :try_start_0
    invoke-static {}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$300()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1081
    monitor-exit v0

    return-void

    .line 1082
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    if-eqz p2, :cond_3

    .line 1086
    :try_start_1
    invoke-static {p2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$402(Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 1087
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$2;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$500(Lcom/mediatek/ims/rcsua/RcsUaService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1088
    invoke-static {}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$400()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V

    goto :goto_0

    .line 1090
    :cond_2
    invoke-static {}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$400()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V

    .line 1092
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$2;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$600(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1094
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1095
    :cond_3
    :goto_1
    nop

    .line 1096
    :goto_2
    return-void

    .line 1082
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-static {}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$400()Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1102
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$402(Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 1103
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$2;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$700(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1104
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$2;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$802(Lcom/mediatek/ims/rcsua/RcsUaService;I)I

    .line 1105
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$2;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$900(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1107
    :cond_0
    return-void
.end method
