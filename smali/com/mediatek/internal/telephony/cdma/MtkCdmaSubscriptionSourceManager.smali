.class public Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;
.super Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
.source "MtkCdmaSubscriptionSourceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MtkCdmaSSM"


# instance fields
.field private mActStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;->mActStatus:I

    .line 61
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 74
    const-string v0, "MtkCdmaSSM"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 78
    const-string v0, "MtkCdmaSSM"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method


# virtual methods
.method public getActStatus()I
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;->mActStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;->log(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;->mActStatus:I

    return v0
.end method

.method protected setActStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 70
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;->mActStatus:I

    .line 71
    return-void
.end method
