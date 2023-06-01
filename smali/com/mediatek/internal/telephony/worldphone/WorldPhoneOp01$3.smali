.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;
.super Ljava/lang/Object;
.source "WorldPhoneOp01.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 1175
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1177
    # operator++ for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1808()I

    .line 1178
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1800()I

    move-result v0

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1900()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_18

    .line 1179
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1900()[I

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v2

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1802(I)I

    .line 1181
    :cond_18
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sBtSapState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1200()I

    move-result v0

    if-nez v0, :cond_49

    .line 1182
    const-string v0, "FDD time out!"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 1183
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1502(I)I

    .line 1184
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsWaintInFddTimeOut:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2002(I)I

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1500()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    const/16 v1, 0x65

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)Z
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)Z

    goto :goto_4e

    .line 1188
    :cond_49
    const-string v0, "FDD time out but BT SAP is connected, switch not executed!"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 1190
    :goto_4e
    return-void
.end method
