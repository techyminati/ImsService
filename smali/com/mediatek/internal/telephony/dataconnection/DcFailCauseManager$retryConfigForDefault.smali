.class final enum Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;
.super Ljava/lang/Enum;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "retryConfigForDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

.field public static final enum maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

.field public static final enum randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

.field public static final enum retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 117
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    const-string v1, "maxRetryCount"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->maxRetryCount:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    .line 118
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    const-string v4, "retryTime"

    invoke-direct {v1, v4, v3, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->retryTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    .line 119
    new-instance v4, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    const-string v5, "randomizationTime"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->randomizationTime:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    .line 116
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    sput-object v5, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->value:I

    .line 125
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 116
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;
    .registers 1

    .line 116
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$retryConfigForDefault;->value:I

    return v0
.end method
