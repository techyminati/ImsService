.class final enum Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;
.super Ljava/lang/Enum;
.source "MtkCdmaMmiCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OPID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

.field public static final enum OP12:Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

.field public static final enum OP20:Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 74
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    const-string v1, "OP12"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;->OP12:Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    .line 75
    new-instance v1, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    const-string v3, "OP20"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;->OP20:Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    .line 73
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;->$VALUES:[Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;
    .registers 1

    .line 73
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;->$VALUES:[Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    return-object v0
.end method
