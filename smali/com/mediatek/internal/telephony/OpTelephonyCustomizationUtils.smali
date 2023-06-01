.class public Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;
.super Ljava/lang/Object;
.source "OpTelephonyCustomizationUtils.java"


# static fields
.field static volatile sFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

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
    .registers 12

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 61
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->sFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 64
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP01Telephony.jar"

    const-string v4, "com.mediatek.op01.telephony.Op01TelephonyCustomizationFactory"

    const-string v5, "OP01"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP02Telephony.jar"

    const-string v4, "com.mediatek.op02.telephony.Op02TelephonyCustomizationFactory"

    const-string v5, "OP02"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP08Telephony.jar"

    const-string v4, "com.mediatek.op08.telephony.Op08TelephonyCustomizationFactory"

    const-string v5, "OP08"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v7, "OP09CTelephony.jar"

    const-string v8, "com.mediatek.op09c.telephony.Op09CTelephonyCustomizationFactory"

    const/4 v9, 0x0

    const-string v10, "OP09"

    const-string v11, "SEGC"

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP12Telephony.jar"

    const-string v4, "com.mediatek.op12.telephony.Op12TelephonyCustomizationFactory"

    const-string v5, "OP12"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP07Telephony.jar"

    const-string v4, "com.mediatek.op07.telephony.Op07TelephonyCustomizationFactory"

    const-string v5, "OP07"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP18Telephony.jar"

    const-string v4, "com.mediatek.op18.telephony.Op18TelephonyCustomizationFactory"

    const-string v5, "OP18"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP129Telephony.jar"

    const-string v4, "com.mediatek.op129.telephony.Op129TelephonyCustomizationFactory"

    const-string v5, "OP129"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    const-class v0, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    monitor-enter v0

    .line 116
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 118
    invoke-static {p0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    sput-object v1, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->sFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 119
    sget-object v1, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->sFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    if-nez v1, :cond_18

    .line 120
    new-instance v1, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->sFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    .line 122
    :cond_18
    sget-object v1, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->sFactory:Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    monitor-exit v0

    return-object v1

    .line 123
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public static getRsuSmlFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    invoke-static {p0}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;->getFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;

    move-result-object v0

    return-object v0
.end method
