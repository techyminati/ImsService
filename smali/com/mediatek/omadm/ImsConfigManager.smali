.class public Lcom/mediatek/omadm/ImsConfigManager;
.super Ljava/lang/Object;
.source "ImsConfigManager.java"


# static fields
.field public static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDmManager:Lcom/mediatek/dm/DmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/omadm/ImsConfigManager;->DEBUG:Z

    .line 65
    const-class v0, Lcom/mediatek/omadm/ImsConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    .line 112
    iput-object p1, p0, Lcom/mediatek/omadm/ImsConfigManager;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1}, Lcom/mediatek/dm/DmManager;->getDefaultDmManager(Landroid/content/Context;)Lcom/mediatek/dm/DmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    .line 114
    return-void
.end method

.method private getImsConfig()Lcom/android/ims/ImsConfig;
    .registers 4

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "imsConfig":Lcom/android/ims/ImsConfig;
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/omadm/ImsConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mediatek/omadm/ImsConfigManager;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 89
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v2
    :try_end_f
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 93
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    goto :goto_19

    .line 90
    :catch_11
    move-exception v1

    .line 91
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 92
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 95
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_19
    if-nez v0, :cond_20

    .line 96
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 99
    :cond_20
    return-object v0
.end method

.method private getMainCapabilityPhoneId()I
    .registers 5

    .line 103
    const-string v0, "persist.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 104
    .local v0, "phoneId":I
    if-ltz v0, :cond_14

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_15

    .line 105
    :cond_14
    const/4 v0, -0x1

    .line 107
    :cond_15
    sget-object v1, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainCapabilityPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v0
.end method

.method private imsRslt_PalRslt(I)I
    .registers 3
    .param p1, "imsStatus"    # I

    .line 70
    packed-switch p1, :pswitch_data_10

    .line 81
    const/16 v0, 0x8

    return v0

    .line 76
    :pswitch_6
    const/16 v0, 0xa

    return v0

    .line 79
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 72
    :pswitch_c
    const/4 v0, 0x1

    return v0

    .line 74
    :pswitch_e
    const/4 v0, 0x0

    return v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getImcProvisioned(I)I
    .registers 8
    .param p1, "item"    # I

    .line 211
    sget-object v0, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImcProvisioned, item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v1, -0x1

    .line 213
    .local v1, "result":I
    const/4 v3, 0x0

    .line 215
    .local v3, "status":I
    iget-object v4, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    if-nez v4, :cond_24

    .line 216
    iget-object v4, p0, Lcom/mediatek/omadm/ImsConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/dm/DmManager;->getDefaultDmManager(Landroid/content/Context;)Lcom/mediatek/dm/DmManager;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    .line 219
    :cond_24
    iget-object v4, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    if-eqz v4, :cond_51

    .line 220
    invoke-direct {p0}, Lcom/mediatek/omadm/ImsConfigManager;->getMainCapabilityPhoneId()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/mediatek/dm/DmManager;->getImcProvision(II)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    :goto_35
    move v1, v5

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 224
    :cond_51
    const-string v2, "getImcProvisioned, failed since cant get  mDmManager"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {v3}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 227
    :goto_59
    return v1
.end method

.method public getProvisionedIntValue(I)I
    .registers 7
    .param p1, "item"    # I

    .line 161
    sget-boolean v0, Lcom/mediatek/omadm/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedIntValue, item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1a
    const/4 v0, -0x1

    .line 163
    .local v0, "result":I
    const/4 v1, 0x0

    .line 166
    .local v1, "status":I
    :try_start_1c
    invoke-direct {p0}, Lcom/mediatek/omadm/ImsConfigManager;->getImsConfig()Lcom/android/ims/ImsConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v2

    move v0, v2

    .line 167
    sget-boolean v2, Lcom/mediatek/omadm/ImsConfigManager;->DEBUG:Z

    if-eqz v2, :cond_47

    sget-object v2, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvisionedStringValue, item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Lcom/android/ims/ImsException; {:try_start_1c .. :try_end_47} :catch_48

    .line 171
    :cond_47
    goto :goto_4e

    .line 168
    :catch_48
    move-exception v2

    .line 169
    .local v2, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v2}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 170
    const/16 v1, 0xa

    .line 173
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_4e
    invoke-static {v1}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 174
    return v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .registers 7
    .param p1, "item"    # I

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 134
    .local v1, "status":I
    :try_start_2
    invoke-direct {p0}, Lcom/mediatek/omadm/ImsConfigManager;->getImsConfig()Lcom/android/ims/ImsConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/ims/ImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 135
    sget-boolean v2, Lcom/mediatek/omadm/ImsConfigManager;->DEBUG:Z

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvisionedStringValue, item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2d
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_33
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_33} :catch_38

    if-nez v2, :cond_37

    .line 137
    :cond_35
    const/16 v1, 0xa

    .line 142
    :cond_37
    goto :goto_3e

    .line 139
    :catch_38
    move-exception v2

    .line 140
    .local v2, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v2}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 141
    const/16 v1, 0xa

    .line 144
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_3e
    invoke-static {v1}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 145
    return-object v0
