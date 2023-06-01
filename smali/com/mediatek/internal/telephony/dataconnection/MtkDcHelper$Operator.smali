.class public final enum Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;
.super Ljava/lang/Enum;
.source "MtkDcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

.field public static final enum OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

.field public static final enum OP156:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 154
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    const-string v1, "OP129"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    .line 155
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    const-string v3, "OP156"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP156:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    .line 153
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 153
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;
    .registers 1

    .line 153
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    return-object v0
.end method
