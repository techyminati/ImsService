.class final Lcom/mediatek/wfo/impl/WifiOffloadService$WifiOffloadDeathRecipient;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WifiOffloadDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 2562
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiOffloadDeathRecipient;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 5
    .param p1, "cookie"    # J

    .line 2566
    const-string v0, "WifiOffloadService"

    const-string v1, "wfo_hidl_service Died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    return-void
.end method
