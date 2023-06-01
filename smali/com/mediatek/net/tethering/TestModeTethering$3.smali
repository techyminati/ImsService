.class Lcom/mediatek/net/tethering/TestModeTethering$3;
.super Ljava/lang/Object;
.source "TestModeTethering.java"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/net/tethering/TestModeTethering;->enableUsbTethering()V
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

    .line 132
    iput-object p1, p0, Lcom/mediatek/net/tethering/TestModeTethering$3;->this$0:Lcom/mediatek/net/tethering/TestModeTethering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed(I)V
    .registers 4
    .param p1, "error"    # I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto USB tethering start failed, error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCSS-Tethering"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public onTetheringStarted()V
    .registers 3

    .line 135
    const-string v0, "MCSS-Tethering"

    const-string v1, "Auto USB tethering started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
