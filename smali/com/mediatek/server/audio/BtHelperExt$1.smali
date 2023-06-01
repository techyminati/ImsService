.class Lcom/mediatek/server/audio/BtHelperExt$1;
.super Ljava/lang/Object;
.source "BtHelperExt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/audio/BtHelperExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/server/audio/BtHelperExt;


# direct methods
.method constructor <init>(Lcom/mediatek/server/audio/BtHelperExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/server/audio/BtHelperExt;

    .line 530
    iput-object p1, p0, Lcom/mediatek/server/audio/BtHelperExt$1;->this$0:Lcom/mediatek/server/audio/BtHelperExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 533
    invoke-static {}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->getInstance()Lcom/mediatek/bt/BluetoothLeAudioFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->isLeAudioConnected(I)Z

    move-result v0

    const-string v1, "AS.BtHelperExt"

    if-eqz v0, :cond_22

    .line 534
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt$1;->this$0:Lcom/mediatek/server/audio/BtHelperExt;

    move-object v2, p2

    check-cast v2, Lcom/mediatek/bt/BluetoothLeAudio;

    # setter for: Lcom/mediatek/server/audio/BtHelperExt;->mLeAudioProfile:Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-static {v0, v2}, Lcom/mediatek/server/audio/BtHelperExt;->access$002(Lcom/mediatek/server/audio/BtHelperExt;Lcom/mediatek/bt/BluetoothLeAudio;)Lcom/mediatek/bt/BluetoothLeAudio;

    .line 535
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt$1;->this$0:Lcom/mediatek/server/audio/BtHelperExt;

    # getter for: Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    invoke-static {v0}, Lcom/mediatek/server/audio/BtHelperExt;->access$100(Lcom/mediatek/server/audio/BtHelperExt;)Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postBtLEProfileConnected(Landroid/bluetooth/BluetoothProfile;)V

    .line 536
    const-string v0, "LE_AUDIO Profile Connected"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_22
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_46

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLE CS AUDIO Profile Connected, proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt$1;->this$0:Lcom/mediatek/server/audio/BtHelperExt;

    # getter for: Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    invoke-static {v0}, Lcom/mediatek/server/audio/BtHelperExt;->access$100(Lcom/mediatek/server/audio/BtHelperExt;)Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/mediatek/bt/BluetoothTbs;

    invoke-virtual {v0, v1}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postBtTbsProfileConnected(Lcom/mediatek/bt/BluetoothTbs;)V

    .line 544
    :cond_46
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 5
    .param p1, "profile"    # I

    .line 547
    invoke-static {}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->getInstance()Lcom/mediatek/bt/BluetoothLeAudioFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/bt/BluetoothLeAudioFactory;->isLeAudioConnected(I)Z

    move-result v0

    const-string v1, "AS.BtHelperExt"

    if-eqz v0, :cond_20

    .line 548
    const-string v0, "LE_AUDIO Profile Disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt$1;->this$0:Lcom/mediatek/server/audio/BtHelperExt;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/server/audio/BtHelperExt;->mLeAudioProfile:Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-static {v0, v2}, Lcom/mediatek/server/audio/BtHelperExt;->access$002(Lcom/mediatek/server/audio/BtHelperExt;Lcom/mediatek/bt/BluetoothLeAudio;)Lcom/mediatek/bt/BluetoothLeAudio;

    .line 550
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt$1;->this$0:Lcom/mediatek/server/audio/BtHelperExt;

    # getter for: Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    invoke-static {v0}, Lcom/mediatek/server/audio/BtHelperExt;->access$100(Lcom/mediatek/server/audio/BtHelperExt;)Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postDisconnectLE()V

    .line 552
    :cond_20
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_32

    .line 553
    const-string v0, "BLE CS AUDIO Profile Disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt$1;->this$0:Lcom/mediatek/server/audio/BtHelperExt;

    # getter for: Lcom/mediatek/server/audio/BtHelperExt;->mDeviceBrokerExt:Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
    invoke-static {v0}, Lcom/mediatek/server/audio/BtHelperExt;->access$100(Lcom/mediatek/server/audio/BtHelperExt;)Lcom/mediatek/server/audio/AudioDeviceBrokerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/server/audio/AudioDeviceBrokerExt;->postBtTbsProfileDisconnected()V

    .line 556
    :cond_32
    return-void
.end method
