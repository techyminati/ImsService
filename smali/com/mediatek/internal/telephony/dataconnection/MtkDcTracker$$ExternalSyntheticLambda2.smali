.class public final synthetic Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda2;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
