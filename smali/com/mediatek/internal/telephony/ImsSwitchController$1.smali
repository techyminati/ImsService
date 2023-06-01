.class Lcom/mediatek/internal/telephony/ImsSwitchController$1;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .line 157
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 160
    const-string v0, "ImsSwitchController"

    const-string v1, "try to bind ImsService again"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)Z
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_54

    .line 164
    :cond_18
    const-string v0, "manually updateImsServiceConfig"

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManager;->isSupportMims()Z

    move-result v0

    if-nez v0, :cond_37

    .line 167
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 168
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$500(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 169
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_36

    .line 170
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig()V

    .line 172
    .end local v0    # "phoneId":I
    :cond_36
    goto :goto_54

    .line 173
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_38
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 174
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$1;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$500(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 175
    .restart local v1    # "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_51

    .line 176
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->updateImsServiceConfig()V

    .line 173
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 181
    .end local v0    # "i":I
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_54
    :goto_54
    return-void
.end method
