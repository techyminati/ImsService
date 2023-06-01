.class Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IRadioPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioPowerInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 84
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyRadioPowerChange(ZI)V
    .registers 6
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRadioPowerChange, power:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManager;->isSupportMims()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 89
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-eq v0, p2, :cond_2e

    .line 90
    const-string v0, "radio power change ignore due to phone id isn\'t LTE phone"

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 91
    return-void

    .line 95
    :cond_2e
    const-string v0, "ro.vendor.md_auto_setup_ims"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] Modem auto registration so that we don\'t triggerImsService updateRadioState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_56
    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;
    invoke-static {}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$200()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v0

    if-nez v0, :cond_61

    .line 103
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)Z
    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;I)Z

    .line 106
    :cond_61
    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;
    invoke-static {}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$200()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v0

    const-string v1, "ImsSwitchController"

    if-eqz v0, :cond_7d

    .line 108
    if-eqz p1, :cond_6d

    .line 109
    const/4 v0, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    .line 110
    .local v0, "radioState":I
    :goto_6e
    :try_start_6e
    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;
    invoke-static {}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$200()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v2

    invoke-interface {v2, v0, p2}, Lcom/mediatek/ims/internal/IMtkImsService;->updateRadioState(II)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_75} :catch_76

    .end local v0    # "radioState":I
    goto :goto_7c

    .line 111
    :catch_76
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException can\'t notify power state change"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7c
    goto :goto_82

    .line 115
    :cond_7d
    const-string v0, "notifyRadioPowerChange: ImsService not ready !!!"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_82
    const-string v0, "radio power change processed"

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 118
    return-void
.end method
