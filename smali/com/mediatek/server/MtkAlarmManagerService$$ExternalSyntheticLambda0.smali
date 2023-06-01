.class public final synthetic Lcom/mediatek/server/MtkAlarmManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/mediatek/server/MtkAlarmManagerService$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mediatek/server/MtkAlarmManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mediatek/server/MtkAlarmManagerService$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/mediatek/server/MtkAlarmManagerService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/server/MtkAlarmManagerService$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Lcom/android/server/alarm/Alarm;

    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    return-wide v0
.end method
