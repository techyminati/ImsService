.class public final Lcom/mediatek/amsAal/AalUtils;
.super Ljava/lang/Object;
.source "AalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/amsAal/AalUtils$AalIndex;,
        Lcom/mediatek/amsAal/AalUtils$AalConfig;
    }
.end annotation


# static fields
.field private static final AAL_DEFAULT_LEVEL:I = 0x80

.field private static final AAL_MAX_LEVEL:I = 0x100

.field private static final AAL_MIN_LEVEL:I = 0x0

.field public static final AAL_MODE_BALANCE:I = 0x1

.field public static final AAL_MODE_LOWPOWER:I = 0x2

.field public static final AAL_MODE_PERFORMANCE:I = 0x0

.field public static final AAL_MODE_SIZE:I = 0x3

.field private static final AAL_NULL_LEVEL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AalUtils"

.field private static sAalConfigXMLPath:Ljava/lang/String;

.field private static sDebug:Z

.field private static sEnabled:Z

.field private static sInstance:Lcom/mediatek/amsAal/AalUtils;

.field private static sIsAalSupported:Z


# instance fields
.field private mAalMode:I

.field private mConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mediatek/amsAal/AalUtils$AalIndex;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    .line 68
    nop

    .line 69
    const-string v1, "ro.vendor.mtk_aal_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/mediatek/amsAal/AalUtils;->sIsAalSupported:Z

    .line 70
    if-eqz v1, :cond_22

    .line 71
    const-string v1, "persist.vendor.sys.mtk_app_aal_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    nop

    :goto_23
    sput-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sEnabled:Z

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/amsAal/AalUtils;->sInstance:Lcom/mediatek/amsAal/AalUtils;

    .line 79
    const-string v0, "/system/etc/ams_aal_config.xml"

    sput-object v0, Lcom/mediatek/amsAal/AalUtils;->sAalConfigXMLPath:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/amsAal/AalUtils;->mAalMode:I

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/amsAal/AalUtils;->mConfig:Ljava/util/Map;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    .line 88
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sIsAalSupported:Z

    const-string v1, "AalUtils"

    if-nez v0, :cond_20

    .line 89
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_1f

    .line 90
    const-string v0, "AAL is not supported"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1f
    return-void

    .line 96
    :cond_20
    :try_start_20
    invoke-direct {p0}, Lcom/mediatek/amsAal/AalUtils;->parseXML()V
    :try_end_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_23} :catch_50
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    .line 103
    :goto_23
    goto :goto_66

    .line 101
    :catch_24
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to parseXML, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3a
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException fail to parseXML, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_23

    .line 97
    :catch_50
    move-exception v0

    .line 98
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XmlPullParserException fail to parseXML, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_23

    .line 104
    :goto_66
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/amsAal/AalUtils;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/amsAal/AalUtils;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/amsAal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpDebugUsageInternal()Ljava/lang/String;
    .registers 3

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\nUsage:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, "1. App-based AAL help:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, "    adb shell dumpsys activity aal\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v1, "2. Dump App-based AAL settings:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, "    adb shell dumpsys activity aal dump\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, "1. App-based AAL debug on:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, "    adb shell dumpsys activity aal debugon\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v1, "1. App-based AAL debug off:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v1, "    adb shell dumpsys activity aal debugoff\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v1, "3. Enable App-based AAL:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v1, "    adb shell dumpsys activity aal on\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, "4. Disable App-based AAL:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v1, "    adb shell dumpsys activity aal off\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v1, "5. Set App-based AAL mode:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v1, "    adb shell dumpsys activity aal mode <mode>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v1, "6. Set App-based AAL config for current mode:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v1, "    adb shell dumpsys activity aal set <component> <value>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, "7. Set App-based AAL config for the mode:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, "    adb shell dumpsys activity aal set <component> <value> <mode>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized dumpInternal()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 525
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nApp-based AAL Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/amsAal/AalUtils;->mAalMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/amsAal/AalUtils;->mAalMode:I

    invoke-direct {p0, v2}, Lcom/mediatek/amsAal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/amsAal/AalUtils;->sIsAalSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/amsAal/AalUtils;->sEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const/4 v1, 0x1

    .line 531
    .local v1, "i":I
    iget-object v2, p0, Lcom/mediatek/amsAal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/amsAal/AalUtils$AalIndex;

    .line 532
    .local v3, "index":Lcom/mediatek/amsAal/AalUtils$AalIndex;
    iget-object v4, p0, Lcom/mediatek/amsAal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "level":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    nop

    .end local v3    # "index":Lcom/mediatek/amsAal/AalUtils$AalIndex;
    .end local v4    # "level":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 535
    goto :goto_58

    .line 536
    .end local p0    # "this":Lcom/mediatek/amsAal/AalUtils;
    :cond_9c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_ab

    .line 537
    const-string v2, "\nThere is no App-based AAL configuration.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-direct {p0}, Lcom/mediatek/amsAal/AalUtils;->dumpDebugUsageInternal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_ab
    sget-boolean v2, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_c9

    .line 541
    const-string v2, "AalUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_c9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_cd
    .catchall {:try_start_1 .. :try_end_cd} :catchall_cf

    monitor-exit p0

    return-object v2

    .line 524
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :catchall_cf
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ensureBacklightLevel(I)I
    .registers 6
    .param p1, "level"    # I

    .line 316
    const-string v0, "Invalid AAL backlight level: "

    const-string v1, "AalUtils"

    if-gez p1, :cond_1e

    .line 317
    sget-boolean v2, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_1c

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1c
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_1e
    const/16 v2, 0x100

    if-le p1, v2, :cond_39

    .line 322
    sget-boolean v3, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_38

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_38
    return v2

    .line 328
    :cond_39
    return p1
