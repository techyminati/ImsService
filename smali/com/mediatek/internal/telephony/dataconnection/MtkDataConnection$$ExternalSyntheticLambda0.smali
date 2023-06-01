.class public final synthetic Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;ILjava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iput p2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->lambda$tearDownData$3$MtkDataConnection(ILjava/lang/Object;)V

    return-void
.end method
