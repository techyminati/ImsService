.class public Lcom/mediatek/cpuloading/CpuLoadingObserver;
.super Ljava/lang/Object;
.source "CpuLoadingObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;,
        Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;
    }
.end annotation


# static fields
.field private static final BACKGROUND_CPUS_PATH:Ljava/lang/String; = "/dev/cpuset/background/cpus"

.field private static DEFAULT_SPECIFY_THRESHOLD:I = 0x0

.field private static DEFAULT_THRESHOLD:I = 0x0

.field private static DEFAULT_WINDOW:I = 0x0

.field private static final OVER_THRESHOLD:Ljava/lang/String; = "/proc/cpu_loading/overThrhld"

.field private static final POLLING_ON_OFF:Ljava/lang/String; = "/proc/cpu_loading/onoff"

.field private static final POLLING_TIME_SECOND:Ljava/lang/String; = "/proc/cpu_loading/poltime_secs"

.field private static final SPECIFY_32BIT_CPUS_PATH:Ljava/lang/String; = "sys/devices/system/cpu/aarch32_el0"

.field private static final SPECIFY_CPUS:Ljava/lang/String; = "/proc/cpu_loading/specify_cpus"

.field private static final SPECIFY_OVER_THRESHOLD:Ljava/lang/String; = "/proc/cpu_loading/specify_overThrhld"

.field private static SPECIFY_RELEASE_TARGET:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final UEVENT_PATH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/cpu_loading"


# instance fields
.field private mObserver:Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;

.field private mSpecifyCpus:Ljava/lang/String;

.field private mSpecifyThreshold:I

.field private mThreshold:I

.field private mUEventObserver:Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;

