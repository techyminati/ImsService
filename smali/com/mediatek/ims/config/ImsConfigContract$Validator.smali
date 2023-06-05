.class public Lcom/mediatek/ims/config/ImsConfigContract$Validator;
.super Ljava/lang/Object;
.source "ImsConfigContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/ImsConfigContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Validator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidConfigId(I)Z
    .locals 2
    .param p0, "configId"    # I

    .line 403
    const/4 v0, 0x1

    .line 405
    .local v0, "valid":Z
    if-gez p0, :cond_0

    .line 406
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_0
    const/16 v1, 0x3ea

    if-le p0, v1, :cond_1

    .line 408
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :cond_1
    const/16 v1, 0x42

    if-le p0, v1, :cond_2

    const/16 v1, 0x3e8

    if-ge p0, v1, :cond_2

    .line 411
    const/4 v0, 0x0

    .line 413
    :cond_2
    :goto_0
    return v0
.end method

.method public static isValidFeatureId(I)Z
    .locals 2
    .param p0, "featureId"    # I

    .line 368
    const/4 v0, 0x1

    .line 369
    .local v0, "valid":Z
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    .line 379
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :cond_0
    nop

    .line 382
    :goto_0
    return v0
.end method

.method public static isValidFeatureValue(I)Z
    .locals 2
    .param p0, "featureVal"    # I

    .line 386
    const/4 v0, 0x1

    .line 387
    .local v0, "valid":Z
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 392
    const/4 v0, 0x0

    goto :goto_0

    .line 390
    :cond_0
    nop

    .line 395
    :goto_0
    return v0
.end method

.method public static isValidMimeTypeId(I)Z
    .locals 2
    .param p0, "mimeTypeId"    # I

    .line 417
    const/4 v0, 0x1

    .line 418
    .local v0, "valid":Z
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 425
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :cond_0
    nop

    .line 428
    :goto_0
    return v0
.end method

.method public static isValidNetwork(I)Z
    .locals 1
    .param p0, "network"    # I

    .line 399
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSettingId(I)Z
    .locals 1
    .param p0, "settingId"    # I

    .line 356
    const/4 v0, 0x1

    .line 357
    .local v0, "valid":Z
    if-eqz p0, :cond_0

    .line 361
    const/4 v0, 0x0

    goto :goto_0

    .line 359
    :cond_0
    nop

    .line 364
    :goto_0
    return v0
.end method

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 7
    .param p0, "table"    # Ljava/lang/String;

    .line 339
    const/4 v0, 0x1

    .line 340
    .local v0, "valid":Z
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "tb_default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string v1, "tb_master"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "tb_provision"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "tb_resource"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "tb_feature"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "tb_config_setting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 349
    const/4 v0, 0x0

    goto :goto_2

    .line 347
    :cond_1
    nop

    .line 352
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f2433bc -> :sswitch_5
        -0x3a541ddb -> :sswitch_4
        -0x1330bd41 -> :sswitch_3
        0x2aff044 -> :sswitch_2
        0x5432a153 -> :sswitch_1
        0x5c1d3d70 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isValidUnitId(I)Z
    .locals 1
    .param p0, "unitId"    # I

    .line 432
    const/4 v0, 0x1

    .line 433
    .local v0, "valid":Z
    packed-switch p0, :pswitch_data_0

    .line 444
    const/4 v0, 0x0

    goto :goto_0

    .line 442
    :pswitch_0
    nop

    .line 447
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
