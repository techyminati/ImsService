.class public Lcom/mediatek/hdmilocalservice/HdmiLocalService;
.super Lcom/android/server/SystemService;
.source "HdmiLocalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;
    }
.end annotation


# static fields
.field private static final HDMI_TB_SUPPORT:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHdmiObserver:Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    nop

    .line 62
    const-string v0, "ro.vendor.mtk_tb_hdmi"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/mediatek/hdmilocalservice/HdmiLocalService;->HDMI_TB_SUPPORT:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "HdmiLocalService"

    iput-object v0, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService;->TAG:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 76
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1f

    .line 77
    const-string v0, "HdmiLocalService"

    const-string v1, "Do something in this phase(1000)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-boolean v0, Lcom/mediatek/hdmilocalservice/HdmiLocalService;->HDMI_TB_SUPPORT:Z

    if-eqz v0, :cond_1f

    .line 79
    iget-object v0, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService;->mHdmiObserver:Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;

    if-nez v0, :cond_1f

    .line 80
    new-instance v0, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;

    iget-object v1, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;-><init>(Lcom/mediatek/hdmilocalservice/HdmiLocalService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/hdmilocalservice/HdmiLocalService;->mHdmiObserver:Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;

    .line 81
    invoke-virtual {v0}, Lcom/mediatek/hdmilocalservice/HdmiLocalService$HdmiObserver;->startObserve()V

    .line 85
    :cond_1f
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 71
    const-string v0, "HdmiLocalService"

    const-string v1, "Start HdmiLocalService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method
