.class Lcom/mediatek/ims/legacy/ss/ImsUtStub$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsUtStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/legacy/ss/ImsUtStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/legacy/ss/ImsUtStub;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    .line 157
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$1;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUtService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 167
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "state":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/ImsUtStub$1;->this$0:Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    const/4 v2, -0x1

    .line 169
    const-string v3, "slot"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    .line 170
    const-string v4, "phoneType"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-class v4, Lcom/android/internal/telephony/PhoneConstants$State;

    .line 171
    invoke-static {v4, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneConstants$State;

    .line 168
    # invokes: Lcom/mediatek/ims/legacy/ss/ImsUtStub;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->access$000(Lcom/mediatek/ims/legacy/ss/ImsUtStub;IILcom/android/internal/telephony/PhoneConstants$State;)V

    .line 173
    .end local v0    # "state":Ljava/lang/String;
    :cond_47
    return-void
.end method
