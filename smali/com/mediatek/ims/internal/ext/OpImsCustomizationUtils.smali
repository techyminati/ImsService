.class public Lcom/mediatek/ims/internal/ext/OpImsCustomizationUtils;
.super Ljava/lang/Object;
.source "OpImsCustomizationUtils.java"


# static fields
.field static sFactory:Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;

.field private static final sOperatorFactoryInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/ext/OpImsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 19
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/ims/internal/ext/OpImsCustomizationUtils;->sFactory:Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;

    .line 23
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP18Ims.jar"

    const-string v4, "com.mediatek.op18.ims.Op18ImsCustomizationFactory"

    const-string v5, "OP18"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP15Ims.jar"

    const-string v4, "com.mediatek.op15.ims.Op15ImsCustomizationFactory"

    const-string v5, "OP15"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP236Ims.jar"

    const-string v4, "com.mediatek.op236.ims.Op236ImsCustomizationFactory"

    const-string v5, "OP236"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/mediatek/ims/internal/ext/OpImsCustomizationUtils;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/mediatek/ims/internal/ext/OpImsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 47
    invoke-static {p0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;

    sput-object v1, Lcom/mediatek/ims/internal/ext/OpImsCustomizationUtils;->sFactory:Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;

    .line 48
    if-nez v1, :cond_16

    .line 49
    new-instance v1, Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;

    invoke-direct {v1}, Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;-><init>()V

    sput-object v1, Lcom/mediatek/ims/internal/ext/OpImsCustomizationUtils;->sFactory:Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;

    .line 51
    :cond_16
    sget-object v1, Lcom/mediatek/ims/internal/ext/OpImsCustomizationUtils;->sFactory:Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object v1

    .line 45
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method
