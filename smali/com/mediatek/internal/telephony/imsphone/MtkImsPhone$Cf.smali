.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;
.super Ljava/lang/Object;
.source "MtkImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cf"
.end annotation


# instance fields
.field public final mIsCfu:Z

.field public final mOnComplete:Landroid/os/Message;

.field public final mServiceClass:I

.field public final mSetCfNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/os/Message;I)V
    .registers 5
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "isCfu"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "serviceClass"    # I

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    .line 454
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;->mIsCfu:Z

    .line 455
    iput-object p3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    .line 456
    iput p4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$Cf;->mServiceClass:I

    .line 457
    return-void
.end method
