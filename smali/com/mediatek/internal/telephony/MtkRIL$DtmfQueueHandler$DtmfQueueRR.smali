.class public Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
.super Ljava/lang/Object;
.source "MtkRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DtmfQueueRR"
.end annotation


# instance fields
.field public params:[Ljava/lang/Object;

.field public rr:Lcom/android/internal/telephony/RILRequest;

.field final synthetic this$1:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$1"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;
    .param p2, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 328
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->this$1:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->rr:Lcom/android/internal/telephony/RILRequest;

    .line 330
    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;->params:[Ljava/lang/Object;

    .line 331
    return-void
.end method
