.class public Lcom/mediatek/camcorder/CamcorderProfileEx;
.super Ljava/lang/Object;
.source "CamcorderProfileEx.java"


# static fields
.field public static final QUALITY_FINE:I = 0x6f

.field public static final QUALITY_FINE_4K2K:I = 0x7b

.field public static final QUALITY_H264_HIGH:I = 0x75

.field public static final QUALITY_HIGH:I = 0x6e

.field public static final QUALITY_LIST_END:I = 0x7b

.field private static final QUALITY_LIST_START:I

.field public static final QUALITY_LIVE_EFFECT:I = 0x74

.field public static final QUALITY_LOW:I = 0x6c

.field public static final QUALITY_MEDIUM:I = 0x6d

.field public static final QUALITY_NIGHT_FINE:I = 0x73

.field public static final QUALITY_NIGHT_HIGH:I = 0x72

.field public static final QUALITY_NIGHT_LOW:I = 0x70

.field public static final QUALITY_NIGHT_MEDIUM:I = 0x71

.field public static final QUALITY_TIME_LAPSE_LIST_END:I

.field public static final QUALITY_TIME_LAPSE_LIST_START:I

.field public static final SLOW_MOTION_FHD_120FPS:I = 0x8cb

.field public static final SLOW_MOTION_FHD_60FPS:I = 0x8ca

.field public static final SLOW_MOTION_HD_120FPS:I = 0x8c1

.field public static final SLOW_MOTION_HD_180FPS:I = 0x8c2

.field public static final SLOW_MOTION_HD_60FPS:I = 0x8c0

.field private static final SLOW_MOTION_LIST_END:I = 0x8cb

.field private static final SLOW_MOTION_LIST_START:I = 0x8b7

.field public static final SLOW_MOTION_VGA_120FPS:I = 0x8b7

.field private static final TAG:Ljava/lang/String; = "CamcorderProfileEx"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 165
    const-string v0, "QUALITY_TIME_LAPSE_LIST_START"

    invoke-static {v0}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getQualityNum(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_START:I

    .line 166
    const-string v1, "QUALITY_LIST_START"

    invoke-static {v1}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getQualityNum(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_LIST_START:I

    .line 167
    add-int/lit8 v0, v0, 0x7b

    sput v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_END:I

    .line 168
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfile(I)Landroid/media/CamcorderProfile;
    .registers 5
    .param p0, "quality"    # I

    .line 202
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 203
    .local v0, "numberOfCameras":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 204
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1b

    .line 205
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 206
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    .line 207
    invoke-static {v2, p0}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    return-object v3

    .line 204
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 210
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getProfile(II)Landroid/media/CamcorderProfile;
    .registers 4
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .line 225
    sget v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_LIST_START:I

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7b

    if-le p1, v0, :cond_18

    :cond_8
    sget v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_START:I

    if-lt p1, v0, :cond_10

    sget v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_END:I

    if-le p1, v0, :cond_18

    :cond_10
    const/16 v0, 0x8b7

    if-lt p1, v0, :cond_1d

    const/16 v0, 0x8cb

    if-gt p1, v0, :cond_1d

    .line 234
    :cond_18
    invoke-static {p0, p1}, Lcom/mediatek/camcorder/CamcorderProfileEx;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 231
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported quality level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "errMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getQualityNum(Ljava/lang/String;)I
    .registers 6
    .param p0, "qualityName"    # Ljava/lang/String;

    .line 174
    const-string v0, "getQualityNum error"

    const-string v1, "CamcorderProfileEx"

    const/4 v2, 0x0

    .line 176
    .local v2, "qualityValue":I
    :try_start_5
    const-class v3, Landroid/media/CamcorderProfile;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 177
    .local v3, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 178
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_14} :catch_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_14} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_14} :catch_16

    move v2, v0

    .line 187
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :goto_15
    goto :goto_2a

    .line 185
    :catch_16
    move-exception v3

    .line 186
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 183
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_1b
    move-exception v3

    .line 184
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_15

    .line 181
    :catch_20
    move-exception v3

    .line 182
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_15

    .line 179
    :catch_25
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_15

    .line 188
    :goto_2a
    return v2
.end method

.method private static final native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
    .registers 12
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .line 241
    const-string v0, "native_get_camcorder_profile error"

    const-string v1, "CamcorderProfileEx"

    const/4 v2, 0x0

    :try_start_5
    const-class v3, Landroid/media/CamcorderProfile;

    const-string v4, "native_get_camcorder_profile"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 242
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 243
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/CamcorderProfile;
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_31} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_31} :catch_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_31} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_31} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_31} :catch_32

    return-object v4

    .line 252
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_32
    move-exception v3

    .line 253
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 250
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_37
    move-exception v3

    .line 251
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_4a

    .line 248
    :catch_3c
    move-exception v3

    .line 249
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4a

    .line 246
    :catch_41
    move-exception v3

    .line 247
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_4a

    .line 244
    :catch_46
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_4a
    nop

    .line 255
    :goto_4b
    return-object v2
.end method
