.class public Lcom/mediatek/bt/mesh/model/ConfigurationClientModel;
.super Lcom/mediatek/bt/mesh/MeshModel;
.source "ConfigurationClientModel.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ConfigurationClientModel"


# direct methods
.method public constructor <init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V
    .registers 3
    .param p1, "meshInst"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 37
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bt/mesh/MeshModel;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public configAppkeyAdd(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 159
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configAppkeyAdd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 161
    return-void
.end method

.method public configAppkeyDel(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 169
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configAppkeyDel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 171
    return-void
.end method

.method public configAppkeyGet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 174
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configAppkeyGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 176
    return-void
.end method

.method public configAppkeyUpdate(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 164
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configAppkeyUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 166
    return-void
.end method

.method public configBeaconGet()V
    .registers 3

    .line 47
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configBeaconGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 49
    return-void
.end method

.method public configBeaconSet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 2
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 51
    return-void
.end method

.method public configCompositionDataGet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 54
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configCompositionDataGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 56
    return-void
.end method

.method public configDefaultTtlGet()V
    .registers 3

    .line 59
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configDefaultTtlGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 61
    return-void
.end method

.method public configDefaultTtlSet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 64
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configDefaultTTLSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 66
    return-void
.end method

.method public configFriendGet()V
    .registers 3

    .line 79
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configFriendGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 81
    return-void
.end method

.method public configFriendSet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 84
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configFriendSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 86
    return-void
.end method

.method public configGattProxyGet()V
    .registers 3

    .line 69
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configGattProxyGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 71
    return-void
.end method

.method public configGattProxySet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 74
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configGattProxySet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 76
    return-void
.end method

.method public configHbPubGet()V
    .registers 3

    .line 224
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configHbPubGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 226
    return-void
.end method

.method public configHbPubSet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 229
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configHbPubSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 231
    return-void
.end method

.method public configHbSubGet()V
    .registers 3

    .line 234
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configHbSubGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 236
    return-void
.end method

.method public configHbSubSet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 239
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configHbSubSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 241
    return-void
.end method

.method public configKeyRefreshPhaseGet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 214
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configKeyRefreshPhaseGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 216
    return-void
.end method

.method public configKeyRefreshPhaseSet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 219
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configKeyRefreshPhaseSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 221
    return-void
.end method

.method public configModelAppBind(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 179
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configModelAppBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 181
    return-void
.end method

.method public configModelAppUnbind(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 184
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configModelAppUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 186
    return-void
.end method

.method public configModelPubGet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 99
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configModelPubGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 101
    return-void
.end method

.method public configModelPubSet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 104
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configModelPubSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 106
    return-void
.end method

.method public configModelSubAdd(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 109
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configModelSubAdd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 111
    return-void
.end method

.method public configModelSubDel(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 114
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configModelSubDel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 116
    return-void
.end method

.method public configModelSubDelAll(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 124
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configModelSubDelAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 126
    return-void
.end method

.method public configModelSubOw(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 119
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configModelSubOw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 121
    return-void
.end method

.method public configNetkeyAdd(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 139
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configNetkeyAdd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 141
    return-void
.end method

.method public configNetkeyDel(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 149
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configNetkeyDel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 151
    return-void
.end method

.method public configNetkeyGet()V
    .registers 3

    .line 154
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configNetkeyGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 156
    return-void
.end method

.method public configNetkeyUpdate(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 144
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configNetkeyUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 146
    return-void
.end method

.method public configNetworkTransmitGet()V
    .registers 3

    .line 244
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configNetworkTransmitGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 246
    return-void
.end method

.method public configNetworkTransmitSet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 249
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configNetworkTransmitSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 251
    return-void
.end method

.method public configNodeIdentityGet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 199
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configNodeIdentityGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 201
    return-void
.end method

.method public configNodeIdentitySet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 204
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configNodeIdentitySet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 206
    return-void
.end method

.method public configNodeReset()V
    .registers 3

    .line 209
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configNodeReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 211
    return-void
.end method

.method public configRelayGet()V
    .registers 3

    .line 89
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configRelayGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage()V

    .line 91
    return-void
.end method

.method public configRelaySet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 94
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configRelaySet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 96
    return-void
.end method

.method public configSigModelAppGet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 189
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configSigModelAppGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 191
    return-void
.end method

.method public configSigModelSubGet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 129
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configSigModelSubGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 131
    return-void
.end method

.method public configVendorModelAppGet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 194
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configVendorModelAppGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 196
    return-void
.end method

.method public configVendorModelSubGet(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V
    .registers 4
    .param p1, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 134
    const-string v0, "ConfigurationClientModel"

    const-string v1, "configVendorModelSubGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0, p1}, Lcom/mediatek/bt/mesh/MeshModel;->modelSendConfigMessage(Lcom/mediatek/bt/mesh/ConfigMessageParams;)V

    .line 136
    return-void
.end method

.method public setConfigMessageHeader(IIIII)V
    .registers 8
    .param p1, "src"    # I
    .param p2, "dst"    # I
    .param p3, "ttl"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "msgOpCode"    # I

    .line 41
    const-string v0, "ConfigurationClientModel"

    const-string v1, "setConfigMessageHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/mediatek/bt/mesh/MeshModel;->setConfigMessageHeader(IIIII)V

    .line 43
    return-void
.end method
