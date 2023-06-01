.class public final synthetic Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->lambda$onDataStateChanged$0(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result p1

    return p1
.end method
