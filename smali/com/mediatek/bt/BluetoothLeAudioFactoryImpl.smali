.class public Lcom/mediatek/bt/BluetoothLeAudioFactoryImpl;
.super Lcom/mediatek/bt/BluetoothLeAudioFactory;
.source "BluetoothLeAudioFactoryImpl.java"


# static fields
.field private static final DBG:Z = true

.field public static final LE_AUDIO_SETTINGS:Ljava/lang/String; = "settings_bluetooth_le_audio"

.field private static final SUPPORT_LEAUDIO_CG_MODE:Ljava/lang/String; = "ums-cg"

.field private static final SUPPORT_LEAUDIO_UMS_MODE:Ljava/lang/String; = "ums"

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAudioFactoryImpl"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 67
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothLeAudioFactory;-><init>()V

    .line 69
    invoke-static {}, Landroid/util/FeatureFlagUtils;->getAllFeatureFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "settings_bluetooth_le_audio"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static isLeAudioProfileEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mode"    # Ljava/lang/String;

    .line 73
    const-string v0, "persist.vendor.bluetooth.leaudio_mode"

    .line 74
    .local v0, "LEAUDIO_MODE_PROPERTY":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 75
    const/4 v1, 0x1

    return v1

    .line 76
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method private isLeAudioProfileSupported(Landroid/bluetooth/IBluetoothManager;)Z
    .registers 6
    .param p1, "mManagerService"    # Landroid/bluetooth/IBluetoothManager;

    .line 85
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 87
    :cond_4
    :try_start_4
    invoke-interface {p1}, Landroid/bluetooth/IBluetoothManager;->isLeAudioProfileSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 88
    :catch_9
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothLeAudioFactoryImpl"

    const-string v3, "remote expection when calling isLeAudioProfileSupported"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    return v0
.end method


