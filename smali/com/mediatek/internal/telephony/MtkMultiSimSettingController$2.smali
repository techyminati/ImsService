.class Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$2;
.super Landroid/database/ContentObserver;
.source "MtkMultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->initSimCloseMode(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 447
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$2;->this$0:Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 450
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$2;->this$0:Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;

    const-string v1, "radio on/off status changed."

    # invokes: Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->access$000(Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController$2;->this$0:Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;->notifySubscriptionInfoChanged()V

    .line 453
    return-void
.end method
