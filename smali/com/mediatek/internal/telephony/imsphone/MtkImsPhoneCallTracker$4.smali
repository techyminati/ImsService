.class Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;
.super Landroid/content/BroadcastReceiver;
.source "MtkImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    .line 1303
    iput-object p1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.ims.MTK_IMS_SERVICE_UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1308
    :try_start_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1309
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    .line 1308
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/MtkImsManager;

    .line 1310
    .local v0, "imsMgr":Lcom/mediatek/ims/internal/MtkImsManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/mediatek/ims/MtkImsConnectionStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->removeImsConnectionStateListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 1311
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/mediatek/ims/MtkImsConnectionStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->addImsConnectionStateListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 1312
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MTK_IMS_SERVICE_UP: register ims succeed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    # getter for: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->mImsStateListener:Lcom/mediatek/ims/MtkImsConnectionStateListener;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6200(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;)Lcom/mediatek/ims/MtkImsConnectionStateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6300(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V
    :try_end_50
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_50} :catch_51

    .line 1316
    .end local v0    # "imsMgr":Lcom/mediatek/ims/internal/MtkImsManager;
    goto :goto_59

    .line 1313
    :catch_51
    move-exception v0

    .line 1315
    .local v0, "e":Lcom/android/ims/ImsException;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker$4;->this$0:Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    const-string v2, "ACTION_MTK_IMS_SERVICE_UP: register ims fail!"

    # invokes: Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;->access$6400(Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;Ljava/lang/String;)V

    .line 1318
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :cond_59
    :goto_59
    return-void
.end method
