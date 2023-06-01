.class public Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;
.super Ljava/lang/Object;
.source "SmartDataSwitchAssistantOpExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;


# static fields
.field private static DBG:Z

.field private static LOG_TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;


# instance fields
.field private isSrvccDuringCall:Z

.field protected mVoiceNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    .line 57
    const-string v0, "SmartDataSwitchOpExt"

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mContext:Landroid/content/Context;

    .line 61
    sput-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    .line 63
    iput v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mVoiceNetworkType:I

    .line 66
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private isNetworkTypeChanged(I)Z
    .registers 5
    .param p1, "newVoiceNwType"    # I

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkTypeChanged: mVoiceNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mVoiceNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVoiceNwType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 208
    iget v1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mVoiceNetworkType:I

    if-eq v1, p1, :cond_26

    .line 209
    iput p1, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mVoiceNetworkType:I

    .line 210
    const/4 v0, 0x1

    .line 212
    :cond_26
    return v0
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 222
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    if-eqz v0, :cond_9

    .line 223
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_9
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 228
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    if-eqz v0, :cond_9

    .line 229
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_9
    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 234
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    if-eqz v0, :cond_9

    .line 235
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_9
    return-void
.end method

.method protected static logv(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 216
    sget-boolean v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->DBG:Z

    if-eqz v0, :cond_9

    .line 217
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_9
    return-void
.end method


# virtual methods
.method public checkIsSwitchAvailable(I)Z
    .registers 11
    .param p1, "phoneId"    # I

    .line 139
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getAospTemporaryDataSettings(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 140
    const-string v0, "checkIsSwitchAvailable() settings is off, not passed"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 141
    return v1

    .line 145
    :cond_f
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getInstance()Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    move-result-object v0

    .line 146
    .local v0, "dcHelper":Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
    const/4 v2, 0x1

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->getDsdaMode()I

    move-result v3

    if-ne v3, v2, :cond_5f

    .line 147
    sget-object v3, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 148
    .local v3, "sm":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getInstance()Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v4

    .line 149
    .local v4, "pw":Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    if-eqz v3, :cond_5e

    if-eqz v4, :cond_5e

    .line 150
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v5

    .line 151
    .local v5, "defaultDataPhoneId":I
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v6

    .line 152
    .local v6, "preferDataPhoneId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIsSwitchAvailable() dsda mode defaultDataPhoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "preferDataPhoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 154
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 155
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 156
    if-eq v5, v6, :cond_5d

    move v1, v2

    :cond_5d
    return v1

    .line 159
    .end local v5    # "defaultDataPhoneId":I
    .end local v6    # "preferDataPhoneId":I
    :cond_5e
    return v1

    .line 162
    .end local v3    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v4    # "pw":Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;
    :cond_5f
    sget-object v3, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getVoiceNetworkType(I)I

    move-result v3

    .line 163
    .local v3, "nwType":I
    sget-object v4, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v4, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isWifcCalling(I)Z

    move-result v4

    .line 164
    .local v4, "isWifiCalling":Z
    sget-object v5, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v5, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->isVoLteCalling(I)Z

    move-result v5

    .line 165
    .local v5, "isVoLteCalling":Z
    sget-object v6, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getTemporaryDataMode()I

    move-result v6

    .line 166
    .local v6, "mode":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIsSwitchAvailable() nwType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isCdma="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isWifcCalling="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isVoLteCalling="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isSrvccDuringCall="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-static {v7}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 172
    const/16 v7, 0x10

    if-nez v6, :cond_cd

    .line 173
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    if-nez v8, :cond_c7

    if-eq v3, v7, :cond_c7

    if-eqz v4, :cond_10e

    .line 176
    :cond_c7
    const-string v2, "checkIsSwitchAvailable(): not passed, mode TEMP_DATA_MODE_DEFAULT"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 177
    return v1

    .line 179
    :cond_cd
    if-ne v6, v2, :cond_e1

    .line 180
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    if-nez v8, :cond_db

    if-eq v3, v7, :cond_db

    if-nez v4, :cond_db

    if-nez v5, :cond_10e

    .line 184
    :cond_db
    const-string v2, "checkIsSwitchAvailable(): not passed, mode TEMP_DATA_MODE_ONLY_VOLTE"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 185
    return v1

    .line 187
    :cond_e1
    const/4 v8, 0x2

    if-ne v6, v8, :cond_fa

    .line 188
    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v8

    if-nez v8, :cond_f4

    if-eq v3, v7, :cond_f4

    if-nez v4, :cond_f4

    if-nez v5, :cond_10e

    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    if-nez v7, :cond_10e

    .line 192
    :cond_f4
    const-string v2, "checkIsSwitchAvailable(): not passed, mode TEMP_DATA_MODE_EXCEPT_CSFB"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 193
    return v1

    .line 196
    :cond_fa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsSwitchAvailable(): not passed, unknown mode:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 198
    :cond_10e
    const-string v1, "checkIsSwitchAvailable(): passed"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 199
    return v2
.end method

.method public init(Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;)V
    .registers 3
    .param p1, "smartDataSwitchAssistant"    # Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    .line 71
    const-string v0, "init()"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 72
    sput-object p1, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    .line 73
    return-void
.end method

.method public isNeedSwitchCallType(I)Z
    .registers 3
    .param p1, "callType"    # I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public isSmartDataSwtichAllowed()Z
    .registers 2

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onCallEnded()V
    .registers 2

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    .line 87
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregServiceStateChangedEvent()V

    .line 88
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->unregSrvccEvent()V

    .line 89
    return-void
.end method

.method public onCallStarted()V
    .registers 2

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    .line 79
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->regServiceStateChangedEvent()V

    .line 80
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->regSrvccEvent()V

    .line 81
    return-void
.end method

.method public onHandoverToCellular()V
    .registers 1

    .line 119
    return-void
.end method

.method public onHandoverToWifi()V
    .registers 1

    .line 116
    return-void
.end method

.method public onServiceStateChanged(I)Z
    .registers 5
    .param p1, "phoneId"    # I

    .line 105
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getInCallPhoneId()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    .line 106
    return v1

    .line 108
    :cond_a
    sget-object v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->mSmartData:Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->getVoiceNetworkType(I)I

    move-result v0

    .line 109
    .local v0, "voiceNwType":I
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isNetworkTypeChanged(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 110
    const/4 v1, 0x1

    return v1

    .line 112
    :cond_18
    return v1
.end method

.method public onSrvccStateChanged()V
    .registers 2

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->isSrvccDuringCall:Z

    .line 100
    const-string v0, "onSrvccStateChanged, isSrvccDuringCall=true"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;->logd(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onSubChanged()V
    .registers 1

    .line 92
    return-void
.end method

.method public onTemporaryDataSettingsChanged()V
    .registers 1

    .line 95
    return-void
.end method

.method public preCheckByCallStateExt(Landroid/content/Intent;Z)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "result"    # Z

    .line 123
    return p2
.end method
