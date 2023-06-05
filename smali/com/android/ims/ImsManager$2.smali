.class Lcom/android/ims/ImsManager$2;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/ImsManager;->queryMmTelCapability(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsManager;

.field final synthetic val$capability:I

.field final synthetic val$radioTech:I

.field final synthetic val$result:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/ims/ImsManager;IILjava/util/concurrent/BlockingQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;

    .line 2236
    iput-object p1, p0, Lcom/android/ims/ImsManager$2;->this$0:Lcom/android/ims/ImsManager;

    iput p2, p0, Lcom/android/ims/ImsManager$2;->val$capability:I

    iput p3, p0, Lcom/android/ims/ImsManager$2;->val$radioTech:I

    iput-object p4, p0, Lcom/android/ims/ImsManager$2;->val$result:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesStatusChanged(I)V
    .locals 0
    .param p1, "config"    # I

    .line 2254
    return-void
.end method

.method public onChangeCapabilityConfigurationError(III)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 2249
    return-void
.end method

.method public onQueryCapabilityConfiguration(IIZ)V
    .locals 2
    .param p1, "resCap"    # I
    .param p2, "resTech"    # I
    .param p3, "enabled"    # Z

    .line 2240
    iget v0, p0, Lcom/android/ims/ImsManager$2;->val$capability:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/ims/ImsManager$2;->val$radioTech:I

    if-ne p2, v0, :cond_0

    .line 2241
    iget-object v0, p0, Lcom/android/ims/ImsManager$2;->val$result:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 2243
    :cond_0
    return-void
.end method