# virtual methods
.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 7
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 145
    const-string v0, "closeProfileProxy: profile="

    const-string v1, "BluetoothLeAudioFactoryImpl"

    const-string v2, "ums-cg"

    const/16 v3, 0x16

    if-ne p1, v3, :cond_1f

    .line 146
    const-string v3, "ums"

    invoke-static {v3}, Lcom/mediatek/bt/BluetoothLeAudioFactoryImpl;->isLeAudioProfileEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 147
    invoke-static {v2}, Lcom/mediatek/bt/BluetoothLeAudioFactoryImpl;->isLeAudioProfileEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 148
    :cond_18
    move-object v2, p2

    check-cast v2, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 149
    .local v2, "le_audio":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v2}, Lcom/mediatek/bt/BluetoothLeAudio;->close()V

    .line 150
    .end local v2    # "le_audio":Lcom/mediatek/bt/BluetoothLeAudio;
    goto :goto_52

    :cond_1f
    const/16 v3, 0x17

    if-ne p1, v3, :cond_2a

    .line 151
    move-object v2, p2

    check-cast v2, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 152
    .local v2, "vcs":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v2}, Lcom/mediatek/bt/BluetoothVolumeControl;->close()V

    .line 153
    .end local v2    # "vcs":Lcom/mediatek/bt/BluetoothVolumeControl;
    goto :goto_52

    :cond_2a
    const/16 v3, 0x1a

    if-ne p1, v3, :cond_3b

    .line 154
    invoke-static {v2}, Lcom/mediatek/bt/BluetoothLeAudioFactoryImpl;->isLeAudioProfileEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 155
    move-object v2, p2

    check-cast v2, Lcom/mediatek/bt/BluetoothTbs;

    .line 156
    .local v2, "tbs":Lcom/mediatek/bt/BluetoothTbs;
    invoke-virtual {v2}, Lcom/mediatek/bt/BluetoothTbs;->close()V

    .line 157
    .end local v2    # "tbs":Lcom/mediatek/bt/BluetoothTbs;
    goto :goto_52

    .line 158
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public connectLeAudio(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 269
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 270
    .local v0, "mService":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothLeAudio;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public connectVc(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 275
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 276
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothVolumeControl;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnectLeAudio(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 282
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 283
    .local v0, "mService":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothLeAudio;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnectVc(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 288
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 289
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothVolumeControl;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getLeAudioActiveDeviceChangedAction()Ljava/lang/String;
    .registers 2

    .line 239
    const-string v0, "android.bluetooth.action.LEAUDIO_ACTIVE_DEVICE_CHANGED"

    return-object v0
.end method

.method public getLeAudioActiveDevices(Landroid/bluetooth/BluetoothProfile;)Ljava/util/List;
    .registers 4
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothProfile;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 321
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 322
    .local v0, "mService":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v0}, Lcom/mediatek/bt/BluetoothLeAudio;->getActiveDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getLeAudioConfChangedAction()Ljava/lang/String;
    .registers 2

    .line 251
    const-string v0, "android.bluetooth.action.LEAUDIO_CONF_CHANGED"

    return-object v0
.end method

.method public getLeAudioConnectionPolicy(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 335
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 336
    .local v0, "mService":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothLeAudio;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getLeAudioConnectionRejectedAction()Ljava/lang/String;
    .registers 2

    .line 257
    const-string v0, "android.bluetooth.action.LEAUDIO_CONNECTION_REJECTED"

    return-object v0
.end method

.method public getLeAudioConnectionStateChangedAction()Ljava/lang/String;
    .registers 2

    .line 217
    const-string v0, "android.bluetooth.action.LEAUDIO_CONNECTION_STATE_CHANGED"

    return-object v0
.end method

.method public getLeAudioGroupIdExtra()Ljava/lang/String;
    .registers 2

    .line 263
    const-string v0, "android.bluetooth.extra.LEAUDIO_GROUP_ID"

    return-object v0
.end method

.method public getLeAudioPriority(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 295
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 296
    .local v0, "mService":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothLeAudio;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getLeAudioProfileId()I
    .registers 2

    .line 201
    const/16 v0, 0x16

    return v0
.end method

.method public getLeAudioSetMemberAvailableAction()Ljava/lang/String;
    .registers 2

    .line 245
    const-string v0, "android.bluetooth.action.LEAUDIO_SET_MEMBER_AVAILABLE"

    return-object v0
.end method

.method public getLeAudioUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 228
    sget-object v0, Lcom/mediatek/bt/BluetoothUuidEx;->LE_AUDIO:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getProfileCount()I
    .registers 2

    .line 166
    const/16 v0, 0x1a

    return v0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "succeed":Z
    const-string v1, "getProfileProxy: profile="

    const-string v2, "BluetoothLeAudioFactoryImpl"

    const-string v3, "ums-cg"

    const/16 v4, 0x16

    if-ne p3, v4, :cond_26

    .line 121
    const-string v4, "ums"

    invoke-static {v4}, Lcom/mediatek/bt/BluetoothLeAudioFactoryImpl;->isLeAudioProfileEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 122
    invoke-static {v3}, Lcom/mediatek/bt/BluetoothLeAudioFactoryImpl;->isLeAudioProfileEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 123
    :cond_19
    invoke-virtual {p0, p1}, Lcom/mediatek/bt/BluetoothLeAudioFactoryImpl;->isLeAudioProfileSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 124
    new-instance v3, Lcom/mediatek/bt/BluetoothLeAudio;

    invoke-direct {v3, p1, p2}, Lcom/mediatek/bt/BluetoothLeAudio;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 125
    .local v3, "le_audio":Lcom/mediatek/bt/BluetoothLeAudio;
    const/4 v0, 0x1

    .line 126
    .end local v3    # "le_audio":Lcom/mediatek/bt/BluetoothLeAudio;
    goto :goto_59

    .line 127
    :cond_26
    const/16 v4, 0x17

    if-ne p3, v4, :cond_31

    .line 128
    new-instance v3, Lcom/mediatek/bt/BluetoothVolumeControl;

    invoke-direct {v3, p1, p2}, Lcom/mediatek/bt/BluetoothVolumeControl;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 129
    .local v3, "vcs":Lcom/mediatek/bt/BluetoothVolumeControl;
    const/4 v0, 0x1

    .line 130
    .end local v3    # "vcs":Lcom/mediatek/bt/BluetoothVolumeControl;
    goto :goto_59

    :cond_31
    const/16 v4, 0x1a

    if-ne p3, v4, :cond_42

    .line 131
    invoke-static {v3}, Lcom/mediatek/bt/BluetoothLeAudioFactoryImpl;->isLeAudioProfileEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 132
    new-instance v3, Lcom/mediatek/bt/BluetoothTbs;

    invoke-direct {v3, p1, p2}, Lcom/mediatek/bt/BluetoothTbs;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 133
    .local v3, "tbs":Lcom/mediatek/bt/BluetoothTbs;
    const/4 v0, 0x1

    .line 134
    .end local v3    # "tbs":Lcom/mediatek/bt/BluetoothTbs;
    goto :goto_59

    .line 135
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not found!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_59
    :goto_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";succeed="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v0
.end method

.method public getSupportedProfiles(Landroid/bluetooth/IBluetoothManager;Ljava/util/List;)V
    .registers 4
    .param p1, "mManagerService"    # Landroid/bluetooth/IBluetoothManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/IBluetoothManager;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p2, "supportedProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/mediatek/bt/BluetoothLeAudioFactoryImpl;->isLeAudioProfileSupported(Landroid/bluetooth/IBluetoothManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 173
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_f
    return-void
.end method

.method public getTbsProfileId()I
    .registers 2

    .line 211
    const/16 v0, 0x1a

    return v0
.end method

.method public getVcConnectionPolicy(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 341
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 342
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothVolumeControl;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getVcConnectionStateChangedAction()Ljava/lang/String;
    .registers 2

    .line 223
    const-string v0, "android.bluetooth.action.VC_CONNECTION_STATE_CHANGED"

    return-object v0
.end method

.method public getVcPriority(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 301
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 302
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothVolumeControl;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getVcProfileId()I
    .registers 2

    .line 206
    const/16 v0, 0x17

    return v0
.end method

.method public getVcUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 233
    sget-object v0, Lcom/mediatek/bt/BluetoothUuidEx;->VOLUME_CONTROL:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public isLeAudioConnected(I)Z
    .registers 3
    .param p1, "profile"    # I

    .line 187
    const/16 v0, 0x16

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 188
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isLeAudioProfileSupported(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    const v1, 0x8080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 99
    .local v0, "mIsLeAudioProfileSupported":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLeAudioProfileSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothLeAudioFactoryImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "persist.sys.fflag.override.settings_bluetooth_le_audio"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 105
    .local v3, "isLeAudioEnabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set feature flag LE_AUDIO_SETTINGS to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v2, "settings_bluetooth_le_audio"

    invoke-static {p1, v2, v3}, Landroid/util/FeatureFlagUtils;->setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 107
    if-eqz v3, :cond_4f

    if-nez v0, :cond_4f

    .line 109
    const/4 v0, 0x1

    .line 112
    .end local v3    # "isLeAudioEnabled":Z
    :cond_4f
    return v0
.end method

.method public mute(Landroid/bluetooth/BluetoothProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;

    .line 379
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 380
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0}, Lcom/mediatek/bt/BluetoothVolumeControl;->mute()V

    .line 381
    return-void
.end method

.method public onLeAudioSystemReady(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 6
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 181
    const/16 v0, 0x16

    invoke-virtual {p1, p2, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 182
    const-string v0, "BluetoothLeAudioFactoryImpl"

    const-string v1, "onLeAudioSystemReady: profile=22"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public setLeAudioActiveDevice(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 328
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 329
    .local v0, "mService":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothLeAudio;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public setLeAudioConnectionPolicy(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "policy"    # I

    .line 348
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 349
    .local v0, "mService":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/bt/BluetoothLeAudio;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setLeAudioPriority(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "priority"    # I

    .line 308
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 309
    .local v0, "mService":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/bt/BluetoothLeAudio;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 310
    return-void
.end method

.method public setVcAbsoluteVolume(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "profile"    # Landroid/bluetooth/BluetoothProfile;

    .line 193
    move-object v0, p2

    check-cast v0, Lcom/mediatek/bt/BluetoothLeAudio;

    .line 194
    .local v0, "mLeAudio":Lcom/mediatek/bt/BluetoothLeAudio;
    invoke-virtual {v0, p1}, Lcom/mediatek/bt/BluetoothLeAudio;->setVcAbsoluteVolume(I)V

    .line 195
    return-void
.end method

.method public setVcConnectionPolicy(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "policy"    # I

    .line 354
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 355
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/bt/BluetoothVolumeControl;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setVcPriority(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "priority"    # I

    .line 314
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 315
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/bt/BluetoothVolumeControl;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 316
    return-void
.end method

.method public setVolume(Landroid/bluetooth/BluetoothProfile;I)V
    .registers 4
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "volume"    # I

    .line 361
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 362
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothVolumeControl;->setVolume(I)V

    .line 363
    return-void
.end method

.method public unmute(Landroid/bluetooth/BluetoothProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;

    .line 385
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 386
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0}, Lcom/mediatek/bt/BluetoothVolumeControl;->unmute()V

    .line 387
    return-void
.end method

.method public volumeDown(Landroid/bluetooth/BluetoothProfile;Z)V
    .registers 4
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "unmute"    # Z

    .line 373
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 374
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothVolumeControl;->volumeDown(Z)V

    .line 375
    return-void
.end method

.method public volumeUp(Landroid/bluetooth/BluetoothProfile;Z)V
    .registers 4
    .param p1, "profile"    # Landroid/bluetooth/BluetoothProfile;
    .param p2, "unmute"    # Z

    .line 367
    move-object v0, p1

    check-cast v0, Lcom/mediatek/bt/BluetoothVolumeControl;

    .line 368
    .local v0, "mService":Lcom/mediatek/bt/BluetoothVolumeControl;
    invoke-virtual {v0, p2}, Lcom/mediatek/bt/BluetoothVolumeControl;->volumeUp(Z)V

    .line 369
    return-void
.end method
