.class public interface abstract Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
.super Ljava/lang/Object;
.source "IDataConnectionExt.java"


# virtual methods
.method public abstract getIsPcoAllowedDefault()Z
.end method

.method public abstract getPcoActionByApnType(Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/telephony/PcoData;)I
.end method

.method public abstract handlePcoDataAfterAttached(Landroid/os/AsyncResult;Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncResult;",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ignoreDataRoaming(Ljava/lang/String;)Z
.end method

.method public abstract ignoreDefaultDataUnselected(Ljava/lang/String;)Z
.end method

.method public abstract isDataAllowedAsOff(Ljava/lang/String;)Z
.end method

.method public abstract isDomesticRoamingEnabled()Z
.end method

.method public abstract isFdnEnableSupport()Z
.end method

.method public abstract isMeteredApnType(Ljava/lang/String;Z)Z
.end method

.method public abstract isMeteredApnTypeByLoad()Z
.end method

.method public abstract isPermanentCause(I)Z
.end method

.method public abstract onDcActivated([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDcDeactivated([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setIsPcoAllowedDefault(Z)V
.end method