.end method

.method public isImcPvsInfoSupport()I
    .registers 4

    .line 178
    sget-object v0, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    const-string v1, "check isImcPvsInfoSupport"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "status":I
    iget-object v2, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    if-nez v2, :cond_14

    .line 181
    iget-object v2, p0, Lcom/mediatek/omadm/ImsConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/dm/DmManager;->getDefaultDmManager(Landroid/content/Context;)Lcom/mediatek/dm/DmManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    .line 184
    :cond_14
    iget-object v2, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    if-eqz v2, :cond_1d

    .line 185
    invoke-virtual {v2}, Lcom/mediatek/dm/DmManager;->getDmSupported()I

    move-result v1

    goto :goto_25

    .line 188
    :cond_1d
    const-string v2, "setImcProvisioned, failed since cant get  mDmManager"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {v1}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 191
    :goto_25
    return v1
.end method

.method public setImcProvisioned(II)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 195
    sget-object v0, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImcProvisioned, item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "status":I
    iget-object v2, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    if-nez v2, :cond_2b

    .line 198
    iget-object v2, p0, Lcom/mediatek/omadm/ImsConfigManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/dm/DmManager;->getDefaultDmManager(Landroid/content/Context;)Lcom/mediatek/dm/DmManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    .line 201
    :cond_2b
    iget-object v2, p0, Lcom/mediatek/omadm/ImsConfigManager;->mDmManager:Lcom/mediatek/dm/DmManager;

    if-eqz v2, :cond_37

    .line 202
    invoke-direct {p0}, Lcom/mediatek/omadm/ImsConfigManager;->getMainCapabilityPhoneId()I

    move-result v0

    invoke-virtual {v2, v0, p1, p2}, Lcom/mediatek/dm/DmManager;->setImcProvision(III)Z

    goto :goto_3f

    .line 205
    :cond_37
    const-string v2, "setImcProvisioned, failed since cant get  mDmManager"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {v1}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 208
    :goto_3f
    return-void
.end method

.method public setProvisionedIntValue(II)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 149
    sget-boolean v0, Lcom/mediatek/omadm/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvisionedIntValue, item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_22
    :try_start_22
    invoke-direct {p0}, Lcom/mediatek/omadm/ImsConfigManager;->getImsConfig()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/omadm/ImsConfigManager;->imsRslt_PalRslt(I)I

    move-result v0
    :try_end_2e
    .catch Lcom/android/ims/ImsException; {:try_start_22 .. :try_end_2e} :catch_2f

    .line 156
    .local v0, "status":I
    goto :goto_36

    .line 153
    .end local v0    # "status":I
    :catch_2f
    move-exception v0

    .line 154
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 155
    const/16 v1, 0xa

    move v0, v1

    .line 157
    .local v0, "status":I
    :goto_36
    invoke-static {v0}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 158
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 117
    sget-boolean v0, Lcom/mediatek/omadm/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/mediatek/omadm/ImsConfigManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvisionedStringValue, item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_22
    :try_start_22
    invoke-direct {p0}, Lcom/mediatek/omadm/ImsConfigManager;->getImsConfig()Lcom/android/ims/ImsConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/omadm/ImsConfigManager;->imsRslt_PalRslt(I)I

    move-result v0
    :try_end_2e
    .catch Lcom/android/ims/ImsException; {:try_start_22 .. :try_end_2e} :catch_2f

    .line 125
    .local v0, "status":I
    goto :goto_36

    .line 122
    .end local v0    # "status":I
    :catch_2f
    move-exception v0

    .line 123
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 124
    const/16 v1, 0xa

    move v0, v1

    .line 126
    .local v0, "status":I
    :goto_36
    invoke-static {v0}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 127
    return-void
.end method
