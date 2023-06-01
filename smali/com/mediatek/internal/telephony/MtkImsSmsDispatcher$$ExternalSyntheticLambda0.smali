.class public final synthetic Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/telephony/ImsSmsDispatcher$FeatureConnectorFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;
    .registers 6

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/ims/ImsManager;->getConnector(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;

    move-result-object p1

    return-object p1
.end method
