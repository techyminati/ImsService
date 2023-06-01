.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;
.super Ljava/lang/Object;
.source "MtkGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PseudoCellInfoResult"
.end annotation


# instance fields
.field infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

.field lockObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V
    .registers 2

    .line 1920
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1921
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->infos:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    .line 1922
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;->lockObj:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$1;

    .line 1920
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$PseudoCellInfoResult;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V

    return-void
.end method
