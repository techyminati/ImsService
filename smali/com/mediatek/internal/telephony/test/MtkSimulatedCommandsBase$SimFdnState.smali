.class final enum Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;
.super Ljava/lang/Enum;
.source "MtkSimulatedCommandsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimFdnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field public static final enum NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field public static final enum REQUIRE_PIN2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field public static final enum REQUIRE_PUK2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

.field public static final enum SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 93
    new-instance v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->NONE:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 94
    new-instance v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const-string v3, "REQUIRE_PIN2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PIN2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 95
    new-instance v3, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const-string v5, "REQUIRE_PUK2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->REQUIRE_PUK2:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 96
    new-instance v5, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    const-string v7, "SIM_PERM_LOCKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->SIM_PERM_LOCKED:Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    .line 92
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->$VALUES:[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 92
    const-class v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;
    .registers 1

    .line 92
    sget-object v0, Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->$VALUES:[Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/test/MtkSimulatedCommandsBase$SimFdnState;

    return-object v0
.end method