.end method

.method private getAalConfig(Lcom/mediatek/amsAal/AalUtils$AalIndex;)Lcom/mediatek/amsAal/AalUtils$AalConfig;
    .registers 5
    .param p1, "index"    # Lcom/mediatek/amsAal/AalUtils$AalIndex;

    .line 332
    const/4 v0, -0x1

    .line 333
    .local v0, "level":I
    iget-object v1, p0, Lcom/mediatek/amsAal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 334
    iget-object v1, p0, Lcom/mediatek/amsAal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_30

    .line 336
    :cond_16
    sget-boolean v1, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_30

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No config for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AalUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_30
    :goto_30
    new-instance v1, Lcom/mediatek/amsAal/AalUtils$AalConfig;

    invoke-virtual {p1}, Lcom/mediatek/amsAal/AalUtils$AalIndex;->getIndexName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/mediatek/amsAal/AalUtils$AalConfig;-><init>(Lcom/mediatek/amsAal/AalUtils;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static getInstance()Lcom/mediatek/amsAal/AalUtils;
    .registers 1

    .line 125
    sget-object v0, Lcom/mediatek/amsAal/AalUtils;->sInstance:Lcom/mediatek/amsAal/AalUtils;

    if-nez v0, :cond_b

    .line 126
    new-instance v0, Lcom/mediatek/amsAal/AalUtils;

    invoke-direct {v0}, Lcom/mediatek/amsAal/AalUtils;-><init>()V

    sput-object v0, Lcom/mediatek/amsAal/AalUtils;->sInstance:Lcom/mediatek/amsAal/AalUtils;

    .line 128
    :cond_b
    sget-object v0, Lcom/mediatek/amsAal/AalUtils;->sInstance:Lcom/mediatek/amsAal/AalUtils;

    return-object v0
.end method

.method public static isSupported()Z
    .registers 2

    .line 112
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_1c

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/amsAal/AalUtils;->sIsAalSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1c
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sIsAalSupported:Z

    return v0
.end method

.method private modeToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "mode"    # I

    .line 344
    packed-switch p1, :pswitch_data_1e

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 350
    :pswitch_15
    const-string v0, "AAL_MODE_LOWPOWER"

    return-object v0

    .line 348
    :pswitch_18
    const-string v0, "AAL_MODE_BALANCE"

    return-object v0

    .line 346
    :pswitch_1b
    const-string v0, "AAL_MODE_PERFORMANCE"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private parseXML()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mediatek/amsAal/AalUtils;->sAalConfigXMLPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 605
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_29

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseXML file not exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/amsAal/AalUtils;->sAalConfigXMLPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_29
    return-void

    .line 610
    :cond_2a
    new-instance v0, Ljava/io/FileReader;

    sget-object v1, Lcom/mediatek/amsAal/AalUtils;->sAalConfigXMLPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "fileReader":Ljava/io/FileReader;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 612
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 613
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 614
    .local v2, "eventType":I
    :goto_3c
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7a

    .line 615
    packed-switch v2, :pswitch_data_80

    :pswitch_42
    goto :goto_75

    .line 619
    :pswitch_43
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 620
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 621
    .local v4, "mode":I
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "componentName":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 623
    .local v5, "backlight":I
    iget-object v6, p0, Lcom/mediatek/amsAal/AalUtils;->mConfig:Ljava/util/Map;

    new-instance v7, Lcom/mediatek/amsAal/AalUtils$AalIndex;

    invoke-direct {v7, p0, v4, v3}, Lcom/mediatek/amsAal/AalUtils$AalIndex;-><init>(Lcom/mediatek/amsAal/AalUtils;ILjava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .end local v3    # "componentName":Ljava/lang/String;
    .end local v4    # "mode":I
    .end local v5    # "backlight":I
    goto :goto_75

    .line 617
    :pswitch_74
    nop

    .line 629
    :cond_75
    :goto_75
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_3c

    .line 631
    :cond_7a
    nop

    .line 632
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 634
    return-void

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_74
        :pswitch_42
        :pswitch_43
    .end packed-switch
.end method

.method private declared-synchronized setDebugInternal(Z)Ljava/lang/String;
    .registers 4
    .param p1, "debug"    # Z

    monitor-enter p0

    .line 554
    :try_start_1
    sput-boolean p1, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Debug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 553
    .end local p0    # "this":Lcom/mediatek/amsAal/AalUtils;
    .end local p1    # "debug":Z
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private native setSmartBacklightStrength(I)V
.end method

.method private declared-synchronized setSmartBacklightTableInternal(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    monitor-enter p0

    .line 566
    :try_start_1
    iget v0, p0, Lcom/mediatek/amsAal/AalUtils;->mAalMode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/amsAal/AalUtils;->setSmartBacklightTableInternal(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 566
    .end local p0    # "this":Lcom/mediatek/amsAal/AalUtils;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setSmartBacklightTableInternal(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mode"    # I

    monitor-enter p0

    .line 578
    :try_start_1
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_12

    .line 579
    const-string v0, "AAL is not enabled"

    .line 580
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_10

    .line 581
    const-string v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_7f

    .line 583
    .end local p0    # "this":Lcom/mediatek/amsAal/AalUtils;
    :cond_10
    monitor-exit p0

    return-object v0

    .line 586
    .end local v0    # "msg":Ljava/lang/String;
    :cond_12
    if-ltz p3, :cond_63

    const/4 v0, 0x3

    if-lt p3, v0, :cond_18

    goto :goto_63

    .line 594
    :cond_18
    :try_start_18
    new-instance v0, Lcom/mediatek/amsAal/AalUtils$AalIndex;

    invoke-direct {v0, p0, p3, p1}, Lcom/mediatek/amsAal/AalUtils$AalIndex;-><init>(Lcom/mediatek/amsAal/AalUtils;ILjava/lang/String;)V

    .line 595
    .local v0, "index":Lcom/mediatek/amsAal/AalUtils$AalIndex;
    sget-boolean v1, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_3f

    .line 596
    const-string v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmartBacklightTable("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_3f
    iget-object v1, p0, Lcom/mediatek/amsAal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_61
    .catchall {:try_start_18 .. :try_end_61} :catchall_7f

    monitor-exit p0

    return-object v1

    .line 587
    .end local v0    # "index":Lcom/mediatek/amsAal/AalUtils$AalIndex;
    :cond_63
    :goto_63
    :try_start_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_7d

    .line 589
    const-string v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_7f

    .line 591
    :cond_7d
    monitor-exit p0

    return-object v0

    .line 577
    .end local v0    # "msg":Ljava/lang/String;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":I
    .end local p3    # "mode":I
    :catchall_7f
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .line 440
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sIsAalSupported:Z

    if-eqz v0, :cond_e6

    .line 441
    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_11

    .line 442
    invoke-direct {p0}, Lcom/mediatek/amsAal/AalUtils;->dumpDebugUsageInternal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_eb

    .line 444
    :cond_11
    aget-object v0, p2, p3

    .line 445
    .local v0, "option":Ljava/lang/String;
    const-string v2, "dump"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_28

    array-length v2, p2

    if-ne v2, v3, :cond_28

    .line 446
    invoke-direct {p0}, Lcom/mediatek/amsAal/AalUtils;->dumpInternal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 447
    :cond_28
    const-string v2, "debugon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    array-length v2, p2

    if-ne v2, v3, :cond_41

    .line 448
    invoke-direct {p0, v1}, Lcom/mediatek/amsAal/AalUtils;->setDebugInternal(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    const-string v1, "App-based AAL debug on"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 450
    :cond_41
    const-string v2, "debugoff"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5b

    array-length v2, p2

    if-ne v2, v3, :cond_5b

    .line 451
    invoke-direct {p0, v4}, Lcom/mediatek/amsAal/AalUtils;->setDebugInternal(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    const-string v1, "App-based AAL debug off"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 453
    :cond_5b
    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    array-length v2, p2

    if-ne v2, v3, :cond_70

    .line 454
    invoke-virtual {p0, v1}, Lcom/mediatek/amsAal/AalUtils;->setEnabledInternal(Z)V

    .line 455
    const-string v1, "App-based AAL on"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 456
    :cond_70
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    array-length v2, p2

    if-ne v2, v3, :cond_84

    .line 457
    invoke-virtual {p0, v4}, Lcom/mediatek/amsAal/AalUtils;->setEnabledInternal(Z)V

    .line 458
    const-string v1, "App-based AAL off"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e5

    .line 459
    :cond_84
    const-string v2, "mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Done"

    if-eqz v2, :cond_a5

    array-length v2, p2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_a5

    .line 460
    add-int/lit8 p3, p3, 0x1

    .line 461
    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 462
    .local v1, "mode":I
    invoke-virtual {p0, v1}, Lcom/mediatek/amsAal/AalUtils;->setAalModeInternal(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    .end local v1    # "mode":I
    goto :goto_e5

    :cond_a5
    const-string v2, "set"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    array-length v2, p2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_b5

    array-length v2, p2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_de

    .line 466
    :cond_b5
    add-int/lit8 p3, p3, 0x1

    .line 467
    aget-object v2, p2, p3

    .line 468
    .local v2, "pkgName":Ljava/lang/String;
    add-int/2addr p3, v1

    .line 469
    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 470
    .local v1, "value":I
    array-length v5, p2

    if-ne v5, v4, :cond_cb

    .line 471
    invoke-direct {p0, v2, v1}, Lcom/mediatek/amsAal/AalUtils;->setSmartBacklightTableInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_da

    .line 473
    :cond_cb
    add-int/lit8 p3, p3, 0x1

    .line 474
    aget-object v4, p2, p3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 475
    .local v4, "mode":I
    invoke-direct {p0, v2, v1, v4}, Lcom/mediatek/amsAal/AalUtils;->setSmartBacklightTableInternal(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    .end local v4    # "mode":I
    :goto_da
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    .end local v1    # "value":I
    .end local v2    # "pkgName":Ljava/lang/String;
    goto :goto_e5

    .line 479
    :cond_de
    invoke-direct {p0}, Lcom/mediatek/amsAal/AalUtils;->dumpDebugUsageInternal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    .end local v0    # "option":Ljava/lang/String;
    :goto_e5
    goto :goto_eb

    .line 483
    :cond_e6
    const-string v0, "Not support App-based AAL"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    :goto_eb
    return p3
.end method

.method public onAfterActivityResumed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 300
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/amsAal/AalUtils;->setSmartBacklightInternal(Landroid/content/ComponentName;)V

    .line 301
    return-void
.end method

.method public onUpdateSleep(ZZ)V
    .registers 5
    .param p1, "wasSleeping"    # Z
    .param p2, "isSleepingAfterUpdate"    # Z

    .line 304
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_22

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateSleep before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_22
    if-eq p1, p2, :cond_2c

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2c

    .line 309
    const-string v0, "for sleep"

    invoke-virtual {p0, v0}, Lcom/mediatek/amsAal/AalUtils;->setDefaultSmartBacklightInternal(Ljava/lang/String;)V

    .line 311
    :cond_2c
    return-void
.end method

.method public setAalMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 137
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sIsAalSupported:Z

    if-nez v0, :cond_10

    .line 138
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_f

    .line 139
    const-string v0, "AalUtils"

    const-string v1, "AAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_f
    return-void

    .line 144
    :cond_10
    invoke-virtual {p0, p1}, Lcom/mediatek/amsAal/AalUtils;->setAalModeInternal(I)Ljava/lang/String;

    .line 145
    return-void
.end method

.method declared-synchronized setAalModeInternal(I)Ljava/lang/String;
    .registers 5
    .param p1, "mode"    # I

    monitor-enter p0

    .line 170
    :try_start_1
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_12

    .line 171
    const-string v0, "AAL is not enabled"

    .line 172
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_10

    .line 173
    const-string v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_5f

    .line 175
    .end local p0    # "this":Lcom/mediatek/amsAal/AalUtils;
    :cond_10
    monitor-exit p0

    return-object v0

    .line 178
    .end local v0    # "msg":Ljava/lang/String;
    :cond_12
    const/4 v0, 0x0

    .line 179
    .restart local v0    # "msg":Ljava/lang/String;
    if-ltz p1, :cond_42

    const/4 v1, 0x3

    if-ge p1, v1, :cond_42

    .line 180
    :try_start_18
    iput p1, p0, Lcom/mediatek/amsAal/AalUtils;->mAalMode:I

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAalModeInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/amsAal/AalUtils;->mAalMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/amsAal/AalUtils;->mAalMode:I

    invoke-direct {p0, v2}, Lcom/mediatek/amsAal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_54

    .line 183
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 186
    :goto_54
    sget-boolean v1, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_5d

    .line 187
    const-string v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_18 .. :try_end_5d} :catchall_5f

    .line 189
    :cond_5d
    monitor-exit p0

    return-object v0

    .line 169
    .end local v0    # "msg":Ljava/lang/String;
    .end local p1    # "mode":I
    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDefaultSmartBacklightInternal(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    monitor-enter p0

    .line 278
    :try_start_1
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_12

    .line 279
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_10

    .line 280
    const-string v0, "AalUtils"

    const-string v1, "AAL is not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_40

    .line 282
    .end local p0    # "this":Lcom/mediatek/amsAal/AalUtils;
    :cond_10
    monitor-exit p0

    return-void

    .line 285
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    if-eqz v0, :cond_3e

    iget v0, v0, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_3e

    .line 286
    const-string v0, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmartBacklightStrength(128) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    iput v1, v0, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    .line 288
    iget-object v0, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mName:Ljava/lang/String;

    .line 289
    invoke-direct {p0, v1}, Lcom/mediatek/amsAal/AalUtils;->setSmartBacklightStrength(I)V
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_40

    .line 291
    :cond_3e
    monitor-exit p0

    return-void

    .line 277
    .end local p1    # "reason":Ljava/lang/String;
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 153
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sIsAalSupported:Z

    if-nez v0, :cond_10

    .line 154
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_f

    .line 155
    const-string v0, "AalUtils"

    const-string v1, "AAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_f
    return-void

    .line 160
    :cond_10
    invoke-virtual {p0, p1}, Lcom/mediatek/amsAal/AalUtils;->setEnabledInternal(Z)V

    .line 161
    return-void
.end method

.method public declared-synchronized setEnabledInternal(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 198
    :try_start_1
    sput-boolean p1, Lcom/mediatek/amsAal/AalUtils;->sEnabled:Z

    .line 199
    if-nez p1, :cond_12

    .line 200
    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/mediatek/amsAal/AalUtils;->setDefaultSmartBacklightInternal(Ljava/lang/String;)V

    .line 201
    const-string v0, "persist.vendor.sys.mtk_app_aal_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 203
    .end local p0    # "this":Lcom/mediatek/amsAal/AalUtils;
    :cond_12
    const-string v0, "persist.vendor.sys.mtk_app_aal_support"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_19
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_3a

    .line 207
    const-string v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabledInternal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/amsAal/AalUtils;->sEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 209
    :cond_3a
    monitor-exit p0

    return-void

    .line 197
    .end local p1    # "enabled":Z
    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSmartBacklightInternal(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    monitor-enter p0

    .line 217
    :try_start_1
    iget v0, p0, Lcom/mediatek/amsAal/AalUtils;->mAalMode:I

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/amsAal/AalUtils;->setSmartBacklightInternal(Landroid/content/ComponentName;I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 218
    monitor-exit p0

    return-void

    .line 216
    .end local p0    # "this":Lcom/mediatek/amsAal/AalUtils;
    .end local p1    # "name":Landroid/content/ComponentName;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSmartBacklightInternal(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    monitor-enter p0

    .line 227
    :try_start_1
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_12

    .line 228
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_10

    .line 229
    const-string v0, "AalUtils"

    const-string v1, "AAL is not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_d6

    .line 231
    .end local p0    # "this":Lcom/mediatek/amsAal/AalUtils;
    :cond_10
    monitor-exit p0

    return-void

    .line 234
    :cond_12
    if-ltz p2, :cond_ba

    const/4 v0, 0x3

    if-lt p2, v0, :cond_19

    goto/16 :goto_ba

    .line 241
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    const/16 v1, 0x80

    if-nez v0, :cond_32

    .line 242
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_2a

    .line 243
    const-string v0, "AalUtils"

    const-string v2, "mCurrentConfig == null"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_2a
    new-instance v0, Lcom/mediatek/amsAal/AalUtils$AalConfig;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/mediatek/amsAal/AalUtils$AalConfig;-><init>(Lcom/mediatek/amsAal/AalUtils;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    .line 249
    :cond_32
    new-instance v0, Lcom/mediatek/amsAal/AalUtils$AalIndex;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p2, v2}, Lcom/mediatek/amsAal/AalUtils$AalIndex;-><init>(Lcom/mediatek/amsAal/AalUtils;ILjava/lang/String;)V

    .line 250
    .local v0, "index":Lcom/mediatek/amsAal/AalUtils$AalIndex;
    invoke-direct {p0, v0}, Lcom/mediatek/amsAal/AalUtils;->getAalConfig(Lcom/mediatek/amsAal/AalUtils$AalIndex;)Lcom/mediatek/amsAal/AalUtils$AalConfig;

    move-result-object v2

    .line 251
    .local v2, "config":Lcom/mediatek/amsAal/AalUtils$AalConfig;
    iget v3, v2, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    const/4 v4, -0x1

    if-ne v4, v3, :cond_59

    .line 252
    new-instance v3, Lcom/mediatek/amsAal/AalUtils$AalIndex;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, p2, v5}, Lcom/mediatek/amsAal/AalUtils$AalIndex;-><init>(Lcom/mediatek/amsAal/AalUtils;ILjava/lang/String;)V

    move-object v0, v3

    .line 253
    invoke-direct {p0, v0}, Lcom/mediatek/amsAal/AalUtils;->getAalConfig(Lcom/mediatek/amsAal/AalUtils$AalIndex;)Lcom/mediatek/amsAal/AalUtils$AalConfig;

    move-result-object v3

    move-object v2, v3

    .line 254
    iget v3, v2, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    if-ne v4, v3, :cond_59

    .line 255
    iput v1, v2, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    .line 259
    :cond_59
    iget v1, v2, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    invoke-direct {p0, v1}, Lcom/mediatek/amsAal/AalUtils;->ensureBacklightLevel(I)I

    move-result v1

    .line 260
    .local v1, "validLevel":I
    sget-boolean v3, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_85

    .line 261
    const-string v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmartBacklight current level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    iget v5, v5, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_85
    iget-object v3, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    iget v3, v3, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    if-eq v3, v1, :cond_b8

    .line 265
    const-string v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmartBacklightStrength("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v3, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    iput v1, v3, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    .line 267
    iget-object v3, p0, Lcom/mediatek/amsAal/AalUtils;->mCurrentConfig:Lcom/mediatek/amsAal/AalUtils$AalConfig;

    invoke-virtual {v0}, Lcom/mediatek/amsAal/AalUtils$AalIndex;->getIndexName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mName:Ljava/lang/String;

    .line 268
    invoke-direct {p0, v1}, Lcom/mediatek/amsAal/AalUtils;->setSmartBacklightStrength(I)V
    :try_end_b8
    .catchall {:try_start_19 .. :try_end_b8} :catchall_d6

    .line 270
    :cond_b8
    monitor-exit p0

    return-void

    .line 235
    .end local v0    # "index":Lcom/mediatek/amsAal/AalUtils$AalIndex;
    .end local v1    # "validLevel":I
    .end local v2    # "config":Lcom/mediatek/amsAal/AalUtils$AalConfig;
    :cond_ba
    :goto_ba
    :try_start_ba
    sget-boolean v0, Lcom/mediatek/amsAal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_d4

    .line 236
    const-string v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_ba .. :try_end_d4} :catchall_d6

    .line 238
    :cond_d4
    monitor-exit p0

    return-void

    .line 226
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "mode":I
    :catchall_d6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
