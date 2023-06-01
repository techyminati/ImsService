.class public final synthetic Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 2

    invoke-static {p1}, Lcom/mediatek/ims/internal/MtkImsManager;->lambda$isImsOverNrEnabledByPlatform$1(I)Z

    move-result p1

    return p1
.end method
