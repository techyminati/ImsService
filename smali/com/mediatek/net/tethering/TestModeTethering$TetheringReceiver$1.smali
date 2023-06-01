.class Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver$1;
.super Ljava/lang/Object;
.source "TestModeTethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$1"    # Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;

    .line 108
    iput-object p1, p0, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver$1;->this$1:Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver;

    iput-object p2, p0, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 110
    const-string v0, "MCSS-Tethering"

    const-string v1, "Disable data usage alert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/mediatek/net/tethering/TestModeTethering$TetheringReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "netstats_global_alert_bytes"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 114
    return-void
.end method
