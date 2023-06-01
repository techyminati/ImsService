.class Lcom/mediatek/bt/BluetoothTbs$2;
.super Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;
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

    .line 1214
    iput-object p1, p0, Lcom/mediatek/bt/BluetoothTbs$2;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy object connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$2;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothTbs$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothTbs;

    move-result-object v1

    # setter for: Lcom/mediatek/bt/BluetoothTbs;->mService:Landroid/bluetooth/IBluetoothTbs;
    invoke-static {v0, v1}, Lcom/mediatek/bt/BluetoothTbs;->access$402(Lcom/mediatek/bt/BluetoothTbs;Landroid/bluetooth/IBluetoothTbs;)Landroid/bluetooth/IBluetoothTbs;

    .line 1221
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$2;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$500(Lcom/mediatek/bt/BluetoothTbs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs$2;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bt/BluetoothTbs;->access$500(Lcom/mediatek/bt/BluetoothTbs;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1222
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy object disconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTbs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$2;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # invokes: Lcom/mediatek/bt/BluetoothTbs;->doUnbind()V
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$200(Lcom/mediatek/bt/BluetoothTbs;)V

    .line 1230
    iget-object v0, p0, Lcom/mediatek/bt/BluetoothTbs$2;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/bt/BluetoothTbs;->access$500(Lcom/mediatek/bt/BluetoothTbs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bt/BluetoothTbs$2;->this$0:Lcom/mediatek/bt/BluetoothTbs;

    # getter for: Lcom/mediatek/bt/BluetoothTbs;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bt/BluetoothTbs;->access$500(Lcom/mediatek/bt/BluetoothTbs;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1231
    return-void
.end method
