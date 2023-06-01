.class public final enum Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
.super Ljava/lang/Enum;
.source "DcFailCauseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

.field public static final enum NONE:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

.field public static final enum OP120:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

.field public static final enum OP19:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

.field private static final lookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 82
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->NONE:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 83
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    const-string v3, "OP19"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP19:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 84
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    const-string v5, "OP120"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP120:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 81
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->lookup:Ljava/util/HashMap;

    .line 90
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 91
    .local v1, "op":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->lookup:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v1    # "op":Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    goto :goto_3b

    .line 93
    :cond_55
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

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->value:I

    .line 99
    return-void
.end method

.method public static get(I)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .registers 3
    .param p0, "value"    # I

    .line 106
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->lookup:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 81
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;
    .registers 1

    .line 81
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->value:I

    return v0
.end method
