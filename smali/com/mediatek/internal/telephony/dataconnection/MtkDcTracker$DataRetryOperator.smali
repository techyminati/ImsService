.class final enum Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;
.super Ljava/lang/Enum;
.source "MtkDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DataRetryOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum EE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum KDDI:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum TELCEL:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum TELSTRA:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum UNKNOWN:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

.field public static final enum VZW:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 264
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->UNKNOWN:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 265
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v3, "TELCEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELCEL:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 266
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v5, "TELSTRA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->TELSTRA:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 267
    new-instance v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v7, "EE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->EE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 268
    new-instance v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v9, "KDDI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->KDDI:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 269
    new-instance v9, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    const-string v11, "VZW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->VZW:Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    .line 263
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 263
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;
    .registers 1

    .line 263
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$DataRetryOperator;

    return-object v0
.end method
