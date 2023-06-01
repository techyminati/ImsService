.class Lcom/mediatek/omadm/NetworkDetector$NwEvntBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omadm/NetworkDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NwEvntBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omadm/NetworkDetector;


# direct methods
.method private constructor <init>(Lcom/mediatek/omadm/NetworkDetector;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/mediatek/omadm/NetworkDetector$NwEvntBroadcastReceiver;->this$0:Lcom/mediatek/omadm/NetworkDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/omadm/NetworkDetector;Lcom/mediatek/omadm/NetworkDetector$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/omadm/NetworkDetector;
    .param p2, "x1"    # Lcom/mediatek/omadm/NetworkDetector$1;

    .line 130
    invoke-direct {p0, p1}, Lcom/mediatek/omadm/NetworkDetector$NwEvntBroadcastReceiver;-><init>(Lcom/mediatek/omadm/NetworkDetector;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 134
    const-string v0, "NetworkDetector"

    const-string v1, "NwEvntBroadcastReceiver onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    nop

    .line 137
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 138
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/mediatek/omadm/NetworkDetector$NwEvntBroadcastReceiver;->this$0:Lcom/mediatek/omadm/NetworkDetector;

    # invokes: Lcom/mediatek/omadm/NetworkDetector;->networkChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/mediatek/omadm/NetworkDetector;->access$100(Lcom/mediatek/omadm/NetworkDetector;Landroid/net/NetworkInfo;)V

    .line 139
    return-void
.end method
