.class Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimModeChangeRunnable"
.end annotation


# instance fields
.field mPhoneId:I

.field mPower:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/RadioManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V
    .registers 4
    .param p2, "power"    # Z
    .param p3, "phoneId"    # I

    .line 1175
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;->mPower:Z

    .line 1177
    iput p3, p0, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;->mPhoneId:I

    .line 1178
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1181
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;->mPower:Z

    iget v2, p0, Lcom/mediatek/internal/telephony/RadioManager$SimModeChangeRunnable;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->notifySimModeChange(ZI)V

    .line 1182
    return-void
.end method
