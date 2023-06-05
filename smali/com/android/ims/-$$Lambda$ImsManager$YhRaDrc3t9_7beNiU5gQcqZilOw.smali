.class public final synthetic Lcom/android/ims/-$$Lambda$ImsManager$YhRaDrc3t9_7beNiU5gQcqZilOw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/ims/-$$Lambda$ImsManager$YhRaDrc3t9_7beNiU5gQcqZilOw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/-$$Lambda$ImsManager$YhRaDrc3t9_7beNiU5gQcqZilOw;

    invoke-direct {v0}, Lcom/android/ims/-$$Lambda$ImsManager$YhRaDrc3t9_7beNiU5gQcqZilOw;-><init>()V

    sput-object v0, Lcom/android/ims/-$$Lambda$ImsManager$YhRaDrc3t9_7beNiU5gQcqZilOw;->INSTANCE:Lcom/android/ims/-$$Lambda$ImsManager$YhRaDrc3t9_7beNiU5gQcqZilOw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-static {p1}, Lcom/android/ims/ImsManager;->lambda$isImsNeeded$3(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result p1

    return p1
.end method
