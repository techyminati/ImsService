.class public Lcom/mediatek/internal/telephony/MtkSubscriptionManager;
.super Ljava/lang/Object;
.source "MtkSubscriptionManager.java"


# static fields
.field private static final DBG:Z = false

.field public static final ENHANCED_VONR_MODE_ENABLED:Ljava/lang/String; = "vonr_enabled"

.field public static final ENHANCED_VONR_SHOW_UI_ENABLED:Ljava/lang/String; = "vonr_ui_enabled"

.field public static final EXTRA_VALUE_NEW_SIM:I = 0x1

.field public static final EXTRA_VALUE_NOCHANGE:I = 0x4

.field public static final EXTRA_VALUE_REMOVE_SIM:I = 0x2

.field public static final EXTRA_VALUE_REPOSITION_SIM:I = 0x3

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_PROP_KEY:Ljava/lang/String; = "simPropKey"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSubscriptionManager"

.field private static final VDBG:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static getSubIdUsingPhoneId(I)I
    .registers 4
    .param p0, "phoneId"    # I

    .line 190
    const/4 v0, -0x1

    .line 193
    .local v0, "subId":I
    :try_start_1
    const-string v1, "isubstub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v1

    .line 194
    .local v1, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v1, :cond_12

    .line 195
    invoke-interface {v1, p0}, Lcom/mediatek/internal/telephony/IMtkSub;->getSubIdUsingPhoneId(I)I

    move-result v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move v0, v2

    .line 199
    .end local v1    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_12
    goto :goto_14

    .line 197
    :catch_13
    move-exception v1

    .line 201
    :goto_14
    return v0
.end method

.method public static getSubInfo(Ljava/lang/String;I)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 3
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 6
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "callingFeatureId"    # Ljava/lang/String;

    .line 116
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubInfo]- invalid subId, subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSubscriptionManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_1e
    const/4 v0, 0x0

    .line 124
    .local v0, "subInfo":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    :try_start_1f
    const-string v1, "isubstub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v1

    .line 125
    .local v1, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v1, :cond_30

    .line 126
    invoke-interface {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSub;->getSubInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2f} :catch_31

    move-object v0, v2

    .line 130
    .end local v1    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_30
    goto :goto_32

    .line 128
    :catch_31
    move-exception v1

    .line 132
    :goto_32
    return-object v0
.end method

.method public static getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 3
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "iccId"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 6
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;

    .line 161
    if-nez p1, :cond_b

    .line 162
    const-string v0, "MtkSubscriptionManager"

    const-string v1, "[getSubInfoForIccId]- null iccid"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_b
    const/4 v0, 0x0

    .line 169
    .local v0, "result":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    :try_start_c
    const-string v1, "isubstub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v1

    .line 170
    .local v1, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v1, :cond_1d

    .line 171
    invoke-interface {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/IMtkSub;->getSubInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1c} :catch_1e

    move-object v0, v2

    .line 175
    .end local v1    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_1d
    goto :goto_1f

    .line 173
    :catch_1e
    move-exception v1

    .line 177
    :goto_1f
    return-object v0
.end method

.method private static printStackTrace(Ljava/lang/String;)V
    .registers 8
    .param p0, "msg"    # Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 256
    .local v0, "re":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StackTrace - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSubscriptionManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 258
    .local v1, "st":[Ljava/lang/StackTraceElement;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_2f

    aget-object v5, v1, v4

    .line 259
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 261
    :cond_2f
    return-void
.end method

.method public static setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    .registers 2
    .param p0, "subId"    # I

    .line 236
    if-gtz p0, :cond_7

    .line 237
    const-string v0, "setDefaultDataSubIdWithoutCapabilitySwitch subId 0"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->printStackTrace(Ljava/lang/String;)V

    .line 242
    :cond_7
    :try_start_7
    const-string v0, "isubstub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v0

    .line 243
    .local v0, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v0, :cond_16

    .line 244
    invoke-interface {v0, p0}, Lcom/mediatek/internal/telephony/IMtkSub;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    .line 248
    .end local v0    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_16
    goto :goto_18

    .line 246
    :catch_17
    move-exception v0

    .line 249
    :goto_18
    return-void
.end method

.method public static setDefaultSubId(I)V
    .registers 3
    .param p0, "subId"    # I

    .line 212
    if-gtz p0, :cond_7

    .line 213
    const-string v0, "setDefaultSubId subId 0"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->printStackTrace(Ljava/lang/String;)V

    .line 217
    :cond_7
    :try_start_7
    const-string v0, "isubstub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkSub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSub;

    move-result-object v0

    .line 218
    .local v0, "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    if-eqz v0, :cond_17

    .line 219
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/mediatek/internal/telephony/IMtkSub;->setDefaultFallbackSubId(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_18

    .line 224
    .end local v0    # "iSub":Lcom/mediatek/internal/telephony/IMtkSub;
    :cond_17
    goto :goto_19

    .line 222
    :catch_18
    move-exception v0

    .line 225
    :goto_19
    return-void
.end method
