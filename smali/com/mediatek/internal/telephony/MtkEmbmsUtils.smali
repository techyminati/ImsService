.class public Lcom/mediatek/internal/telephony/MtkEmbmsUtils;
.super Ljava/lang/Object;
.source "MtkEmbmsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkEmbmsUtils"

.field private static mInstance:Lcom/mediatek/internal/telephony/MtkEmbmsUtils;


# instance fields
.field private CERTIFIED_SIGNATURE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final SIGNATURE_EXPWAY_EBOX:I

.field private final SIGNATURE_RJIO:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->mInstance:Lcom/mediatek/internal/telephony/MtkEmbmsUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const v0, 0x288d1ab6

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->SIGNATURE_RJIO:I

    .line 10
    const v1, -0x2e026a57

    iput v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->SIGNATURE_EXPWAY_EBOX:I

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->CERTIFIED_SIGNATURE:Ljava/util/ArrayList;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->CERTIFIED_SIGNATURE:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/MtkEmbmsUtils;
    .registers 1

    .line 15
    sget-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->mInstance:Lcom/mediatek/internal/telephony/MtkEmbmsUtils;

    if-nez v0, :cond_c

    .line 16
    new-instance v0, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->mInstance:Lcom/mediatek/internal/telephony/MtkEmbmsUtils;

    .line 17
    return-object v0

    .line 19
    :cond_c
    return-object v0
.end method


# virtual methods
.method public isCertifiedMiddleware([Landroid/content/pm/Signature;)Z
    .registers 8
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .line 29
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_36

    aget-object v3, p1, v2

    .line 30
    .local v3, "sig":Landroid/content/pm/Signature;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The signature hashcode of the middleware = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkEmbmsUtils"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->CERTIFIED_SIGNATURE:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 32
    const/4 v0, 0x1

    return v0

    .line 29
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 35
    :cond_36
    return v1
.end method
