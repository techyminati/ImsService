.class Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;
.super Ljava/lang/Object;
.source "BtHelperExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/audio/BtHelperExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothA2dpDeviceInfo"
.end annotation


# instance fields
.field private final mBtDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mCodec:I

.field private final mVolume:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 134
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 135
    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I
    .param p3, "codec"    # I

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 139
    iput p2, p0, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;->mVolume:I

    .line 140
    iput p3, p0, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;->mCodec:I

    .line 141
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 158
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 159
    return v0

    .line 161
    :cond_4
    if-ne p0, p1, :cond_8

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_8
    instance-of v1, p1, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;

    if-eqz v1, :cond_1a

    .line 165
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v1, p1

    check-cast v1, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;

    invoke-virtual {v1}, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 167
    :cond_1a
    return v0
.end method

.method public getBtDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getCodec()I
    .registers 2

    .line 152
    iget v0, p0, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;->mCodec:I

    return v0
.end method

.method public getVolume()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/mediatek/server/audio/BtHelperExt$BluetoothA2dpDeviceInfo;->mVolume:I

    return v0
.end method
