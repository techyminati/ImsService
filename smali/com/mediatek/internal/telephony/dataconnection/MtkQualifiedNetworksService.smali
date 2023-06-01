.class public Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;
.super Landroid/telephony/data/QualifiedNetworksService;
.source "MtkQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_QUALIFIED_NETWORKS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Landroid/telephony/data/QualifiedNetworksService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 191
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method


# virtual methods
.method public onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
    .registers 4
    .param p1, "slotIndex"    # I

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkQNS create MtkNetworkAvailabilityProvider for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->log(Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to cellular data service with invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->loge(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_30
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;I)V

    return-object v0
.end method
