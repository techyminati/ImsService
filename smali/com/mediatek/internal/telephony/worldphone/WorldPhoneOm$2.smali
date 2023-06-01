.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;
.super Ljava/lang/Object;
.source "WorldPhoneOm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .line 1197
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1199
    # operator++ for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1408()I

    .line 1200
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1400()I

    move-result v0

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1500()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_18

    .line 1201
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->TDD_STANDBY_TIMER:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1500()[I

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v2

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sTddStandByCounter:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1402(I)I

    .line 1204
    :cond_18
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sBtSapState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1300()I

    move-result v0

    if-nez v0, :cond_2e

    .line 1205
    const-string v0, "TDD time out!"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 1206
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsWaintInTddTimeOut:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1602(I)I

    .line 1207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$2;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v1, 0x64

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)Z
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)Z

    goto :goto_33

    .line 1209
    :cond_2e
    const-string v0, "TDD time out but BT SAP is connected, switch not executed!"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 1211
    :goto_33
    return-void
.end method
