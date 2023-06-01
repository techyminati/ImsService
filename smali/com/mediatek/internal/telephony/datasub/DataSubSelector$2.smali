.class Lcom/mediatek/internal/telephony/datasub/DataSubSelector$2;
.super Landroid/database/ContentObserver;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/datasub/DataSubSelector;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 203
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 206
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    const-string v1, "mPrefNetworkModeObserver, changed"

    # invokes: Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/datasub/DataSubSelector$2;->this$0:Lcom/mediatek/internal/telephony/datasub/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->handlePrefNetworkModeChanged()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/datasub/DataSubSelector;)V

    .line 208
    return-void
.end method
