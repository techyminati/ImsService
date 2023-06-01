.class public final synthetic Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    check-cast p2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->lambda$initApnContexts$0(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I

    move-result p1

    return p1
.end method
