.class Lcom/mediatek/net/tethering/TestModeTethering$1;
.super Ljava/lang/Object;
.source "TestModeTethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/net/tethering/TestModeTethering;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/net/tethering/TestModeTethering;


# direct methods
.method constructor <init>(Lcom/mediatek/net/tethering/TestModeTethering;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/net/tethering/TestModeTethering;

    .line 66
    iput-object p1, p0, Lcom/mediatek/net/tethering/TestModeTethering$1;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/mediatek/net/tethering/TestModeTethering$1;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    # invokes: Lcom/mediatek/net/tethering/TestModeTethering;->checkEngineerModeSettings()V
    invoke-static {v0}, Lcom/mediatek/net/tethering/TestModeTethering;->access$000(Lcom/mediatek/net/tethering/TestModeTethering;)V

    .line 70
    return-void
.end method
