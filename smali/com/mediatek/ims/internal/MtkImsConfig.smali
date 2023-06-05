.class public Lcom/mediatek/ims/internal/MtkImsConfig;
.super Ljava/lang/Object;
.source "MtkImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/MtkImsConfig$WfcModeFeatureValueConstants;,
        Lcom/mediatek/ims/internal/MtkImsConfig$ConfigConstants;
    }
.end annotation


# static fields
.field public static final MTK_CONFIG_START:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MtkImsConfig"


# instance fields
.field private DBG:Z

.field private mContext:Landroid/content/Context;

.field private final miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/IMtkImsConfig;Landroid/content/Context;)V
    .locals 1
    .param p1, "iconfig"    # Lcom/mediatek/ims/internal/IMtkImsConfig;
    .param p2, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->DBG:Z

    .line 100
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    .line 101
    iput-object p2, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->DBG:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFeatureValue: feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", network ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listener ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsConfig"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    nop

    .line 218
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string v3, "getFeatureValue()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getImsResCapability(I)I
    .locals 5
    .param p1, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "capability":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getImsResCapability(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 292
    nop

    .line 293
    return v0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "getImsResCapability()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 137
    const-string v0, "Unknown"

    .line 139
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 143
    nop

    .line 144
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedStringValue(): item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ret ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfig"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    return-object v0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "getProvisionedStringValue()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getProvisionedValue(I)I
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getProvisionedValue(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 121
    nop

    .line 122
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedValue(): item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ret ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsConfig"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return v0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "getValue()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    nop

    .line 239
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string v3, "setFeatureValue()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setImsResCapability(II)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    nop

    .line 277
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string v3, "setImsResCapability()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "result":[I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 338
    nop

    .line 339
    return-object v0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "setModemImsCfg()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setModemImsIwlanCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "result":[I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setModemImsIwlanCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 374
    nop

    .line 375
    return-object v0

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "setImsModemIwlanCfg()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setModemImsWoCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, "result":[I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setModemImsWoCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 356
    nop

    .line 357
    return-object v0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "setModemImsWoCfg()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setMultiFeatureValues([I[I[ILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "feature"    # [I
    .param p2, "network"    # [I
    .param p3, "value"    # [I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 255
    const-string v0, "setMultiFeatureValues()"

    :try_start_0
    const-string v1, "MtkImsConfig"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setMultiFeatureValues([I[I[ILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    nop

    .line 262
    return-void

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    invoke-direct {v2, v0, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 186
    const/4 v0, -0x1

    .line 188
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 192
    nop

    .line 193
    return v0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "setProvisionedStringValue()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setProvisionedValue(II)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 162
    const/4 v0, -0x1

    .line 164
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setProvisionedValue(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 168
    nop

    .line 169
    return v0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x83

    const-string v4, "setProvisionedValue()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setVoltePreference(I)V
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setVoltePreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    nop

    .line 322
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string v3, "setVoltePreference()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setWfcMode(I)V
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsConfig;->miConfig:Lcom/mediatek/ims/internal/IMtkImsConfig;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setWfcMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    nop

    .line 308
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x83

    const-string v3, "setWfcMode()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
