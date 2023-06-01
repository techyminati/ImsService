.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;
.super Ljava/lang/Object;
.source "MtkImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CfEx"
.end annotation


# instance fields
.field final mIsCfu:Z

.field final mOnComplete:Landroid/os/Message;

.field final mSetCfNumber:Ljava/lang/String;

.field final mSetTimeSlot:[J


# direct methods
.method constructor <init>(Ljava/lang/String;[JZLandroid/os/Message;)V
    .registers 5
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "cfTimeSlot"    # [J
    .param p3, "isCfu"    # Z
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mSetCfNumber:Ljava/lang/String;

    .line 519
    iput-object p2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mSetTimeSlot:[J

    .line 520
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mIsCfu:Z

    .line 521
    iput-object p4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone$CfEx;->mOnComplete:Landroid/os/Message;

    .line 522
    return-void
.end method
