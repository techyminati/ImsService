.class public Lcom/mediatek/ims/internal/VTSource;
.super Ljava/lang/Object;
.source "VTSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/VTSource$DeviceHandler;,
        Lcom/mediatek/ims/internal/VTSource$HandlerExecutor;,
        Lcom/mediatek/ims/internal/VTSource$Resolution;,
        Lcom/mediatek/ims/internal/VTSource$EventCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_HARWARE_LEVEL_1:I = 0x1

.field public static final CAMERA_HARWARE_LEVEL_3:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VT SRC"

.field private static final TIME_OUT_MS:I = 0x1964

.field public static final VT_SRV_CALL_3G:I = 0x1

.field public static final VT_SRV_CALL_4G:I = 0x2

.field protected static sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

.field protected static sContext:Landroid/content/Context;


# instance fields
.field private mCachedPreviewSurface:Landroid/view/Surface;

.field private mCachedRecordSurface:Landroid/view/Surface;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

.field private mIsWaitRelease:Z

.field private mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mMode:I

.field private mNeedRecordStream:Z

.field private mRequestHandler:Landroid/os/Handler;

.field private mRequestThread:Landroid/os/HandlerThread;

.field private mStopPreviewAndRecord:Z

.field private mTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/VTSource;->mIsWaitRelease:Z

    .line 129
    iput-boolean v0, p0, Lcom/mediatek/ims/internal/VTSource;->mStopPreviewAndRecord:Z

    .line 132
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 221
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMode:I

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    .line 223
    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 224
    return-void
.end method

