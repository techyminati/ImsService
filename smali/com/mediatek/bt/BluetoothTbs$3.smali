.class Lcom/mediatek/bt/BluetoothTbs$3;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/mediatek/bt/BluetoothTbs;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/bt/BluetoothTbs;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 1234
    iput-object p1, p0, Lcom/mediatek/bt/BluetoothTbs$3;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs$3;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v1}, Lcom/mediatek/bt/BluetoothTbs;->access$600(Lcom/mediatek/bt/BluetoothTbs;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    packed-switch v0, :pswitch_data_54

    goto :goto_53

    .line 1246
    :pswitch_2e
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$3;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$600(Lcom/mediatek/bt/BluetoothTbs;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1247
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$3;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$600(Lcom/mediatek/bt/BluetoothTbs;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    goto :goto_53

    .line 1240
    :pswitch_40
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$3;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$600(Lcom/mediatek/bt/BluetoothTbs;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1241
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$3;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$600(Lcom/mediatek/bt/BluetoothTbs;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/bt/BluetoothTbs$3;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1252
    :cond_53
    :goto_53
    return-void

    :pswitch_data_54
    .packed-switch 0x66
        :pswitch_40
        :pswitch_2e
    .end packed-switch
.end method
