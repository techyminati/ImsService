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

    .line 162
    iput-object p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/AcsEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcsConnected()V
    .locals 2

    .line 210
    const-string v0, "MtkImsConfigImpl"

    const-string v1, "onAcsConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public onAcsDisconnected()V
    .locals 2

    .line 214
    const-string v0, "MtkImsConfigImpl"

    const-string v1, "onAcsDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public onConfigurationErrorReceived(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationErrorReceived errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationErrorReceived error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onConfigurationStatusChanged(ZI)V
    .locals 6
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 165
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

    .line 166
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;ZI)V

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "needDeactivate":Z
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v3

    const-string v4, "ACS_VALIDITY"

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/rcse/UaServiceManager;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "validity":Ljava/lang/String;
    if-ne p2, v2, :cond_0

    const-string v2, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    .line 174
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->deactivate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    const/4 v0, 0x1

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCapabilities exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 180
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationRemoved()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 183
    goto :goto_1

    .line 181
    :catch_1
    move-exception v2

    .line 182
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRcsAutoConfigurationRemoved exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 187
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "validity":Ljava/lang/String;
    :cond_0
    :goto_1
    goto :goto_2

    .line 185
    :catch_2
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationStatusChanged exception! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    if-nez v0, :cond_3

    .line 192
    :try_start_5
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->activate()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 195
    :cond_2
    goto :goto_3

    .line 193
    :catch_3
    move-exception v2

    .line 194
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uaservice activate exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void
.end method