.method public constructor <init>(IILcom/mediatek/ims/internal/VTSource$EventCallback;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "cb"    # Lcom/mediatek/ims/internal/VTSource$EventCallback;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/VTSource;->mIsWaitRelease:Z

    .line 129
    iput-boolean v0, p0, Lcom/mediatek/ims/internal/VTSource;->mStopPreviewAndRecord:Z

    .line 132
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT SRC - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INT] [VTSource] Start, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput p1, p0, Lcom/mediatek/ims/internal/VTSource;->mMode:I

    .line 214
    iput-object p3, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    .line 215
    sget-object v0, Lcom/mediatek/ims/internal/VTSource;->sContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 216
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->createRequestThreadAndHandler()V

    .line 217
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    const-string v1, "[INT] [VTSource] Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method private IsHandlerThreadUnavailable()Z
    .locals 5

    .line 591
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/ims/internal/VTSource;->mIsWaitRelease:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    return v1

    .line 592
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread = null:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestThread:Landroid/os/HandlerThread;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    move v1, v4

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsWaitRelease:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/internal/VTSource;->mIsWaitRelease:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return v4
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/VTSource;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/VTSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;

    .line 61
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/VTSource;->mStopPreviewAndRecord:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/ims/internal/VTSource;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/VTSource;->mStopPreviewAndRecord:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/internal/VTSource;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mCachedPreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/internal/VTSource;->mCachedPreviewSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/VTSource;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mCachedRecordSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/ims/internal/VTSource;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;
    .param p1, "x1"    # Landroid/view/Surface;

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/internal/VTSource;->mCachedRecordSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/VTSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;

    .line 61
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/VTSource;->mNeedRecordStream:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/internal/VTSource;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/VTSource;->mNeedRecordStream:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/VTSource;)Landroid/hardware/camera2/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/VTSource;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method private createRequestThreadAndHandler()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 583
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VTSource-Request"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestThread:Landroid/os/HandlerThread;

    .line 584
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 585
    new-instance v0, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;

    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/internal/VTSource;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mediatek/ims/internal/VTSource$DeviceHandler;-><init>(Lcom/mediatek/ims/internal/VTSource;Landroid/os/Looper;ZLcom/mediatek/ims/internal/VTSource$EventCallback;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    .line 588
    :cond_1
    return-void
.end method

.method public static getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;
    .locals 15

    .line 151
    const-string v0, "VT SRC"

    const-string v1, "[STC] [getAllCameraResolutions] Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v1, Lcom/mediatek/ims/internal/VTSource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    if-nez v1, :cond_3

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "sensorResolutions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/internal/VTSource$Resolution;>;"
    sget-object v2, Lcom/mediatek/ims/internal/VTSource;->sContext:Landroid/content/Context;

    .line 156
    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 158
    .local v2, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "cameraIds":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 160
    .local v6, "cameraId":Ljava/lang/String;
    new-instance v7, Lcom/mediatek/ims/internal/VTSource$Resolution;

    invoke-direct {v7}, Lcom/mediatek/ims/internal/VTSource$Resolution;-><init>()V

    .line 161
    .local v7, "resolution":Lcom/mediatek/ims/internal/VTSource$Resolution;
    nop

    .line 162
    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    .line 163
    .local v8, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 165
    .local v9, "sensorRes":Landroid/graphics/Rect;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 167
    .local v10, "sensorOrientation":I
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 170
    .local v11, "facing":I
    const/4 v12, 0x3

    .line 171
    .local v12, "hal":I
    const/4 v13, 0x2

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 172
    invoke-virtual {v8, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v13, v14, :cond_0

    .line 173
    const/4 v12, 0x1

    .line 176
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mId:I

    .line 177
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mMaxWidth:I

    .line 178
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    iput v13, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mMaxHeight:I

    .line 179
    iput v10, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mDegree:I

    .line 180
    iput v11, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mFacing:I

    .line 181
    iput v12, v7, Lcom/mediatek/ims/internal/VTSource$Resolution;->mHal:I

    .line 182
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[getAllCameraResolutions] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .end local v6    # "cameraId":Ljava/lang/String;
    .end local v7    # "resolution":Lcom/mediatek/ims/internal/VTSource$Resolution;
    .end local v8    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "sensorRes":Landroid/graphics/Rect;
    .end local v10    # "sensorOrientation":I
    .end local v11    # "facing":I
    .end local v12    # "hal":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 188
    .end local v3    # "cameraIds":[Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 185
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[STC] [getAllCameraResolutions] getCameraIdList with exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/mediatek/ims/internal/VTSource$Resolution;

    sput-object v3, Lcom/mediatek/ims/internal/VTSource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    .line 191
    sget-object v3, Lcom/mediatek/ims/internal/VTSource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/mediatek/ims/internal/VTSource$Resolution;

    sput-object v3, Lcom/mediatek/ims/internal/VTSource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    .line 193
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[STC] [getAllCameraResolutions] resolution size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v1    # "sensorResolutions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/internal/VTSource$Resolution;>;"
    .end local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :cond_3
    const-string v1, "[STC] [getAllCameraResolutions] Finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/mediatek/ims/internal/VTSource;->sCameraResolutions:[Lcom/mediatek/ims/internal/VTSource$Resolution;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[STC] [setContext] context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VT SRC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sput-object p0, Lcom/mediatek/ims/internal/VTSource;->sContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method private waitDone(Landroid/os/Handler;)Z
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .line 1430
    if-nez p1, :cond_0

    .line 1431
    const/4 v0, 0x0

    return v0

    .line 1433
    :cond_0
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 1434
    .local v0, "waitDoneCondition":Landroid/os/ConditionVariable;
    new-instance v1, Lcom/mediatek/ims/internal/VTSource$1;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/ims/internal/VTSource$1;-><init>(Lcom/mediatek/ims/internal/VTSource;Landroid/os/ConditionVariable;)V

    .line 1442
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v0

    .line 1443
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1444
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 1445
    monitor-exit v0

    return v3

    .line 1447
    :cond_1
    monitor-exit v0

    .line 1448
    return v3

    .line 1447
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 266
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 267
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [close] Start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INT] [close] Fail ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 277
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 278
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 279
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [close] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 7

    .line 440
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 441
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [getCameraCharacteristics] Start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [getCameraCharacteristics] Fail ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-object v2

    .line 448
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/hardware/camera2/CameraCharacteristics;

    .line 449
    .local v1, "characteristicses":[Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 451
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 453
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v4}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [getCameraCharacteristics] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    aget-object v2, v1, v6

    return-object v2

    .line 458
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v4}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 461
    iget-object v4, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[INT] [getCameraCharacteristics] Finish (null) ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-object v2
