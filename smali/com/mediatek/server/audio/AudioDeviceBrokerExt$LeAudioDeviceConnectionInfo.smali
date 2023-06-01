.class final Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/audio/AudioDeviceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeAudioDeviceConnectionInfo"
.end annotation


# instance fields
.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mEventSource:Ljava/lang/String;

.field final mMusicDevice:I

.field final mState:I

.field final mSupprNoisy:Z


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I
    .param p5, "eventSource"    # Ljava/lang/String;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    iput-object p1, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 642
    iput p2, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mState:I

    .line 643
    iput-boolean p3, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mSupprNoisy:Z

    .line 644
    iput p4, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mMusicDevice:I

    .line 645
    iput-object p5, p0, Lcom/mediatek/server/audio/AudioDeviceBrokerExt$LeAudioDeviceConnectionInfo;->mEventSource:Ljava/lang/String;

    .line 646
    return-void
.end method
