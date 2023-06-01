.class final enum Lcom/mediatek/internal/telephony/test/CallInfo$State;
.super Ljava/lang/Enum;
.source "MtkSimulatedGsmCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/test/CallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/test/CallInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

.field public static final enum WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 32
    new-instance v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 33
    new-instance v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v3, "HOLDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mediatek/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 34
    new-instance v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v5, "DIALING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/mediatek/internal/telephony/test/CallInfo$State;->DIALING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 35
    new-instance v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v7, "ALERTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/mediatek/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 36
    new-instance v7, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v9, "INCOMING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/mediatek/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 37
    new-instance v9, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    const-string v11, "WAITING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/mediatek/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/mediatek/internal/telephony/test/CallInfo$State;->WAITING:Lcom/mediatek/internal/telephony/test/CallInfo$State;

    .line 31
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/mediatek/internal/telephony/test/CallInfo$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/mediatek/internal/telephony/test/CallInfo$State;->$VALUES:[Lcom/mediatek/internal/telephony/test/CallInfo$State;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/CallInfo$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/test/CallInfo$State;
    .registers 1

    .line 31
    sget-object v0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->$VALUES:[Lcom/mediatek/internal/telephony/test/CallInfo$State;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/test/CallInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/test/CallInfo$State;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/mediatek/internal/telephony/test/CallInfo$State;->mValue:I

    return v0
.end method
