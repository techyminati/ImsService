.class public Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;
.super Landroid/telephony/data/DataService;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;
    }
.end annotation


# static fields
.field private static final APN_UNTHROTTLED:I = 0x7

.field private static final CANCEL_HANDOVER:I = 0x6

.field private static final DATA_CALL_LIST_CHANGED:I = 0x4

.field private static final DBG:Z = true

.field private static final DEACTIVATE_DATA_ALL_COMPLETE:I = 0x2

.field private static final REQUEST_DATA_CALL_LIST_COMPLETE:I = 0x3

.field private static final SETUP_DATA_CALL_COMPLETE:I = 0x1

.field private static final START_HANDOVER:I = 0x5

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Landroid/telephony/data/DataService;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 265
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 269
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method


# virtual methods
.method public onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;
    .registers 5
    .param p1, "slotIndex"    # I

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWLAN data service created for slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->log(Ljava/lang/String;)V

    .line 257
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to IWLAN data service with invalid slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->loge(Ljava/lang/String;)V

    .line 259
    return-object v1

    .line 261
    :cond_30
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    invoke-direct {v0, p0, p1, v1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;ILcom/mediatek/internal/telephony/dataconnection/IwlanDataService$1;)V

    return-object v0
.end method