.field private mWindow:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-class v0, Lcom/mediatek/cpuloading/CpuLoadingObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->TAG:Ljava/lang/String;

    .line 71
    const/16 v0, 0x55

    sput v0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->DEFAULT_THRESHOLD:I

    .line 72
    const/16 v1, 0xa

    sput v1, Lcom/mediatek/cpuloading/CpuLoadingObserver;->DEFAULT_WINDOW:I

    .line 73
    sput v0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->DEFAULT_SPECIFY_THRESHOLD:I

    .line 74
    const/16 v0, 0xf

    sput v0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->SPECIFY_RELEASE_TARGET:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget v0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->DEFAULT_THRESHOLD:I

    iput v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mThreshold:I

    .line 79
    sget v0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->DEFAULT_WINDOW:I

    iput v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mWindow:I

    .line 80
    sget v0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->DEFAULT_SPECIFY_THRESHOLD:I

    iput v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mSpecifyThreshold:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mSpecifyCpus:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;-><init>(Lcom/mediatek/cpuloading/CpuLoadingObserver;Lcom/mediatek/cpuloading/CpuLoadingObserver$1;)V

    iput-object v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mUEventObserver:Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;

    .line 92
    invoke-direct {p0}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->readSpecifyCpus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mSpecifyCpus:Ljava/lang/String;

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/cpuloading/CpuLoadingObserver;)Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/cpuloading/CpuLoadingObserver;

    .line 57
    iget-object v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mObserver:Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 57
    sget v0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->SPECIFY_RELEASE_TARGET:I

    return v0
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "filePath"    # Ljava/lang/String;

    .line 175
    const-string v0, ""

    if-nez p1, :cond_5

    .line 176
    return-object v0

    .line 179
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 183
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 184
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 185
    .local v3, "input":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 186
    .local v4, "output":Ljava/io/StringWriter;
    const/16 v5, 0x400

    new-array v5, v5, [C

    .line 187
    .local v5, "buffer":[C
    const-wide/16 v6, 0x0

    .line 188
    .local v6, "count":J
    const/4 v8, 0x0

    .line 189
    .local v8, "n":I
    :goto_24
    const/4 v9, -0x1

    invoke-virtual {v3, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10

    move v8, v10

    if-eq v9, v10, :cond_33

    .line 190
    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v8}, Ljava/io/StringWriter;->write([CII)V

    .line 191
    int-to-long v9, v8

    add-long/2addr v6, v9

    goto :goto_24

    .line 193
    :cond_33
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_37} :catch_43
    .catchall {:try_start_b .. :try_end_37} :catchall_41

    .line 197
    nop

    .line 199
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 202
    goto :goto_40

    .line 200
    :catch_3c
    move-exception v9

    .line 201
    .local v9, "ioe":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v9    # "ioe":Ljava/io/IOException;
    :goto_40
    return-object v0

    .line 197
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v4    # "output":Ljava/io/StringWriter;
    .end local v5    # "buffer":[C
    .end local v6    # "count":J
    .end local v8    # "n":I
    :catchall_41
    move-exception v0

    goto :goto_53

    .line 194
    :catch_43
    move-exception v3

    .line 195
    .local v3, "e":Ljava/io/IOException;
    :try_start_44
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_41

    .line 197
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_52

    .line 199
    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 202
    :goto_4c
    goto :goto_52

    .line 200
    :catch_4d
    move-exception v3

    .line 201
    .local v3, "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "ioe":Ljava/io/IOException;
    goto :goto_4c

    .line 205
    :cond_52
    :goto_52
    return-object v0

    .line 197
    :goto_53
    if-eqz v2, :cond_5d

    .line 199
    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 202
    goto :goto_5d

    .line 200
    :catch_59
    move-exception v3

    .line 201
    .restart local v3    # "ioe":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 204
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_5d
    :goto_5d
    throw v0
.end method

.method private readSpecifyCpus()Ljava/lang/String;
    .registers 5

    .line 120
    const-string v0, "sys/devices/system/cpu/aarch32_el0"

    invoke-direct {p0, v0}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "specifyCpus":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 122
    const-string v2, "/dev/cpuset/background/cpus"

    invoke-direct {p0, v2}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 126
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "arr":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_41

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_41
    return-object v0

    .line 133
    .end local v1    # "arr":[Ljava/lang/String;
    :cond_42
    return-object v1
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 146
    if-nez p1, :cond_3

    .line 147
    return-void

    .line 150
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 153
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 154
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 157
    :try_start_10
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 158
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 159
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_29
    .catchall {:try_start_10 .. :try_end_20} :catchall_27

    .line 163
    nop

    .line 165
    :try_start_21
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_32

    .line 166
    :catch_25
    move-exception v3

    goto :goto_34

    .line 163
    :catchall_27
    move-exception v3

    goto :goto_3c

    .line 160
    :catch_29
    move-exception v3

    .line 161
    .local v3, "e":Ljava/io/IOException;
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_37

    .line 165
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    .line 168
    :goto_32
    goto :goto_37

    .line 166
    :catch_33
    move-exception v3

    .line 167
    .local v3, "ioe":Ljava/io/IOException;
    :goto_34
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_37
    :goto_37
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 171
    nop

    .line 172
    return-void

    .line 163
    :goto_3c
    if-eqz v1, :cond_46

    .line 165
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 168
    goto :goto_46

    .line 166
    :catch_42
    move-exception v4

    .line 167
    .local v4, "ioe":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_46
    :goto_46
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 171
    throw v3
.end method


# virtual methods
.method public setObserver(Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;)V
    .registers 2
    .param p1, "observer"    # Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;

    .line 101
    iput-object p1, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mObserver:Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;

    .line 102
    return-void
.end method

.method public startObserving()V
    .registers 3

    .line 108
    const-string v0, "/proc/cpu_loading/onoff"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mThreshold:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/proc/cpu_loading/overThrhld"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mWindow:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/proc/cpu_loading/poltime_secs"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mSpecifyCpus:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 113
    iget-object v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mSpecifyCpus:Ljava/lang/String;

    const-string v1, "/proc/cpu_loading/specify_cpus"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mSpecifyThreshold:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/proc/cpu_loading/specify_overThrhld"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_39
    iget-object v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mUEventObserver:Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/misc/cpu_loading"

    invoke-virtual {v0, v1}, Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public stopObserving()V
    .registers 3

    .line 140
    const-string v0, "/proc/cpu_loading/onoff"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/cpuloading/CpuLoadingObserver;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mUEventObserver:Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;

    invoke-virtual {v0}, Lcom/mediatek/cpuloading/CpuLoadingObserver$MyUEventObserver;->stopObserving()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/cpuloading/CpuLoadingObserver;->mObserver:Lcom/mediatek/cpuloading/CpuLoadingObserver$Observer;

    .line 143
    return-void
.end method
