.class public Lmediatek/telecom/MtkTelecomManager;
.super Ljava/lang/Object;
.source "MtkTelecomManager.java"


# static fields
.field public static final ACTION_CALL_RECORD:Ljava/lang/String; = "mediatek.telecom.action.CALL_RECORD"

.field public static final ACTION_INCALL_SCREEN_STATE_CHANGED:Ljava/lang/String; = "mediatek.telecom.action.INCALL_SCREEN_STATE_CHANGED"

.field public static final ACTION_NEW_OUTGOING_CALL_UNDEMOTE:Ljava/lang/String; = "mediatek.intent.action.NEW_OUTGOING_CALL"

.field public static final ACTION_STOP_CALL_RECORD:Ljava/lang/String; = "mediatek.telecom.action.STOP_CALL_RECORD"

.field public static final CALL_RECORDING_EVENT_SHOW_TOAST:I = 0x0

.field public static final CALL_RECORDING_STATE_ACTIVE:I = 0x1

.field public static final CALL_RECORDING_STATE_IDLE:I = 0x0

.field public static final DISCONNECT_REASON_VOLTE_SS_DATA_OFF:Ljava/lang/String; = "disconnect.reason.volte.ss.data.off"

.field public static final EVENT_RTT_SUPPORT_CHANGED:Ljava/lang/String; = "mediatek.telecom.event.RTT_SUPPORT_CHANGED"

.field public static final EXTRA_CALLING_VIA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "mediatek.telecom.extra.CALLING_VIA_PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_CALL_RECORDING_STATE:Ljava/lang/String; = "mediatek.telecom.CALL_RECORDING_STATE"

.field public static final EXTRA_INCALL_SCREEN_SHOW:Ljava/lang/String; = "mediatek.telecom.extra.INCALL_SCREEN_SHOW"

.field public static final EXTRA_INCOMING_GWSD:Ljava/lang/String; = "mediatek.telecom.extra.EXTRA_INCOMING_GWSD"

.field public static final EXTRA_IS_RTT_EMERGENCY_CALLBACK:Ljava/lang/String; = "mediatek.telecom.extra.IS_RTT_EMERGENCY_CALLBACK"

.field public static final EXTRA_RTT_STATUS_LOCAL:Ljava/lang/String; = "mediatek.telecom.extra.RTT_STATUS_LOCAL"

.field public static final EXTRA_RTT_STATUS_REMOTE:Ljava/lang/String; = "mediatek.telecom.extra.RTT_STATUS_REMOTE"

.field public static final EXTRA_RTT_SUPPORT_LOCAL:Ljava/lang/String; = "mediatek.telecom.extra.RTT_SUPPORT_LOCAL"

.field public static final EXTRA_RTT_SUPPORT_REMOTE:Ljava/lang/String; = "mediatek.telecom.extra.RTT_SUPPORT_REMOTE"

.field public static final EXTRA_VIRTUAL_LINE_NUMBER:Ljava/lang/String; = "mediatek.telecom.extra.VIRTUAL_LINE_NUMBER"

.field public static final EXTRA_VOLTE_MARKED_AS_EMERGENCY:Ljava/lang/String; = "mediatek.telecom.extra.VOLTE_MARKED_AS_EMERGENCY"

.field public static final EXTRA_VOLTE_PAU:Ljava/lang/String; = "mediatek.telecom.extra.VOLTE_PAU"

.field public static final EXTRA_WAS_VIDEO_CALL:Ljava/lang/String; = "mediatek.telecom.extra.WAS_VIDEO_CALL"

.field public static final MTK_CONNECTION_EVENT_CALL_RECORDING_STATE_CHANGED:Ljava/lang/String; = "mediatek.telecom.CONNECTION_EVENT_CALL_RECORDING_STATE_CHANGED"

.field public static final MTK_TELECOM_SERVICE_NAME:Ljava/lang/String; = "mtk_telecom"

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lmediatek/telecom/MtkTelecomManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    const-class v0, Lmediatek/telecom/MtkTelecomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmediatek/telecom/MtkTelecomManager;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lmediatek/telecom/MtkTelecomManager;

    invoke-direct {v0}, Lmediatek/telecom/MtkTelecomManager;-><init>()V

    sput-object v0, Lmediatek/telecom/MtkTelecomManager;->sInstance:Lmediatek/telecom/MtkTelecomManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method

