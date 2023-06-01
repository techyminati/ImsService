.class Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;
.super Ljava/lang/Object;
.source "PseudoCellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/PseudoCellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellInfo"
.end annotation


# instance fields
.field public arfcn:I

.field public bsic:I

.field public cid:I

.field public lac:I

.field public plmn:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/PseudoCellInfo;

.field public type:I


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/PseudoCellInfo;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/PseudoCellInfo;

    .line 34
    iput-object p1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->this$0:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
