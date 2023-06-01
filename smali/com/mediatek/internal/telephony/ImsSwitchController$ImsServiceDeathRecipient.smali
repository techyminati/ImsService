.class Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Lcom/mediatek/internal/telephony/ImsSwitchController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/ImsSwitchController$1;

    .line 146
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 149
    const-string v0, "ImsSwitchController"

    const-string v1, "ImsService died detected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    # setter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$202(Lcom/mediatek/ims/internal/IMtkImsService;)Lcom/mediatek/ims/internal/IMtkImsService;

    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mBindImsServiceRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method
