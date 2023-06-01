.class public final synthetic Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/internal/MtkImsManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/internal/MtkImsManager;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/internal/MtkImsManager;

    iput p2, p0, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/internal/MtkImsManager;

    iget v1, p0, Lcom/mediatek/ims/internal/MtkImsManager$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->lambda$setWfcModeInternal$0$MtkImsManager(I)V

    return-void
.end method
