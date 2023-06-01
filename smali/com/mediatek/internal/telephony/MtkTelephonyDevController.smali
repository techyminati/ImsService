.class public Lcom/mediatek/internal/telephony/MtkTelephonyDevController;
.super Lcom/android/internal/telephony/TelephonyDevController;
.source "MtkTelephonyDevController.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "MtkTDC"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyDevController;-><init>()V

    .line 57
    const-string v0, "MtkTelephonyDevController constructor"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->logd(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V
    .registers 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 81
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_a2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_a2

    .line 82
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 83
    .local v0, "hwcfg":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a1

    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/internal/telephony/HardwareConfig;

    .line 87
    if-eqz v2, :cond_9d

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/android/internal/telephony/HardwareConfig;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/HardwareConfig;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "str":Ljava/lang/String;
    iget v5, v2, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v5, :cond_70

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/internal/telephony/HardwareConfig;->rilModel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",0,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/internal/telephony/HardwareConfig;->maxActiveVoiceCall:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/internal/telephony/HardwareConfig;->maxActiveDataCall:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/internal/telephony/HardwareConfig;->maxStandby:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_84

    .line 97
    :cond_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    :goto_84
    new-instance v4, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    invoke-direct {v4, v3}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, "mtkHwCfg":Lcom/mediatek/internal/telephony/MtkHardwareConfig;
    iget v5, v4, Lcom/mediatek/internal/telephony/MtkHardwareConfig;->type:I

    if-nez v5, :cond_93

    .line 101
    sget-object v5, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_9d

    .line 102
    :cond_93
    iget v5, v2, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9d

    .line 103
    sget-object v5, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    .line 83
    .end local v2    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "mtkHwCfg":Lcom/mediatek/internal/telephony/MtkHardwareConfig;
    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 107
    .end local v0    # "hwcfg":Ljava/util/List;
    .end local v1    # "i":I
    :cond_a1
    goto :goto_a7

    .line 111
    :cond_a2
    const-string v0, "handleGetHardwareConfigChanged - returned an error."

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->loge(Ljava/lang/String;)V

    .line 113
    :goto_a7
    return-void
.end method

.method protected initFromResource()V
    .registers 9

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, "resource":Landroid/content/res/Resources;
    const v1, 0x1070082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "hwStrings":[Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 66
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_30

    aget-object v4, v1, v3

    .line 67
    .local v4, "hwString":Ljava/lang/String;
    new-instance v5, Lcom/mediatek/internal/telephony/MtkHardwareConfig;

    invoke-direct {v5, v4}, Lcom/mediatek/internal/telephony/MtkHardwareConfig;-><init>(Ljava/lang/String;)V

    .line 68
    .local v5, "hw":Lcom/android/internal/telephony/HardwareConfig;
    nop

    .line 69
    iget v6, v5, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v6, :cond_23

    .line 70
    sget-object v6, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_2d

    .line 71
    :cond_23
    iget v6, v5, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2d

    .line 72
    sget-object v6, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/MtkTelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    .line 66
    .end local v4    # "hwString":Ljava/lang/String;
    .end local v5    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 77
    :cond_30
    return-void
.end method
