.class Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "SmartDataSwitchAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandoverStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$1;

    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;-><init>(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)V

    return-void
.end method


# virtual methods
.method public onHandover(III)V
    .registers 7
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandover() simIdx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ratType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->logd(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4d

    .line 101
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3a

    .line 102
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onHandoverToWifi()V

    .line 103
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    # getter for: Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->access$000(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_4d

    .line 104
    :cond_3a
    if-eq p3, v1, :cond_3f

    const/4 v1, 0x3

    if-ne p3, v1, :cond_4d

    .line 106
    :cond_3f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->onHandoverToCellular()V

    .line 107
    iget-object v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant$HandoverStateListener;->this$0:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    # getter for: Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->mReEvalueRegistrants:Lcom/android/internal/telephony/RegistrantList;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->access$000(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 110
    :cond_4d
    :goto_4d
    return-void
.end method
