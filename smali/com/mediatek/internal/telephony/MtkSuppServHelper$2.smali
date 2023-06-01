.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;
.super Ljava/lang/Object;
.source "MtkSuppServHelper.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkSuppServHelper;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 418
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic connectionReady(Lcom/android/ims/FeatureUpdates;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 418
    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->connectionReady(Lcom/android/ims/ImsManager;)V

    return-void
.end method

.method public connectionReady(Lcom/android/ims/ImsManager;)V
    .registers 3
    .param p1, "manager"    # Lcom/android/ims/ImsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # setter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$502(Lcom/mediatek/internal/telephony/MtkSuppServHelper;Lcom/android/ims/ImsManager;)Lcom/android/ims/ImsManager;

    .line 422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->setImsCallback()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$600(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    .line 423
    return-void
.end method

.method public connectionUnavailable(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 427
    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 428
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mConnectorRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$700(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    :cond_e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$2;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # invokes: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->unSetImsCallback()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$800(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V

    .line 431
    return-void
.end method
