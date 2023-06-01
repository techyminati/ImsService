.class public Lcom/mediatek/media/MediaRecorderEx;
.super Ljava/lang/Object;
.source "MediaRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/media/MediaRecorderEx$HDRecordMode;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.media.MediaRecorder"

.field private static final METHOD_NAME:Ljava/lang/String; = "setParameter"

.field private static final METHOD_TYPES:[Ljava/lang/Class;

.field private static final TAG:Ljava/lang/String; = "MediaRecorderEx"

.field private static sSetParameter:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 53
    const-string v0, "@M_MediaRecorderEx"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    sput-object v2, Lcom/mediatek/media/MediaRecorderEx;->METHOD_TYPES:[Ljava/lang/Class;

    .line 57
    :try_start_c
    const-string v3, "android.media.MediaRecorder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 58
    .local v3, "cls":Ljava/lang/Class;
    const-string v4, "setParameter"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    .line 59
    if-eqz v2, :cond_2d

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_1f} :catch_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_1f} :catch_20

    goto :goto_2d

    .line 64
    .end local v3    # "cls":Ljava/lang/Class;
    :catch_20
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "ClassNotFoundException: android.media.MediaRecorder"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 62
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_27
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "NoSuchMethodException: setParameter"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2d
    :goto_2d
    nop

    .line 67
    :goto_2e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pause(Landroid/media/MediaRecorder;)V
    .registers 3
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 96
    if-nez p0, :cond_a

    .line 97
    const-string v0, "@M_MediaRecorderEx"

    const-string v1, "Null MediaRecorder!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 101
    :cond_a
    return-void
.end method

.method public static setAlbumTag(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .registers 4
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "album"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media-param-tag-album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static setArtistTag(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .registers 4
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "artist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media-param-tag-artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static setHDRecordMode(Landroid/media/MediaRecorder;IZ)V
    .registers 6
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "mode"    # I
    .param p2, "isVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 132
    if-ltz p1, :cond_31

    const/4 v0, 0x2

    if-gt p1, v0, :cond_31

    .line 136
    if-eqz p2, :cond_1c

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-hdrecvideomode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    goto :goto_30

    .line 139
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-hdrecvoicemode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 141
    :goto_30
    return-void

    .line 133
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal HDRecord mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setLivePhotoTag(Landroid/media/MediaRecorder;I)V
    .registers 2
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "value"    # I

    .line 205
    return-void
.end method

.method private static setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .registers 6
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "nameValuePair"    # Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/mediatek/media/MediaRecorderEx;->sSetParameter:Ljava/lang/reflect/Method;

    const-string v1, "@M_MediaRecorderEx"

    if-eqz v0, :cond_2c

    .line 72
    const/4 v2, 0x1

    :try_start_7
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_f} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_f} :catch_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_2b

    .line 79
    :catch_10
    move-exception v0

    .line 80
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "NullPointerException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "npe":Ljava/lang/NullPointerException;
    goto :goto_2b

    .line 77
    :catch_17
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "IllegalArgumentException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_2b

    .line 75
    :catch_1e
    move-exception v0

    .line 76
    .local v0, "te":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "InvocationTargetException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "te":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2b

    .line 73
    :catch_25
    move-exception v0

    .line 74
    .local v0, "ae":Ljava/lang/IllegalAccessException;
    const-string v2, "IllegalAccessException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "ae":Ljava/lang/IllegalAccessException;
    :goto_2b
    goto :goto_31

    .line 83
    :cond_2c
    const-string v0, "setParameter: Null method!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_31
    return-void
.end method

.method public static setPreprocessEffect(Landroid/media/MediaRecorder;I)V
    .registers 4
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "effectOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-preprocesseffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static setVideoBitOffSet(Landroid/media/MediaRecorder;IZ)V
    .registers 5
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "offset"    # I
    .param p2, "video"    # Z

    .line 190
    if-eqz p2, :cond_2c

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param-use-64bit-offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/media/MediaRecorderEx;->setParameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoBitOffSet is true,offset= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_MediaRecorderEx"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2c
    return-void
.end method

.method public static startLivePhotoMode(Landroid/media/MediaRecorder;)V
    .registers 1
    .param p0, "recorder"    # Landroid/media/MediaRecorder;

    .line 216
    return-void
.end method

.method public static stopLivePhotoMode(Landroid/media/MediaRecorder;)V
    .registers 1
    .param p0, "recorder"    # Landroid/media/MediaRecorder;

    .line 226
    return-void
.end method
