.class Lcom/mediatek/bt/BluetoothTbs$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothTbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/BluetoothTbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bt/BluetoothTbs;


# direct methods
.method constructor <init>(Lcom/mediatek/bt/BluetoothTbs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/bt/BluetoothTbs;

    .line 459
    iput-object p1, p0, Lcom/mediatek/bt/BluetoothTbs$1;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 4
    .param p1, "up"    # Z

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStateChange: up="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-nez p1, :cond_1e

    .line 464
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$1;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # invokes: Lcom/mediatek/bt/BluetoothTbs;->doUnbind()V
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$200(Lcom/mediatek/bt/BluetoothTbs;)V

    goto :goto_23

    .line 466
    :cond_1e
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$1;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # invokes: Lcom/mediatek/bt/BluetoothTbs;->doBind()Z
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$300(Lcom/mediatek/bt/BluetoothTbs;)Z

    .line 468
    :goto_23
    return-void
.end method
