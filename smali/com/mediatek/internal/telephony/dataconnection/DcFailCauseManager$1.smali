.class synthetic Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;
.super Ljava/lang/Object;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mediatek$internal$telephony$dataconnection$DcFailCauseManager$Operator:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 185
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->values()[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;->$SwitchMap$com$mediatek$internal$telephony$dataconnection$DcFailCauseManager$Operator:[I

    :try_start_9
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP120:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$1;->$SwitchMap$com$mediatek$internal$telephony$dataconnection$DcFailCauseManager$Operator:[I

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP19:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    return-void
.end method
