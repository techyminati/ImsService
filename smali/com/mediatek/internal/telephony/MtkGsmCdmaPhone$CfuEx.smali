.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;
.super Ljava/lang/Object;
.source "MtkGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CfuEx"
.end annotation


# instance fields
.field final mOnComplete:Landroid/os/Message;

.field final mSetCfNumber:Ljava/lang/String;

.field final mSetTimeSlot:[J


# direct methods
.method constructor <init>(Ljava/lang/String;[JLandroid/os/Message;)V
    .registers 4
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "cfTimeSlot"    # [J
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 2712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2713
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mSetCfNumber:Ljava/lang/String;

    .line 2714
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mSetTimeSlot:[J

    .line 2715
    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    .line 2716
    return-void
.end method
