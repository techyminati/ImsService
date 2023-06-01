.class public Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;
.super Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub;
.source "MtkTelephonyRegistryEx.java"


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MtkTelephonyRegistryEx"

.field private static final VDBG:Z = false

.field private static sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub;-><init>()V

    .line 68
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->publish()V

    .line 69
    return-void
.end method

.method private static idMatchEx(IIIII)Z
    .registers 8
    .param p0, "rSubId"    # I
    .param p1, "subId"    # I
    .param p2, "dSubId"    # I
    .param p3, "rPhoneId"    # I
    .param p4, "phoneId"    # I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idMatchEx: rSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyRegistryEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_3f

    .line 84
    if-ne p3, p4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    :goto_3e
    return v0

    .line 86
    :cond_3f
    const v2, 0x7fffffff

    if-ne p0, v2, :cond_49

    .line 87
    if-ne p1, p2, :cond_47

    goto :goto_48

    :cond_47
    move v0, v1

    :goto_48
    return v0

    .line 89
    :cond_49
    if-ne p0, p1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    :goto_4d
    return v0
.end method

.method static init()Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;
    .registers 4

    .line 57
    const-class v0, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    if-nez v1, :cond_f

    .line 59
    new-instance v1, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    goto :goto_27

    .line 61
    :cond_f
    const-string v1, "MtkTelephonyRegistryEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_27
    sget-object v1, Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyRegistryEx;

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private publish()V
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyRegistryEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "telephony.mtkregistry"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 75
    return-void
.end method