.method public static createAdhocConferencePhoneAccount(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 341
    nop

    .line 342
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 344
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getAllPhoneAccounts()Ljava/util/List;

    move-result-object v1

    .line 345
    .local v1, "phoneAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v2, "conferenceAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    if-eqz v1, :cond_2e

    .line 347
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccount;

    .line 348
    .local v4, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-static {v4}, Lmediatek/telecom/MtkTelecomManager;->isAdhocConferenceSupported(Landroid/telecom/PhoneAccount;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 349
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v4    # "phoneAccount":Landroid/telecom/PhoneAccount;
    :cond_2d
    goto :goto_18

    .line 354
    :cond_2e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_41

    .line 355
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccount;

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    return-object v3

    .line 358
    :cond_41
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getInstance()Lmediatek/telecom/MtkTelecomManager;
    .registers 1

    .line 289
    sget-object v0, Lmediatek/telecom/MtkTelecomManager;->sInstance:Lmediatek/telecom/MtkTelecomManager;

    return-object v0
.end method

.method private getTelecomService()Lcom/mediatek/internal/telecom/IMtkTelecomService;
    .registers 2

    .line 231
    nop

    .line 232
    const-string v0, "mtk_telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/mediatek/internal/telecom/IMtkTelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telecom/IMtkTelecomService;

    move-result-object v0

    return-object v0
.end method

.method private static isAdhocConferenceSupported(Landroid/telecom/PhoneAccount;)Z
    .registers 2
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .line 362
    if-eqz p0, :cond_c

    const/16 v0, 0x4000

    .line 363
    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 364
    const/4 v0, 0x1

    return v0

    .line 367
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private isServiceConnected()Z
    .registers 4

    .line 236
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->getTelecomService()Lcom/mediatek/internal/telecom/IMtkTelecomService;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 237
    .local v0, "isConnected":Z
    :goto_9
    if-nez v0, :cond_12

    .line 238
    sget-object v1, Lmediatek/telecom/MtkTelecomManager;->TAG:Ljava/lang/String;

    const-string v2, "Mtk Telecom Service not found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_12
    return v0
.end method


# virtual methods
.method public getAllPhoneAccountHandlesIncludingVirtual()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 276
    :try_start_0
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 277
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->getTelecomService()Lcom/mediatek/internal/telecom/IMtkTelecomService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/internal/telecom/IMtkTelecomService;->getAllPhoneAccountHandlesIncludingVirtual()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    .line 281
    :cond_f
    goto :goto_18

    .line 279
    :catch_10
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmediatek/telecom/MtkTelecomManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling getAllPhoneAccountHandlesIncludingVirtual()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getAllPhoneAccountsIncludingVirtual()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .line 262
    :try_start_0
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 263
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->getTelecomService()Lcom/mediatek/internal/telecom/IMtkTelecomService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/internal/telecom/IMtkTelecomService;->getAllPhoneAccountsIncludingVirtual()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    .line 267
    :cond_f
    goto :goto_18

    .line 265
    :catch_10
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmediatek/telecom/MtkTelecomManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling getAllPhoneAccountsIncludeVirtual()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public isInCall(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 320
    :try_start_0
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 321
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->getTelecomService()Lcom/mediatek/internal/telecom/IMtkTelecomService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telecom/IMtkTelecomService;->isInCall(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v0

    .line 325
    :cond_13
    goto :goto_1c

    .line 323
    :catch_14
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmediatek/telecom/MtkTelecomManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling isInCall()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isInVideoCall(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 248
    :try_start_0
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 249
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->getTelecomService()Lcom/mediatek/internal/telecom/IMtkTelecomService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telecom/IMtkTelecomService;->isInVideoCall(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v0

    .line 253
    :cond_13
    goto :goto_1c

    .line 251
    :catch_14
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmediatek/telecom/MtkTelecomManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling isInVideoCall()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isInVolteCall(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 297
    :try_start_0
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 298
    invoke-direct {p0}, Lmediatek/telecom/MtkTelecomManager;->getTelecomService()Lcom/mediatek/internal/telecom/IMtkTelecomService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telecom/IMtkTelecomService;->isInVolteCall(Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v0

    .line 302
    :cond_13
    goto :goto_1c

    .line 300
    :catch_14
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmediatek/telecom/MtkTelecomManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling isInVolteCall()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method
