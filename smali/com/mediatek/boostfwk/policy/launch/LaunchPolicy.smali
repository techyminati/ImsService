.class public Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;
.super Ljava/lang/Object;
.source "LaunchPolicy.java"


# static fields
.field private static MTKPOWER_HINT_PROCESS_CREATE:I = 0x0

.field private static PERF_RES_POWER_END_HINT_HOLD_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SBE-LaunchPolicy"

.field private static mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

.field private static mPowerHandle:I

.field private static mReleaseLaunchDuration:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->mPowerHandle:I

    .line 48
    const/16 v0, 0xbb8

    sput v0, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->mReleaseLaunchDuration:I

    .line 50
    const v0, 0x3410300

    sput v0, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->PERF_RES_POWER_END_HINT_HOLD_TIME:I

    .line 52
    const/16 v0, 0x15

    sput v0, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->MTKPOWER_HINT_PROCESS_CREATE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;->getInstance()Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;->makePowerHalMgr()Lcom/mediatek/powerhalmgr/PowerHalMgr;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    .line 57
    return-void
.end method

.method private perfLockAcquire([I)V
    .registers 5
    .param p1, "resList"    # [I

    .line 71
    sget-object v0, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    if-eqz v0, :cond_13

    .line 72
    sget v1, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->mPowerHandle:I

    sget v2, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->mReleaseLaunchDuration:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->perfLockAcquire(II[I)I

    move-result v0

    sput v0, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->mPowerHandle:I

    .line 74
    sget-object v1, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->mPowerHalService:Lcom/mediatek/powerhalmgr/PowerHalMgr;

    invoke-virtual {v1, v0}, Lcom/mediatek/powerhalmgr/PowerHalMgr;->perfLockRelease(I)V

    .line 76
    :cond_13
    return-void
.end method


# virtual methods
.method public boostEnd(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 60
    const-wide/16 v0, 0x40

    const-string v2, "SBE boost end"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 62
    const/4 v2, 0x2

    new-array v2, v2, [I

    sget v3, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->PERF_RES_POWER_END_HINT_HOLD_TIME:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->MTKPOWER_HINT_PROCESS_CREATE:I

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 65
    .local v2, "perf_lock_rsc":[I
    invoke-direct {p0, v2}, Lcom/mediatek/boostfwk/policy/launch/LaunchPolicy;->perfLockAcquire([I)V

    .line 67
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 68
    return-void
.end method
