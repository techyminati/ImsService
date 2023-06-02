.class public Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;
.super Lcom/mediatek/ims/rcsua/AcsEventCallback;
.source "MtkImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/MtkImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RcsEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 158
    iput-object p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/AcsEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcsConnected()V
    .locals 2

    .line 195
    const-string v0, "MtkImsConfigImpl"

    const-string v1, "onAcsConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public onAcsDisconnected()V
    .locals 2

    .line 200
    const-string v0, "MtkImsConfigImpl"

    const-string v1, "onAcsDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public onConfigurationStatusChanged(ZI)V
    .locals 6
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationStatusChanged: valid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V

    .line 168
    :goto_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->getService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$202(Lcom/mediatek/ims/config/MtkImsConfigImpl;Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v0}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    const-string v2, "ACS_VALIDITY"

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "validity":Ljava/lang/String;
    const-string v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_2

    .line 177
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/rcsua/Capability;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    goto :goto_1

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCapabilities exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationRemoved()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 185
    goto :goto_2

    .line 183
    :catch_1
    move-exception v2

    .line 184
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRcsAutoConfigurationRemoved exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 189
    .end local v0    # "validity":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    goto :goto_3

    .line 187
    :catch_2
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationStatusChanged exception! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void
.end method
