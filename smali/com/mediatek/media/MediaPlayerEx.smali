.class public Lcom/mediatek/media/MediaPlayerEx;
.super Ljava/lang/Object;
.source "MediaPlayerEx.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.media.MediaPlayer"

.field private static final METHOD_NAME:Ljava/lang/String; = "setContext"

.field private static final TAG:Ljava/lang/String; = "MediaPlayerEx"

.field private static sSetContext:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 58
    const-string v0, "@M_MediaPlayerEx"

    :try_start_2
    const-string v1, "android.media.MediaPlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setContext"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    .line 59
    if-eqz v1, :cond_49

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1d} :catch_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_1d} :catch_1e

    goto :goto_49

    .line 64
    :catch_1e
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 62
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_34
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchMethodException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_49
    :goto_49
    nop

    .line 67
    :goto_4a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
