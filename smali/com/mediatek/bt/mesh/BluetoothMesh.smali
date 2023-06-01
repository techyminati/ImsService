.class public final Lcom/mediatek/bt/mesh/BluetoothMesh;
.super Ljava/lang/Object;
.source "BluetoothMesh.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothMesh"

.field private static final VDBG:Z = true

.field private static volatile sInstance:Lcom/mediatek/bt/mesh/BluetoothMesh;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothMeshCallback:Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

.field private mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

.field private mModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/bt/mesh/MeshModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Lcom/mediatek/bt/mesh/IBluetoothMesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mModelMap:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/mediatek/bt/mesh/BluetoothMesh$1;

    const-class v1, Lcom/mediatek/bt/mesh/IBluetoothMesh;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x19

    const-string v5, "BluetoothMesh"

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/bt/mesh/BluetoothMesh$1;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 95
    new-instance v1, Lcom/mediatek/bt/mesh/BluetoothMesh$2;

    invoke-direct {v1, p0}, Lcom/mediatek/bt/mesh/BluetoothMesh$2;-><init>(Lcom/mediatek/bt/mesh/BluetoothMesh;)V

    iput-object v1, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mBluetoothMeshCallback:Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    .line 258
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 259
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 260
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bt/mesh/BluetoothMesh;)Lcom/mediatek/bt/mesh/BluetoothMeshCallback;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 74
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bt/mesh/BluetoothMesh;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 74
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mModelMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getDefaultMesh(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Lcom/mediatek/bt/mesh/BluetoothMesh;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 272
    if-eqz p0, :cond_13

    if-nez p1, :cond_5

    goto :goto_13

    .line 273
    :cond_5
    sget-object v0, Lcom/mediatek/bt/mesh/BluetoothMesh;->sInstance:Lcom/mediatek/bt/mesh/BluetoothMesh;

    if-nez v0, :cond_10

    .line 274
    new-instance v0, Lcom/mediatek/bt/mesh/BluetoothMesh;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/bt/mesh/BluetoothMesh;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    sput-object v0, Lcom/mediatek/bt/mesh/BluetoothMesh;->sInstance:Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 276
    :cond_10
    sget-object v0, Lcom/mediatek/bt/mesh/BluetoothMesh;->sInstance:Lcom/mediatek/bt/mesh/BluetoothMesh;

    return-object v0

    .line 272
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/bt/mesh/IBluetoothMesh;

    return-object v0
.end method

.method private isBluetoothEnabled()Z
    .registers 3

    .line 1436
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    .line 1437
    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public accessModelReply(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;)I
    .registers 9
    .param p1, "handle"    # I
    .param p2, "msg"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    .param p3, "reply"    # Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;

    .line 1096
    const-string v0, "BluetoothMesh"

    const-string v1, "accessModelReply"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1099
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1100
    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->accessModelReply(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;Lcom/mediatek/bt/mesh/BluetoothMeshAccessTxMessage;)I

    move-result v0

    return v0

    .line 1102
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1103
    :cond_20
    return v1

    .line 1104
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1105
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return v1
.end method

.method public addDevKey(I[I[I)I
    .registers 9
    .param p1, "unicastAddr"    # I
    .param p2, "devicekey"    # [I
    .param p3, "uuid"    # [I

    .line 1006
    const-string v0, "BluetoothMesh"

    const-string v1, "addDevKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1009
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1010
    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->addDevKey(I[I[I)I

    move-result v0

    return v0

    .line 1012
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1013
    :cond_20
    return v1

    .line 1014
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1015
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return v1
.end method

.method public addElement(I)I
    .registers 7
    .param p1, "location"    # I

    .line 490
    const-string v0, "BluetoothMesh"

    const-string v1, "addElement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 493
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 494
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->addElement(I)I

    move-result v0

    return v0

    .line 496
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 497
    :cond_20
    return v1

    .line 498
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 499
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v1
.end method

.method public addModel(Lcom/mediatek/bt/mesh/MeshModel;)I
    .registers 8
    .param p1, "model"    # Lcom/mediatek/bt/mesh/MeshModel;

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addModel modelopcode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshModel;->getModelOpcode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",elementIndex=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshModel;->getElementIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v0, -0x1

    :try_start_2f
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 555
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_63

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 556
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->addModel(Lcom/mediatek/bt/mesh/MeshModel;)I

    move-result v3

    .line 557
    .local v3, "modelHandle":I
    if-le v3, v0, :cond_4a

    .line 558
    iget-object v4, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mModelMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addModel modelHandle=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return v3

    .line 563
    .end local v3    # "modelHandle":I
    :cond_63
    if-nez v2, :cond_6a

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_6a} :catch_6b

    .line 564
    :cond_6a
    return v0

    .line 565
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_6b
    move-exception v2

    .line 566
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return v0
.end method

.method public bearerAdvSetParams(JIIIJII)I
    .registers 27
    .param p1, "advPeriod"    # J
    .param p3, "minInterval"    # I
    .param p4, "maxInterval"    # I
    .param p5, "resend"    # I
    .param p6, "scanPeriod"    # J
    .param p8, "scanInterval"    # I
    .param p9, "scanWindow"    # I

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bearerAdvSetParams:advPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", minInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resend="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p5

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scanPeriod="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p6

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", scanInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scanWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "BluetoothMesh"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/16 v16, -0x1

    :try_start_56
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v0

    .line 1291
    .local v0, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v0, :cond_77

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v2
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_60} :catch_83

    if-eqz v2, :cond_77

    .line 1292
    move-object v2, v0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v1, v7

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    :try_start_72
    invoke-interface/range {v2 .. v11}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->bearerAdvSetParams(JIIIJII)I

    move-result v1

    return v1

    .line 1291
    :cond_77
    move-object v1, v7

    .line 1294
    if-nez v0, :cond_82

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7f} :catch_80

    goto :goto_82

    .line 1296
    .end local v0    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_80
    move-exception v0

    goto :goto_85

    .line 1295
    .restart local v0    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :cond_82
    :goto_82
    return v16

    .line 1296
    .end local v0    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_83
    move-exception v0

    move-object v1, v7

    .line 1297
    .local v0, "e":Landroid/os/RemoteException;
    :goto_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return v16
.end method

.method public close()V
    .registers 3

    .line 280
    const-string v0, "BluetoothMesh"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 282
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/bt/mesh/BluetoothMesh;->sInstance:Lcom/mediatek/bt/mesh/BluetoothMesh;

    .line 283
    return-void
.end method

.method public delDevKey(I)I
    .registers 7
    .param p1, "unicastAddr"    # I

    .line 1051
    const-string v0, "BluetoothMesh"

    const-string v1, "delDevKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1054
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1055
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->delDevKey(I)I

    move-result v0

    return v0

    .line 1057
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1058
    :cond_20
    return v1

    .line 1059
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1060
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    return v1
.end method

.method public disable()I
    .registers 6

    .line 438
    const-string v0, "BluetoothMesh"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 441
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 442
    invoke-interface {v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->disable()I

    move-result v0

    return v0

    .line 444
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 445
    :cond_20
    return v1

    .line 446
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 447
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return v1
.end method

.method public disableMeshFilter()I
    .registers 6

    .line 1415
    const-string v0, "BluetoothMesh"

    const-string v1, "disableMeshFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1418
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1419
    invoke-interface {v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->disableMeshFilter()I

    move-result v0

    return v0

    .line 1421
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1422
    :cond_20
    return v1

    .line 1423
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1424
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return v1
.end method

.method public enable(Lcom/mediatek/bt/mesh/MeshInitParams;)I
    .registers 7
    .param p1, "params"    # Lcom/mediatek/bt/mesh/MeshInitParams;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable, role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/bt/mesh/MeshInitParams;->getRole()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v0, -0x1

    :try_start_1b
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 421
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_2c

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 422
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->enable(Lcom/mediatek/bt/mesh/MeshInitParams;)I

    move-result v0

    return v0

    .line 424
    :cond_2c
    if-nez v2, :cond_33

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_33} :catch_34

    .line 425
    :cond_33
    return v0

    .line 426
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_34
    move-exception v2

    .line 427
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v0
.end method

.method public enableMeshFilter(ZZZZ)I
    .registers 10
    .param p1, "pbAdv"    # Z
    .param p2, "meshMessage"    # Z
    .param p3, "unprovBeacon"    # Z
    .param p4, "secureBeacon"    # Z

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMeshFilter: pbAdv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", meshMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unprovBeacon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", secureBeacon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/4 v0, -0x1

    :try_start_2f
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1360
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_40

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1361
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->enableMeshFilter(ZZZZ)I

    move-result v0

    return v0

    .line 1363
    :cond_40
    if-nez v2, :cond_47

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_47} :catch_48

    .line 1364
    :cond_47
    return v0

    .line 1365
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_48
    move-exception v2

    .line 1366
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    return v0
.end method

.method public enableMeshFilterWithNetwork(ZZ[IZZ[I)I
    .registers 23
    .param p1, "pbAdv"    # Z
    .param p2, "meshMessageWithNID"    # Z
    .param p3, "meshMessageNetIndex"    # [I
    .param p4, "unprovBeacon"    # Z
    .param p5, "secureBeaconWithNetworkID"    # Z
    .param p6, "secureBeaconNetIndex"    # [I

    .line 1385
    move-object/from16 v8, p3

    move-object/from16 v9, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMeshFilterWithNetwork: pbAdv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", meshMessageWithNID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", meshMessageNetIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unprovBeacon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", secureBeaconWithNetworkID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", secureBeaconNetIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1385
    const-string v14, "BluetoothMesh"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v0, 0x4

    if-eqz v8, :cond_58

    array-length v1, v8

    if-gt v1, v0, :cond_5d

    :cond_58
    if-eqz v9, :cond_64

    array-length v1, v9

    if-le v1, v0, :cond_64

    .line 1391
    :cond_5d
    const-string v0, "enableMeshFilterWithNetwork exceed the supported max network number 4"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const/4 v0, -0x2

    return v0

    .line 1396
    :cond_64
    const/4 v15, -0x1

    :try_start_65
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v0

    .line 1397
    .local v0, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v0, :cond_83

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1398
    move-object v1, v0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->enableMeshFilterWithNetwork(ZZ[IZZ[I)I

    move-result v1

    return v1

    .line 1400
    :cond_83
    if-nez v0, :cond_8a

    const-string v1, "Proxy not attached to service"

    invoke-static {v14, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_8a} :catch_8b

    .line 1401
    :cond_8a
    return v15

    .line 1402
    .end local v0    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_8b
    move-exception v0

    .line 1403
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    return v15
.end method

.method public gattConnect(Ljava/lang/String;II)I
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "addressType"    # I
    .param p3, "serviceType"    # I

    .line 1169
    const-string v0, "BluetoothMesh"

    const-string v1, "gattConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1172
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1173
    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->gattConnect(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 1175
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1176
    :cond_20
    return v1

    .line 1177
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1178
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    return v1
.end method

.method public gattDisconnect()I
    .registers 6

    .line 1189
    const-string v0, "BluetoothMesh"

    const-string v1, "gattDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1192
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1193
    invoke-interface {v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->gattDisconnect()I

    move-result v0

    return v0

    .line 1195
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1196
    :cond_20
    return v1

    .line 1197
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1198
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return v1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultTtl()I
    .registers 6

    .line 960
    const-string v0, "BluetoothMesh"

    const-string v1, "getDefaultTtl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 963
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 964
    invoke-interface {v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getDefaultTtl()I

    move-result v0

    return v0

    .line 966
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 967
    :cond_20
    return v1

    .line 968
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 969
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    return v1
.end method

.method public getDevKey(I)[I
    .registers 7
    .param p1, "unicastAddr"    # I

    .line 1029
    const-string v0, "BluetoothMesh"

    const-string v1, "getDevKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1032
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1033
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getDevKey(I)[I

    move-result-object v0

    return-object v0

    .line 1035
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1036
    :cond_20
    return-object v1

    .line 1037
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1038
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    return-object v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 3
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementAddr(I)I
    .registers 7
    .param p1, "elementIndex"    # I

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getElementAddr by elementIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v0, -0x1

    :try_start_17
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 924
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_28

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 925
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getElementAddr(I)I

    move-result v0

    return v0

    .line 927
    :cond_28
    if-nez v2, :cond_2f

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2f} :catch_30

    .line 928
    :cond_2f
    return v0

    .line 929
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_30
    move-exception v2

    .line 930
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return v0
.end method

.method public getMeshRole()I
    .registers 7

    .line 373
    const-string v0, "BluetoothMesh"

    const-string v1, "getMeshRole"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 376
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_2d

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 377
    invoke-interface {v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getMeshRole()I

    move-result v3

    .line 378
    .local v3, "role":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMeshRole role="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v3

    .line 381
    .end local v3    # "role":I
    :cond_2d
    if-nez v2, :cond_34

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_35

    .line 382
    :cond_34
    return v1

    .line 383
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_35
    move-exception v2

    .line 384
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v1
.end method

.method public getMeshState()Z
    .registers 7

    .line 395
    const-string v0, "BluetoothMesh"

    const-string v1, "getMeshState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 398
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_2d

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 399
    invoke-interface {v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getMeshState()Z

    move-result v3

    .line 400
    .local v3, "state":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMeshState state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v3

    .line 403
    .end local v3    # "state":Z
    :cond_2d
    if-nez v2, :cond_34

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_35

    .line 404
    :cond_34
    return v1

    .line 405
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_35
    move-exception v2

    .line 406
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v1
.end method

.method public getModelHandle(JI)I
    .registers 9
    .param p1, "modelId"    # J
    .param p3, "elementIndex"    # I

    .line 1137
    const-string v0, "BluetoothMesh"

    const-string v1, "getModelHandle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1140
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1141
    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getModelHandle(JI)I

    move-result v0

    return v0

    .line 1143
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1144
    :cond_20
    return v1

    .line 1145
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1146
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return v1
.end method

.method public getVersion()Ljava/lang/String;
    .registers 6

    .line 900
    const-string v0, "BluetoothMesh"

    const-string v1, "getVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 903
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 904
    invoke-interface {v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 906
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 907
    :cond_20
    return-object v1

    .line 908
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 909
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-object v1
.end method

.method public inviteProvisioning([II)I
    .registers 8
    .param p1, "UUID"    # [I
    .param p2, "attentionDuration"    # I

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inviteProvisioning with UUID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v0, -0x1

    :try_start_1b
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 660
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_2c

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 661
    invoke-interface {v2, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->inviteProvisioning([II)I

    move-result v0

    return v0

    .line 663
    :cond_2c
    if-nez v2, :cond_33

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_33} :catch_34

    .line 664
    :cond_33
    return v0

    .line 665
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_34
    move-exception v2

    .line 666
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return v0
.end method

.method public modelAppBind(II)I
    .registers 8
    .param p1, "handle"    # I
    .param p2, "appIndex"    # I

    .line 1073
    const-string v0, "BluetoothMesh"

    const-string v1, "setModelAppBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1076
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1077
    invoke-interface {v2, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->modelAppBind(II)I

    move-result v0

    return v0

    .line 1079
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1080
    :cond_20
    return v1

    .line 1081
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1082
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return v1
.end method

.method public otaGetClientModelHandle()[I
    .registers 6

    .line 1232
    const-string v0, "BluetoothMesh"

    const-string v1, "otaGetClientModelHandle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1235
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1236
    invoke-interface {v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->otaGetClientModelHandle()[I

    move-result-object v0

    return-object v0

    .line 1238
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1239
    :cond_20
    return-object v1

    .line 1240
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1241
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return-object v1
.end method

.method public otaInitiatorOperation(Lcom/mediatek/bt/mesh/OtaOperationParams;)I
    .registers 7
    .param p1, "params"    # Lcom/mediatek/bt/mesh/OtaOperationParams;

    .line 1259
    const-string v0, "BluetoothMesh"

    const-string v1, "otaInitiatorOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1262
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1263
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->otaInitiatorOperation(Lcom/mediatek/bt/mesh/OtaOperationParams;)I

    move-result v0

    return v0

    .line 1265
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1266
    :cond_20
    return v1

    .line 1267
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1268
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    return v1
.end method

.method public publishModel(III[I)I
    .registers 10
    .param p1, "modelHandle"    # I
    .param p2, "opCode"    # I
    .param p3, "companyId"    # I
    .param p4, "buffer"    # [I

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishModel modelHandle=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v0, -0x1

    :try_start_1b
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 803
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_2c

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 804
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->publishModel(III[I)I

    move-result v0

    return v0

    .line 806
    :cond_2c
    if-nez v2, :cond_33

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_33} :catch_34

    .line 807
    :cond_33
    return v0

    .line 808
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_34
    move-exception v2

    .line 809
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return v0
.end method

.method public registerCallback(Lcom/mediatek/bt/mesh/BluetoothMeshCallback;)Z
    .registers 7
    .param p1, "callback"    # Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    .line 303
    const-string v0, "BluetoothMesh"

    const-string v1, "registerCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v1

    .line 305
    .local v1, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    return v2

    .line 307
    :cond_f
    iput-object p1, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    .line 310
    :try_start_11
    iget-object v3, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mBluetoothMeshCallback:Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    invoke-interface {v1, v3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->registerCallback(Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_19

    .line 314
    nop

    .line 316
    const/4 v0, 0x1

    return v0

    .line 311
    :catch_19
    move-exception v3

    .line 312
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, ""

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    return v2
.end method

.method public resetData(I)Z
    .registers 7
    .param p1, "sector"    # I

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetData, sector=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v0, 0x0

    :try_start_1b
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 859
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_2c

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 860
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->resetData(I)Z

    move-result v0

    return v0

    .line 862
    :cond_2c
    if-nez v2, :cond_33

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_33} :catch_34

    .line 863
    :cond_33
    return v0

    .line 864
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_34
    move-exception v2

    .line 865
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return v0
.end method

.method public saveData()Z
    .registers 6

    .line 876
    const-string v0, "BluetoothMesh"

    const-string v1, "saveData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 879
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 880
    invoke-interface {v2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->saveData()Z

    move-result v0

    return v0

    .line 882
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 883
    :cond_20
    return v1

    .line 884
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 885
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return v1
.end method

.method public sendConfigMessage(IIIIILcom/mediatek/bt/mesh/ConfigMessageParams;)I
    .registers 17
    .param p1, "dst"    # I
    .param p2, "src"    # I
    .param p3, "ttl"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "opcode"    # I
    .param p6, "param"    # Lcom/mediatek/bt/mesh/ConfigMessageParams;

    .line 749
    const-string v1, "BluetoothMesh"

    const-string v0, "sendConfigMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v2, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v0

    .line 752
    .local v0, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 753
    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->sendConfigMessage(IIIIILcom/mediatek/bt/mesh/ConfigMessageParams;)I

    move-result v1

    return v1

    .line 755
    :cond_21
    if-nez v0, :cond_28

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_28} :catch_29

    .line 756
    :cond_28
    return v2

    .line 757
    .end local v0    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_29
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return v2
.end method

.method public sendPacket(IIIII[I)I
    .registers 17
    .param p1, "dst"    # I
    .param p2, "src"    # I
    .param p3, "ttl"    # I
    .param p4, "netKeyIndex"    # I
    .param p5, "appKeyIndex"    # I
    .param p6, "payload"    # [I

    .line 776
    const-string v1, "BluetoothMesh"

    const-string v0, "sendPacket"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v2, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v0

    .line 779
    .local v0, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 780
    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->sendPacket(IIIII[I)I

    move-result v1

    return v1

    .line 782
    :cond_21
    if-nez v0, :cond_28

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_28} :catch_29

    .line 783
    :cond_28
    return v2

    .line 784
    .end local v0    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_29
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return v2
.end method

.method public setAppkey(I[III)I
    .registers 10
    .param p1, "op"    # I
    .param p2, "key"    # [I
    .param p3, "netIndex"    # I
    .param p4, "appIndex"    # I

    .line 614
    const-string v0, "BluetoothMesh"

    const-string v1, "setAppkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 617
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 618
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setAppkey(I[III)I

    move-result v0

    return v0

    .line 620
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 621
    :cond_20
    return v1

    .line 622
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 623
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return v1
.end method

.method public setCompositionDataHeader([I)Z
    .registers 7
    .param p1, "data"    # [I

    .line 459
    const-string v0, "BluetoothMesh"

    const-string v1, "setCompositionDataHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 462
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 463
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setCompositionDataHeader([I)Z

    move-result v0

    return v0

    .line 465
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 466
    :cond_20
    return v1

    .line 467
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 468
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v1
.end method

.method public setData()V
    .registers 1

    .line 891
    return-void
.end method

.method public setDefaultTtl(I)V
    .registers 6
    .param p1, "ttl"    # I

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultTtl ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :try_start_16
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v0

    .line 945
    .local v0, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 946
    invoke-interface {v0, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setDefaultTtl(I)V

    .line 948
    :cond_25
    if-nez v0, :cond_2c

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2c} :catch_2d

    .line 951
    .end local v0    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :cond_2c
    goto :goto_4b

    .line 949
    :catch_2d
    move-exception v0

    .line 950
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4b
    return-void
.end method

.method public setElementAddr(I)Z
    .registers 7
    .param p1, "addr"    # I

    .line 511
    const-string v0, "BluetoothMesh"

    const-string v1, "setElementAddr"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 514
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 515
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setElementAddr(I)Z

    move-result v0

    return v0

    .line 517
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 518
    :cond_20
    return v1

    .line 519
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 520
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v1
.end method

.method public setHeartbeatPeriod(IJ)I
    .registers 9
    .param p1, "num"    # I
    .param p2, "hbTimeout"    # J

    .line 1211
    const-string v0, "BluetoothMesh"

    const-string v1, "setHeartbeatPeriod"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1214
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1215
    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setHeartbeatPeriod(IJ)I

    move-result v0

    return v0

    .line 1217
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 1218
    :cond_20
    return v1

    .line 1219
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 1220
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return v1
.end method

.method public setIv(JI)I
    .registers 9
    .param p1, "ivIndex"    # J
    .param p3, "ivPhase"    # I

    .line 982
    const-string v0, "BluetoothMesh"

    const-string v1, "setIv"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 985
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 986
    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setIv(JI)I

    move-result v0

    return v0

    .line 988
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 989
    :cond_20
    return v1

    .line 990
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 991
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return v1
.end method

.method public setLogLevel(J)V
    .registers 7
    .param p1, "level"    # J

    .line 1117
    const-string v0, "BluetoothMesh"

    const-string v1, "setLogLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v1

    .line 1120
    .local v1, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1121
    invoke-interface {v1, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setLogLevel(J)V

    .line 1123
    :cond_16
    if-nez v1, :cond_1d

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1d} :catch_1e

    .line 1126
    .end local v1    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :cond_1d
    goto :goto_3c

    .line 1124
    :catch_1e
    move-exception v1

    .line 1125
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method

.method public setMeshMode(I)I
    .registers 7
    .param p1, "mode"    # I

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMeshMode mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v0, -0x1

    :try_start_17
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 828
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_28

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 829
    invoke-interface {v2, p1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setMeshMode(I)I

    move-result v0

    return v0

    .line 831
    :cond_28
    if-nez v2, :cond_2f

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2f} :catch_30

    .line 832
    :cond_2f
    return v0

    .line 833
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_30
    move-exception v2

    .line 834
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return v0
.end method

.method public setNetkey(I[II)I
    .registers 9
    .param p1, "op"    # I
    .param p2, "key"    # [I
    .param p3, "netIndex"    # I

    .line 585
    const-string v0, "BluetoothMesh"

    const-string v1, "setNetkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v1, -0x1

    :try_start_8
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 588
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 589
    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setNetkey(I[II)I

    move-result v0

    return v0

    .line 591
    :cond_19
    if-nez v2, :cond_20

    const-string v3, "Proxy not attached to service"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_21

    .line 592
    :cond_20
    return v1

    .line 593
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_21
    move-exception v2

    .line 594
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return v1
.end method

.method public setProvisionFactor(I[I)I
    .registers 8
    .param p1, "type"    # I
    .param p2, "buf"    # [I

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProvisionFactor type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/4 v0, -0x1

    :try_start_17
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 724
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_28

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 725
    invoke-interface {v2, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setProvisionFactor(I[I)I

    move-result v0

    return v0

    .line 727
    :cond_28
    if-nez v2, :cond_2f

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2f} :catch_30

    .line 728
    :cond_2f
    return v0

    .line 729
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_30
    move-exception v2

    .line 730
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return v0
.end method

.method public setScanParams(II)I
    .registers 8
    .param p1, "scanInterval"    # I
    .param p2, "scanWindow"    # I

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScanParams: scanInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scanWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v0, -0x1

    :try_start_1f
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1312
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_30

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1313
    invoke-interface {v2, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setScanParams(II)I

    move-result v0

    return v0

    .line 1315
    :cond_30
    if-nez v2, :cond_37

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_37} :catch_38

    .line 1316
    :cond_37
    return v0

    .line 1317
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_38
    move-exception v2

    .line 1318
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return v0
.end method

.method public setSpecialPktParams(ZIII)I
    .registers 10
    .param p1, "isSnIncrease"    # Z
    .param p2, "snIncreaseInterval"    # I
    .param p3, "advInterval"    # I
    .param p4, "advPeriod"    # I

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpecialPktParams: isSnIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", snIncreaseInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", advInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",advPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/4 v0, -0x1

    :try_start_2f
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v2

    .line 1335
    .local v2, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v2, :cond_40

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1336
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->setSpecialPktParams(ZIII)I

    move-result v0

    return v0

    .line 1338
    :cond_40
    if-nez v2, :cond_47

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_47} :catch_48

    .line 1339
    :cond_47
    return v0

    .line 1340
    .end local v2    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_48
    move-exception v2

    .line 1341
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return v0
.end method

.method public startProvisioning(IIIII[IIJIII)I
    .registers 29
    .param p1, "algorithm"    # I
    .param p2, "publicKey"    # I
    .param p3, "authMethod"    # I
    .param p4, "authAction"    # I
    .param p5, "authSize"    # I
    .param p6, "netkey"    # [I
    .param p7, "netkeyIndex"    # I
    .param p8, "ivIndex"    # J
    .param p10, "addr"    # I
    .param p11, "flags"    # I
    .param p12, "mode"    # I

    .line 689
    const-string v1, "BluetoothMesh"

    const-string v0, "startProvisioning"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v2, -0x1

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v0

    .line 692
    .local v0, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v0, :cond_30

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 693
    move-object v3, v0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->startProvisioning(IIIII[IIJIII)I

    move-result v1

    return v1

    .line 696
    :cond_30
    if-nez v0, :cond_37

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_37} :catch_38

    .line 697
    :cond_37
    return v2

    .line 698
    .end local v0    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :catch_38
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return v2
.end method

.method public unProvisionScan(ZI)V
    .registers 7
    .param p1, "start"    # Z
    .param p2, "duration"    # I

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unProvisionScan start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMesh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :try_start_16
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v0

    .line 639
    .local v0, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->isBluetoothEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 640
    invoke-interface {v0, p1, p2}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->unProvisionScan(ZI)V

    .line 641
    return-void

    .line 643
    :cond_26
    if-nez v0, :cond_2d

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_2e

    .line 646
    .end local v0    # "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    :cond_2d
    goto :goto_4c

    .line 644
    :catch_2e
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4c
    return-void
.end method

.method public unregisterCallback()Z
    .registers 6

    .line 323
    const-string v0, "BluetoothMesh"

    const-string v1, "unregisterCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0}, Lcom/mediatek/bt/mesh/BluetoothMesh;->getService()Lcom/mediatek/bt/mesh/IBluetoothMesh;

    move-result-object v1

    .line 325
    .local v1, "service":Lcom/mediatek/bt/mesh/IBluetoothMesh;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    return v2

    .line 327
    :cond_f
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/bt/mesh/BluetoothMesh;->mCallback:Lcom/mediatek/bt/mesh/BluetoothMeshCallback;

    .line 330
    :try_start_12
    invoke-interface {v1}, Lcom/mediatek/bt/mesh/IBluetoothMesh;->unregisterCallback()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    .line 334
    nop

    .line 336
    const/4 v0, 0x1

    return v0

    .line 331
    :catch_18
    move-exception v3

    .line 332
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, ""

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    return v2
.end method
