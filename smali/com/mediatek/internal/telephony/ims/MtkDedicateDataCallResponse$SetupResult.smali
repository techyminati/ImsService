.class public final enum Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;
.super Ljava/lang/Enum;
.source "MtkDedicateDataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetupResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

.field public static final enum FAIL:Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

.field public static final enum SUCCESS:Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;


# instance fields
.field public failCause:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 21
    new-instance v0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;->SUCCESS:Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    .line 22
    new-instance v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    const-string v3, "FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;->FAIL:Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    .line 20
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;->$VALUES:[Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;->failCause:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;
    .registers 1

    .line 20
    sget-object v0, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;->$VALUES:[Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse$SetupResult;

    return-object v0
.end method
