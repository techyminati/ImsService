.class public Lcom/mediatek/boostframework/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Performance"

.field private static mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;


# instance fields
.field private mhandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/boostframework/Performance;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/boostframework/Performance;->mhandle:I

    .line 61
    invoke-static {}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->getInstance()Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    move-result-object v0

    sput-object v0, Lcom/mediatek/boostframework/Performance;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 62
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Performance] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_Performance"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Performance] ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_Performance"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method


# virtual methods
.method public varargs perfLockAcquire(I[I)I
    .registers 5
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 72
    invoke-virtual {p0, p2}, Lcom/mediatek/boostframework/Performance;->perfchecklist([I)I

    move-result v0

    if-nez v0, :cond_8

    .line 73
    const/4 v0, -0x1

    return v0

    .line 75
    :cond_8
    sget-object v0, Lcom/mediatek/boostframework/Performance;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    iget v1, p0, Lcom/mediatek/boostframework/Performance;->mhandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockAcquire(II[I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/boostframework/Performance;->mhandle:I

    .line 79
    return v0
.end method

.method public perfLockRelease()I
    .registers 3

    .line 84
    sget-object v0, Lcom/mediatek/boostframework/Performance;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    iget v1, p0, Lcom/mediatek/boostframework/Performance;->mhandle:I

    invoke-virtual {v0, v1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockRelease(I)V

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public perfLockRelease(I)I
    .registers 3
    .param p1, "handle"    # I

    .line 90
    sget-object v0, Lcom/mediatek/boostframework/Performance;->mPowerHalWrap:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    invoke-virtual {v0, p1}, Lcom/mediatek/powerhalwrapper/PowerHalWrapper;->perfLockRelease(I)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public varargs perfchecklist([I)I
    .registers 3
    .param p1, "list"    # [I

    .line 65
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
