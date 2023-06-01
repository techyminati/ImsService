.class public Lcom/mediatek/amplus/AlarmManagerPlus;
.super Ljava/lang/Object;
.source "AlarmManagerPlus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmManager"


# instance fields
.field private mPowerSavingUtils:Lcom/mediatek/amplus/PowerSavingUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/amplus/AlarmManagerPlus;->mPowerSavingUtils:Lcom/mediatek/amplus/PowerSavingUtils;

    .line 48
    new-instance v0, Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-direct {v0, p1}, Lcom/mediatek/amplus/PowerSavingUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/amplus/AlarmManagerPlus;->mPowerSavingUtils:Lcom/mediatek/amplus/PowerSavingUtils;

    .line 49
    return-void
.end method


# virtual methods
.method public getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J
    .registers 23
    .param p1, "type"    # I
    .param p2, "triggerElapsed"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "mAlarmMode"    # I
    .param p10, "needGrouping"    # Z

    .line 53
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/amplus/AlarmManagerPlus;->mPowerSavingUtils:Lcom/mediatek/amplus/PowerSavingUtils;

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/amplus/PowerSavingUtils;->getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public isPowerSavingStart()Z
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/mediatek/amplus/AlarmManagerPlus;->mPowerSavingUtils:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-virtual {v0}, Lcom/mediatek/amplus/PowerSavingUtils;->isPowerSavingStart()Z

    move-result v0

    return v0
.end method
