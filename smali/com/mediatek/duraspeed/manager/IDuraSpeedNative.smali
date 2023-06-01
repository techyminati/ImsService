.class public interface abstract Lcom/mediatek/duraspeed/manager/IDuraSpeedNative;
.super Ljava/lang/Object;
.source "IDuraSpeedNative.java"


# virtual methods
.method public abstract isDuraSpeedEnabled()Z
.end method

.method public abstract onActivityIdle(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract onAppProcessDied(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onBeforeActivitySwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZI)V
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract onWakefulnessChanged(I)V
.end method

.method public abstract startDuraSpeedService(Landroid/content/Context;)V
.end method

.method public abstract triggerMemory(II)V
.end method
