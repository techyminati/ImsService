.class public final enum Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;
.super Ljava/lang/Enum;
.source "CpaDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CpaConnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

.field public static final enum CPA_TYPE_NAVI:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

.field public static final enum CPA_TYPE_NONE:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 160
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    const-string v1, "CPA_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NONE:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    .line 161
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    const-string v3, "CPA_TYPE_NAVI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->CPA_TYPE_NAVI:Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    .line 159
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 159
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;
    .registers 1

    .line 159
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/CpaDcTracker$CpaConnType;

    return-object v0
.end method
