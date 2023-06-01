.class public final synthetic Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/wfo/impl/WifiOffloadHIDLCallback$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
