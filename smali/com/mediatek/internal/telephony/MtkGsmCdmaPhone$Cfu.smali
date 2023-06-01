.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;
.super Ljava/lang/Object;
.source "MtkGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cfu"
.end annotation


# instance fields
.field final mOnComplete:Landroid/os/Message;

.field final mServiceClass:I

.field final mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Message;I)V
    .registers 4
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "serviceClass"    # I

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    .line 422
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    .line 423
    iput p3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$Cfu;->mServiceClass:I

    .line 424
    return-void
.end method
