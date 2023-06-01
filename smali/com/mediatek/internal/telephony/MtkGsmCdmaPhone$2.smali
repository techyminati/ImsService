.class Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;
.super Ljava/lang/Object;
.source "MtkGsmCdmaPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->initTbcwMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 3219
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 3221
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbcwWithCS()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3222
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 3223
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwToEnabledOnIfDisabled()V

    goto :goto_2f

    .line 3224
    :cond_14
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    # invokes: Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isUsimCard()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 3225
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTbcwMode(I)V

    .line 3226
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    const-string v2, "persist.vendor.radio.terminal-based.cw"

    const-string v3, "disabled_tbcw"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setSSPropertyThroughHidl(ILjava/lang/String;Ljava/lang/String;)V

    .line 3228
    :cond_2f
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTbcwMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone$2;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    # getter for: Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mTbcwMode:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->access$200(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmCdmaPhone"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    return-void
.end method
