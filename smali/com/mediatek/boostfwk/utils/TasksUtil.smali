.class public final Lcom/mediatek/boostfwk/utils/TasksUtil;
.super Ljava/lang/Object;
.source "TasksUtil.java"


# static fields
.field private static final CMDLINE_OUT:[I

.field private static final GAME_TASKS:[Ljava/lang/String;

.field private static final GL_TASKS:[Ljava/lang/String;

.field private static final STRICT_MODE_DETECT_THREAD_DISK_READ:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TasksUtil"

.field private static final sAppBrandUI:Ljava/lang/String; = "appbrand"

.field private static final sFlutterEngineName:Ljava/lang/String; = "flutter_engine"

.field private static final sRenderThreadName:Ljava/lang/String; = "RenderThread"

.field private static final sSpecialTaskList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1000

    aput v2, v0, v1

    sput-object v0, Lcom/mediatek/boostfwk/utils/TasksUtil;->CMDLINE_OUT:[I

    .line 60
    const-string v0, "Chrome_InProcGp"

    const-string v1, "Chrome_IOThread"

    const-string v2, "hippy.js"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/utils/TasksUtil;->sSpecialTaskList:[Ljava/lang/String;

    .line 63
    const-string v0, "UnityMain"

    const-string v1, "MainThread-UE4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/utils/TasksUtil;->GAME_TASKS:[Ljava/lang/String;

    .line 64
    const-string v0, "GLThread"

    const-string v1, "GNaviMap-GL"

    const-string v2, "Tmcom-MapRender"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/utils/TasksUtil;->GL_TASKS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static containTask(I[Ljava/lang/String;Z)Z
    .registers 16
    .param p0, "pid"    # I
    .param p1, "taskList"    # [Ljava/lang/String;
    .param p2, "contain"    # Z

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "taskCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/task"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "filePath":Ljava/lang/String;
    const/16 v3, 0x400

    new-array v3, v3, [I

    .line 180
    .local v3, "pids":[I
    invoke-static {v1, v3}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v3

    .line 182
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_22
    if-ge v6, v4, :cond_78

    aget v7, v3, v6

    .line 183
    .local v7, "tmpPid":I
    if-gez v7, :cond_29

    .line 184
    goto :goto_78

    .line 186
    :cond_29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/task/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/comm"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Lcom/mediatek/boostfwk/utils/TasksUtil;->readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "taskName":Ljava/lang/String;
    if-eqz v8, :cond_75

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_75

    .line 189
    array-length v9, p1

    move v10, v5

    :goto_55
    if-ge v10, v9, :cond_75

    aget-object v11, p1, v10

    .line 190
    .local v11, "spTaskName":Ljava/lang/String;
    if-eqz p2, :cond_65

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6f

    .line 191
    :cond_65
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    .line 192
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    .line 193
    goto :goto_75

    .line 189
    .end local v11    # "spTaskName":Ljava/lang/String;
    :cond_72
    add-int/lit8 v10, v10, 0x1

    goto :goto_55

    .line 182
    .end local v7    # "tmpPid":I
    .end local v8    # "taskName":Ljava/lang/String;
    :cond_75
    :goto_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 199
    :cond_78
    :goto_78
    if-nez v0, :cond_7b

    .line 200
    return v5

    .line 202
    :cond_7b
    const/4 v2, 0x1

    return v2
.end method

.method public static findRenderTheadTid(I)I
    .registers 11
    .param p0, "pid"    # I

    .line 79
    const/4 v0, -0x1

    .line 80
    .local v0, "rdTid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/task"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "filePath":Ljava/lang/String;
    const/16 v3, 0x400

    new-array v3, v3, [I

    .line 83
    .local v3, "pids":[I
    invoke-static {v1, v3}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v3

    .line 85
    array-length v4, v3

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v4, :cond_7f

    aget v6, v3, v5

    .line 86
    .local v6, "tmpPid":I
    if-gez v6, :cond_28

    .line 87
    goto :goto_7f

    .line 89
    :cond_28
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/task/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/comm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/mediatek/boostfwk/utils/TasksUtil;->readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "taskName":Ljava/lang/String;
    if-eqz v7, :cond_7c

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7c

    .line 92
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "RenderThread"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 93
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renderthread tid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TasksUtil"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_7a
    move v0, v6

    .line 97
    goto :goto_7f

    .line 85
    .end local v6    # "tmpPid":I
    .end local v7    # "taskName":Ljava/lang/String;
    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 101
    :cond_7f
    :goto_7f
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "render thread id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ScrollIdentify"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_a3
    return v0
.end method

.method public static fullscreenAndGl(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 2
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 167
    invoke-static {p0}, Lcom/mediatek/boostfwk/utils/Util;->IsFullScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/mediatek/boostfwk/utils/TasksUtil;->hasGLTask()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static hasCrossPlatformTask()Z
    .registers 15

    .line 137
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 138
    .local v0, "pid":I
    const/4 v1, 0x0

    .line 139
    .local v1, "crossPlatformCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/task"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "filePath":Ljava/lang/String;
    const/16 v4, 0x400

    new-array v4, v4, [I

    .line 142
    .local v4, "pids":[I
    invoke-static {v2, v4}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v4

    .line 144
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_26
    if-ge v7, v5, :cond_72

    aget v8, v4, v7

    .line 145
    .local v8, "tmpPid":I
    if-gez v8, :cond_2d

    .line 146
    goto :goto_72

    .line 148
    :cond_2d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/task/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/comm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Lcom/mediatek/boostfwk/utils/TasksUtil;->readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, "taskName":Ljava/lang/String;
    if-eqz v9, :cond_6f

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6f

    .line 151
    sget-object v10, Lcom/mediatek/boostfwk/utils/TasksUtil;->sSpecialTaskList:[Ljava/lang/String;

    array-length v11, v10

    move v12, v6

    :goto_5b
    if-ge v12, v11, :cond_6f

    aget-object v13, v10, v12

    .line 152
    .local v13, "spTaskName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6c

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    goto :goto_6f

    .line 151
    .end local v13    # "spTaskName":Ljava/lang/String;
    :cond_6c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5b

    .line 144
    .end local v8    # "tmpPid":I
    .end local v9    # "taskName":Ljava/lang/String;
    :cond_6f
    :goto_6f
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 160
    :cond_72
    :goto_72
    if-nez v1, :cond_75

    .line 161
    return v6

    .line 163
    :cond_75
    const/4 v3, 0x1

    return v3
.end method

.method public static hasGLTask()Z
    .registers 3

    .line 171
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 172
    .local v0, "pid":I
    sget-object v1, Lcom/mediatek/boostfwk/utils/TasksUtil;->GL_TASKS:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mediatek/boostfwk/utils/TasksUtil;->containTask(I[Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAPPInStrictMode(Ljava/lang/String;)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    if-eqz p0, :cond_5b

    const-string v1, "webview_shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_5b

    .line 283
    :cond_c
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 284
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    if-nez v1, :cond_13

    .line 285
    return v0

    .line 288
    :cond_13
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string v3, "[StrictMode.ThreadPolicy; mask="

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 290
    const-string v3, "]"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "mask":Ljava/lang/String;
    if-eqz v2, :cond_5a

    if-ne v2, v4, :cond_2a

    goto :goto_5a

    .line 294
    :cond_2a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_33

    const/4 v0, 0x1

    .line 295
    .local v0, "result":Z
    :cond_33
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v3

    if-eqz v3, :cond_59

    if-eqz v0, :cond_59

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is app in strictmode -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TasksUtil"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_59
    return v0

    .line 292
    .end local v0    # "result":Z
    :cond_5a
    :goto_5a
    return v0

    .line 280
    .end local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v2    # "mask":Ljava/lang/String;
    :cond_5b
    :goto_5b
    return v0
.end method

.method public static isAppBrand()Z
    .registers 6

    .line 119
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 120
    .local v0, "pid":I
    const/4 v1, 0x0

    .line 122
    .local v1, "isAppBrand":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/comm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/boostfwk/utils/TasksUtil;->readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "commName":Ljava/lang/String;
    if-eqz v3, :cond_37

    const-string v4, "appbrand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 125
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 126
    const-string v4, "TasksUtil"

    const-string v5, "This is app brand."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_36
    const/4 v1, 0x1

    .line 130
    :cond_37
    return v1
.end method

.method public static isFlutterApp(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 211
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 212
    .local v0, "pid":I
    const/4 v1, 0x0

    .line 214
    .local v1, "isFlutter":Z
    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v2

    .line 215
    .local v2, "codeCacheDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 216
    .local v3, "fs":[Ljava/io/File;
    if-eqz v3, :cond_35

    array-length v4, v3

    if-eqz v4, :cond_35

    .line 217
    array-length v4, v3

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_35

    aget-object v6, v3, v5

    .line 218
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "flutter_engine"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 219
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 220
    const-string v7, "TasksUtil"

    const-string v8, "This is flutter."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_31
    const/4 v1, 0x1

    .line 217
    .end local v6    # "f":Ljava/io/File;
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 226
    :cond_35
    return v1
.end method

.method public static isGameAPP(Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 206
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 207
    .local v0, "pid":I
    invoke-static {p0}, Lcom/mediatek/boostfwk/utils/Util;->isGameApp(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    sget-object v1, Lcom/mediatek/boostfwk/utils/TasksUtil;->GAME_TASKS:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mediatek/boostfwk/utils/TasksUtil;->containTask(I[Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method public static isSpeicalAPP(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "isSpeicalAPP":Z
    const/4 v1, 0x0

    .line 232
    .local v1, "isFlutter":Z
    const/4 v2, 0x0

    .line 233
    .local v2, "isAppBrand":Z
    const/4 v3, 0x0

    .line 235
    .local v3, "hasCrossTask":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 236
    .local v4, "pid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_17

    const-string v6, "android"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 238
    return v0

    .line 240
    :cond_17
    invoke-static {p0}, Lcom/mediatek/boostfwk/utils/TasksUtil;->isFlutterApp(Landroid/content/Context;)Z

    move-result v1

    .line 241
    invoke-static {}, Lcom/mediatek/boostfwk/utils/TasksUtil;->isAppBrand()Z

    move-result v2

    .line 242
    invoke-static {}, Lcom/mediatek/boostfwk/utils/TasksUtil;->hasCrossPlatformTask()Z

    move-result v3

    .line 244
    if-nez v1, :cond_29

    if-nez v2, :cond_29

    if-eqz v3, :cond_37

    .line 245
    :cond_29
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 246
    const-string v6, "TasksUtil"

    const-string v7, "This is speical app."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_36
    const/4 v0, 0x1

    .line 251
    :cond_37
    return v0
.end method

.method public static isSpeicalAPPWOWebView(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "isSpeicalAPP":Z
    const/4 v1, 0x0

    .line 257
    .local v1, "isFlutter":Z
    const/4 v2, 0x0

    .line 259
    .local v2, "isAppBrand":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 260
    .local v3, "pid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_16

    const-string v5, "android"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 262
    return v0

    .line 264
    :cond_16
    invoke-static {p0}, Lcom/mediatek/boostfwk/utils/TasksUtil;->isFlutterApp(Landroid/content/Context;)Z

    move-result v1

    .line 265
    invoke-static {}, Lcom/mediatek/boostfwk/utils/TasksUtil;->isAppBrand()Z

    move-result v2

    .line 267
    if-nez v1, :cond_22

    if-eqz v2, :cond_30

    .line 268
    :cond_22
    invoke-static {}, Lcom/mediatek/boostfwk/utils/Config;->isBoostFwkLogEnable()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 269
    const-string v5, "TasksUtil"

    const-string v6, "This is speical app."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_2f
    const/4 v0, 0x1

    .line 274
    :cond_30
    return v0
.end method

.method private static readCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 109
    .local v0, "cmdline":[Ljava/lang/String;
    sget-object v1, Lcom/mediatek/boostfwk/utils/TasksUtil;->CMDLINE_OUT:[I

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_f

    .line 110
    const-string v1, ""

    return-object v1

    .line 112
    :cond_f
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method
