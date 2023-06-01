.class public final synthetic Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsPhone$ImsManagerFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    return-object p1
.end method