.end method

.method public hideMe()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    const-string v1, "[INT] [hideMe]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 242
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [open] Start, id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INT] [open] Fail ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 253
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 254
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 255
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [open] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public release()V
    .locals 6

    .line 310
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 311
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [release] Start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INT] [release] Fail ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 318
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/internal/VTSource;->mIsWaitRelease:Z

    .line 320
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 323
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 324
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 325
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 328
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 329
    iput-object v4, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestThread:Landroid/os/HandlerThread;

    .line 331
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [release] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method public restart()V
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 287
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [restart] Start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INT] [restart] Fail ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 297
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 298
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 299
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [restart] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 6
    .param p1, "degree"    # I

    .line 560
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 561
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [setDeviceOrientation] Start, degree : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    const-string v2, "[INT] [setDeviceOrientation] Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v4, 0x0

    .line 570
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 569
    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 571
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 573
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 574
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 575
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 578
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [setDeviceOrientation] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 9
    .param p1, "surface"    # Landroid/view/Surface;

    .line 366
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 367
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [setPreviewSurface] Start, surface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    const-string v2, "[INT] [setPreviewSurface] Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 374
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 375
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mCachedPreviewSurface:Landroid/view/Surface;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 383
    invoke-virtual {v2}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "oriSurfaceToken":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, "newSurfaceToken":[Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[INT] [setPreviewSurface] oriSurfaceToken[1]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", newSurfaceToken[1]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    aget-object v6, v5, v4

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 391
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[INT] [setPreviewSurface] surface not changed, ignore! ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void

    .line 396
    .end local v2    # "oriSurfaceToken":[Ljava/lang/String;
    .end local v5    # "newSurfaceToken":[Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 402
    .local v1, "ret":Z
    if-nez v1, :cond_3

    .line 403
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 406
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [setPreviewSurface] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method public setRecordSurface(Landroid/view/Surface;)V
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;

    .line 340
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 341
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [setRecordSurface] Start, surface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INT] [setRecordSurface] Fail ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 352
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 353
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 354
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [setRecordSurface] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public setReplacePicture(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 232
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INT] [setReplacePicture] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public setZoom(F)V
    .locals 6
    .param p1, "zoomValue"    # F

    .line 415
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 416
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [setZoom] Start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INT] [setZoom] Fail ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    const/4 v4, 0x0

    .line 424
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 423
    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 427
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 428
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 429
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [setZoom] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method public showMe()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    const-string v1, "[INT] [showMe]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void
.end method

.method public startRecording()V
    .locals 6

    .line 470
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 471
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [startRecording] Start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INT] [startRecording] Fail ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 481
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 482
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 483
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [startRecording] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method public stopRecording()V
    .locals 6

    .line 494
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 495
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [stopRecording] Start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INT] [stopRecording] Fail ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 505
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 506
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 507
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [stopRecording] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method public stopRecordingAndPreview()V
    .locals 6

    .line 518
    iget-object v0, p0, Lcom/mediatek/ims/internal/VTSource;->mMessageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 519
    .local v0, "messageId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[INT] [stopRecordingAndPreview] Start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-direct {p0}, Lcom/mediatek/ims/internal/VTSource;->IsHandlerThreadUnavailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INT] [stopRecordingAndPreview] Fail ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 527
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 529
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/internal/VTSource;->mStopPreviewAndRecord:Z

    .line 531
    iget-object v1, p0, Lcom/mediatek/ims/internal/VTSource;->mRequestHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/VTSource;->waitDone(Landroid/os/Handler;)Z

    move-result v1

    .line 532
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 533
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mEventCallBack:Lcom/mediatek/ims/internal/VTSource$EventCallback;

    invoke-interface {v2}, Lcom/mediatek/ims/internal/VTSource$EventCallback;->onError()V

    .line 536
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/internal/VTSource;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[INT] [stopRecordingAndPreview] Finish ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method
