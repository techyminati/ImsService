.class Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkCellInfoResult;
.super Ljava/lang/Object;
.source "MtkServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkCellInfoResult"
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field lockObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/MtkServiceStateTracker;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkCellInfoResult;->this$0:Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker$MtkCellInfoResult;->lockObj:Ljava/lang/Object;

    return-void
.end method
