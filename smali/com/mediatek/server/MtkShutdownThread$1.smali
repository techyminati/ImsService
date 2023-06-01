.class Lcom/mediatek/server/MtkShutdownThread$1;
.super Ljava/lang/Object;
.source "MtkShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/MtkShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 217
    # getter for: Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->access$000()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    check-cast v0, Lcom/mediatek/server/MtkShutdownThread;

    # getter for: Lcom/mediatek/server/MtkShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/mediatek/server/MtkShutdownThread;->access$100(Lcom/mediatek/server/MtkShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 218
    # getter for: Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    check-cast v0, Lcom/mediatek/server/MtkShutdownThread;

    # getter for: Lcom/mediatek/server/MtkShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/mediatek/server/MtkShutdownThread;->access$300(Lcom/mediatek/server/MtkShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 219
    # getter for: Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    check-cast v0, Lcom/mediatek/server/MtkShutdownThread;

    # getter for: Lcom/mediatek/server/MtkShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/mediatek/server/MtkShutdownThread;->access$500(Lcom/mediatek/server/MtkShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 221
    :cond_29
    # getter for: Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    check-cast v0, Lcom/mediatek/server/MtkShutdownThread;

    # getter for: Lcom/mediatek/server/MtkShutdownThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/mediatek/server/MtkShutdownThread;->access$700(Lcom/mediatek/server/MtkShutdownThread;)Landroid/os/PowerManager;

    move-result-object v0

    if-nez v0, :cond_50

    .line 222
    # getter for: Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->access$800()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    check-cast v0, Lcom/mediatek/server/MtkShutdownThread;

    .line 223
    # getter for: Lcom/mediatek/server/MtkShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->access$1000()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    check-cast v1, Lcom/mediatek/server/MtkShutdownThread;

    .line 224
    # getter for: Lcom/mediatek/server/MtkShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/server/MtkShutdownThread;->access$1100(Lcom/mediatek/server/MtkShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 222
    # setter for: Lcom/mediatek/server/MtkShutdownThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0, v1}, Lcom/mediatek/server/MtkShutdownThread;->access$902(Lcom/mediatek/server/MtkShutdownThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 227
    :cond_50
    # invokes: Lcom/mediatek/server/MtkShutdownThread;->setBacklightOff()V
    invoke-static {}, Lcom/mediatek/server/MtkShutdownThread;->access$1200()V

    .line 228
    return-void
.end method
