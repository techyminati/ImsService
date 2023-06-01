.class public final enum Lmediatek/telecom/FormattedLog$OpType;
.super Ljava/lang/Enum;
.source "FormattedLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/FormattedLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediatek/telecom/FormattedLog$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediatek/telecom/FormattedLog$OpType;

.field public static final enum DUMP:Lmediatek/telecom/FormattedLog$OpType;

.field public static final enum NOTIFY:Lmediatek/telecom/FormattedLog$OpType;

.field public static final enum OPERATION:Lmediatek/telecom/FormattedLog$OpType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 61
    new-instance v0, Lmediatek/telecom/FormattedLog$OpType;

    const-string v1, "OPERATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediatek/telecom/FormattedLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediatek/telecom/FormattedLog$OpType;->OPERATION:Lmediatek/telecom/FormattedLog$OpType;

    new-instance v1, Lmediatek/telecom/FormattedLog$OpType;

    const-string v3, "NOTIFY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmediatek/telecom/FormattedLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmediatek/telecom/FormattedLog$OpType;->NOTIFY:Lmediatek/telecom/FormattedLog$OpType;

    new-instance v3, Lmediatek/telecom/FormattedLog$OpType;

    const-string v5, "DUMP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmediatek/telecom/FormattedLog$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmediatek/telecom/FormattedLog$OpType;->DUMP:Lmediatek/telecom/FormattedLog$OpType;

    .line 60
    const/4 v5, 0x3

    new-array v5, v5, [Lmediatek/telecom/FormattedLog$OpType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lmediatek/telecom/FormattedLog$OpType;->$VALUES:[Lmediatek/telecom/FormattedLog$OpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$OpType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 60
    const-class v0, Lmediatek/telecom/FormattedLog$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmediatek/telecom/FormattedLog$OpType;

    return-object v0
.end method

.method public static values()[Lmediatek/telecom/FormattedLog$OpType;
    .registers 1

    .line 60
    sget-object v0, Lmediatek/telecom/FormattedLog$OpType;->$VALUES:[Lmediatek/telecom/FormattedLog$OpType;

    invoke-virtual {v0}, [Lmediatek/telecom/FormattedLog$OpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediatek/telecom/FormattedLog$OpType;

    return-object v0
.end method
