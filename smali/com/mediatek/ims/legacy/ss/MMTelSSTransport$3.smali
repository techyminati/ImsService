.class Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$3;
.super Ljava/net/Authenticator;
.source "MMTelSSTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->initAuthentication(Ljava/lang/String;ILandroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 557
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$3;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iput p2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$3;->val$phoneId:I

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .registers 5

    .line 559
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getDigestId()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "digestId":Ljava/lang/String;
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getDigestPwd()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "digestPwd":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 562
    iget v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$3;->val$phoneId:I

    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$3;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v3, v3, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getXui(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 564
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordAuthentication: digestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", digestPwd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMTelSS"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v2, Ljava/net/PasswordAuthentication;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v2
.end method
