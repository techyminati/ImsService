.class final Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BtDeviceConnectionInfo"
.end annotation


# instance fields
.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mProfile:I

.field final mState:I

.field final mSupprNoisy:Z

.field final mVolume:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "vol"    # I

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 604
    iput p2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;->mState:I

    .line 605
    iput p3, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;->mProfile:I

    .line 606
    iput-boolean p4, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;->mSupprNoisy:Z

    .line 607
    iput p5, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;->mVolume:I

    .line 608
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 613
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 614
    return v0

    .line 616
    :cond_4
    if-ne p0, p1, :cond_8

    .line 617
    const/4 v0, 0x1

    return v0

    .line 619
    :cond_8
    instance-of v1, p1, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;

    if-eqz v1, :cond_18

    .line 620
    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v1, p1

    check-cast v1, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;

    iget-object v1, v1, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 622
    :cond_18
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtDeviceConnectionInfo dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$BtDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
