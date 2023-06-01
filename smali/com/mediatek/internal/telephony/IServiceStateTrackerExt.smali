.class public interface abstract Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
.super Ljava/lang/Object;
.source "IServiceStateTrackerExt.java"


# virtual methods
.method public abstract allowSpnDisplayed()Z
.end method

.method public abstract getMtkLteRsrpThreshold()[I
.end method

.method public abstract getMtkLteRssnrThreshold()[I
.end method

.method public abstract getMtkRsrpOnly()Z
.end method

.method public abstract isImeiLocked()Z
.end method

.method public abstract isNeedDisableIVSR()Z
.end method

.method public abstract isSupportRatBalancing()Z
.end method

.method public abstract modifyRsrpThresholdsForRsrpBoost(Landroid/os/PersistableBundle;II)Z
.end method

.method public abstract needBrodcastAcmt(II)Z
.end method

.method public abstract needIgnoreFemtocellUpdate(II)Z
.end method

.method public abstract needIgnoredState(III)Z
.end method

.method public abstract needRatchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
.end method

.method public abstract needRejectCauseNotification(I)Z
.end method

.method public abstract needSpnRuleShowPlmnOnly()Z
.end method

.method public abstract needToShowCsgId()Z
.end method

.method public abstract onUpdateSpnDisplay(Ljava/lang/String;Lmediatek/telephony/MtkServiceState;I)Ljava/lang/String;
.end method

.method public abstract operatorDefinedInternationalRoaming(Ljava/lang/String;)Z
.end method

.method public abstract showEccForIms()Z
.end method
