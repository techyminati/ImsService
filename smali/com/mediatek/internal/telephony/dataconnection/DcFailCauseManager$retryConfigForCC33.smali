.class public final enum Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;
.super Ljava/lang/Enum;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "retryConfigForCC33"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

.field public static final enum maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

.field public static final enum randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

.field public static final enum retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 134
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    const-string v1, "maxRetryCount"

    const/4 v2, 0x0

    const-wide/16 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 135
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    const-string v3, "retryTime"

    const/4 v4, 0x1

    const-wide/32 v5, 0xafc8

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 136
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    const-string v5, "randomizationTime"

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    .line 133
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .registers 5
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput-wide p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->value:J

    .line 142
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 133
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;
    .registers 1

    .line 133
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .registers 3

    .line 145
    iget-wide v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForCC33;->value:J

    return-wide v0
.end method
