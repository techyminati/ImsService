.class public final Lcom/mediatek/boostfwk/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SBE-Util"

.field private static final sGameLibs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 62
    const-string v0, "libGame.so"

    const-string v1, "libhegame.so"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/utils/Util;->sGameLibs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsFullScreen(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 116
    if-eqz p0, :cond_b

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 119
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getRefreshRate()F
    .registers 2

    .line 130
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 132
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static isGameApp(Ljava/lang/String;)Z
    .registers 11
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 66
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 68
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 69
    const/4 v1, 0x0

    :try_start_6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 68
    invoke-interface {v0, p0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 70
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    if-nez v2, :cond_12

    .line 72
    return v3

    .line 75
    :cond_12
    if-eqz v2, :cond_1c

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x2000000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1c

    .line 77
    return v3

    .line 79
    :cond_1c
    sget-object v4, Lcom/mediatek/boostfwk/utils/Util;->sGameLibs:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_20
    if-ge v6, v5, :cond_35

    aget-object v7, v4, v6

    .line 80
    .local v7, "gameLibName":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2f} :catch_36

    if-eqz v9, :cond_32

    .line 82
    return v3

    .line 79
    .end local v7    # "gameLibName":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 88
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_35
    goto :goto_4d

    .line 86
    :catch_36
    move-exception v2

    .line 87
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGameApp exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SBE-Util"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4d
    return v1
.end method

.method public static isMainThread()Z
    .registers 2

    .line 136
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isSystemApp(Ljava/lang/String;)Z
    .registers 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 94
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 96
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 97
    const/4 v1, 0x0

    :try_start_6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 96
    invoke-interface {v0, p0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 98
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_11

    .line 99
    return v1

    .line 102
    :cond_11
    if-eqz v2, :cond_20

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_1f

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_21

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_20

    .line 105
    :cond_1f
    return v4

    .line 109
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_20
    goto :goto_38

    .line 107
    :catch_21
    move-exception v2

    .line 108
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemApp exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SBE-Util"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_38
    return v1
.end method
