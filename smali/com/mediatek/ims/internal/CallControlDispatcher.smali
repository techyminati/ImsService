.class public Lcom/mediatek/ims/internal/CallControlDispatcher;
.super Ljava/lang/Object;
.source "CallControlDispatcher.java"

# interfaces
.implements Lcom/mediatek/ims/ImsEventDispatcher$VaEventDispatcher;


# static fields
.field private static final IMC_PROGRESS_NOTIFY_CONFERENCE:I = 0x101

.field private static final IMC_PROGRESS_NOTIFY_DIALOG:I = 0x100

.field private static final IMC_PROGRESS_NOTIFY_MWI:I = 0x102

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TAG:Ljava/lang/String; = "[CallControlDispatcher]"

.field private static final TELDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/internal/CallControlDispatcher;->SENLOG:Z

    .line 29
    const/4 v0, 0x0

    const-string v1, "persist.vendor.log.tel_dbg"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lcom/mediatek/ims/internal/CallControlDispatcher;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ImsAdapter$VaSocketIO;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IO"    # Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/mediatek/ims/internal/CallControlDispatcher;->mSocket:Lcom/mediatek/ims/ImsAdapter$VaSocketIO;

    .line 38
    return-void
.end method

.method private getDataLength([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "originLen"    # I

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 121
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 122
    return v0

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    return v0
.end method


# virtual methods
.method public disableRequest(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 45
    const-string v0, "[CallControlDispatcher]"

    const-string v1, "disableRequest()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public enableRequest(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 41
    const-string v0, "[CallControlDispatcher]"

    const-string v1, "enableRequest()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public vaEventCallback(Lcom/mediatek/ims/ImsAdapter$VaEvent;)V
    .locals 16
    .param p1, "event"    # Lcom/mediatek/ims/ImsAdapter$VaEvent;

    move-object/from16 v1, p0

    .line 58
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getRequestID()I

    move-result v0

    .line 59
    .local v0, "requestId":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v2

    .line 60
    .local v2, "len":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v3

    .line 61
    .local v3, "callId":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getPhoneId()I

    move-result v4

    .line 62
    .local v4, "phoneId":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getInt()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .local v5, "serviceId":I
    const/16 v6, 0xfa0

    move-object/from16 v7, p1

    :try_start_1
    invoke-virtual {v7, v6}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getBytes(I)[B

    move-result-object v8

    .line 64
    .local v8, "byteData":[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    .line 65
    .local v9, "data":Ljava/lang/String;
    invoke-direct {v1, v8, v6}, Lcom/mediatek/ims/internal/CallControlDispatcher;->getDataLength([BI)I

    move-result v6

    move v2, v6

    .line 67
    sget-boolean v6, Lcom/mediatek/ims/internal/CallControlDispatcher;->SENLOG:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, ", serviceId = "

    const-string v11, ", phoneId = "

    const-string v12, ", callId = "

    const-string v13, ", length = "

    const-string v14, "requestId = "

    const-string v15, "[CallControlDispatcher]"

    if-eqz v6, :cond_1

    :try_start_2
    sget-boolean v6, Lcom/mediatek/ims/internal/CallControlDispatcher;->TELDBG:Z

    if-eqz v6, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", data = [hidden]"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", data = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-static {v15, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :goto_1
    const-string v6, "call.id"

    const-string v10, "phone.id"

    packed-switch v5, :pswitch_data_0

    .line 107
    goto :goto_2

    .line 82
    :pswitch_0
    :try_start_3
    new-instance v6, Landroid/content/Intent;

    const-string v11, "mediatek.intent.action.lte.mwi"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v6, "intent":Landroid/content/Intent;
    const-string v11, "lte_mwi_body"

    invoke-virtual {v6, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v6, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v10, v1, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    const-string v11, "com.mediatek.permission.READ_LTE_MESSAGE_WAITING_INDICATION"

    invoke-virtual {v10, v6, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 87
    const-string v10, "Message Waiting Message is sent."

    invoke-static {v15, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_3

    .line 91
    .end local v6    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.ims.conference"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v11, "intent":Landroid/content/Intent;
    const-string v12, "message.content"

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v11, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual {v11, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object v6, v1, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 96
    const-string v6, "Conference call XML message is sent."

    invoke-static {v15, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    goto :goto_3

    .line 99
    .end local v11    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.mediatek.intent.action.ims.dialogEventPackage"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v12, "com.mediatek.intent.extra.DEP_CONTENT"

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v11, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    invoke-virtual {v11, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    iget-object v6, v1, Lcom/mediatek/ims/internal/CallControlDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 104
    const-string v6, "Dialog event package intent is sent."

    invoke-static {v15, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_3

    .line 107
    .end local v11    # "intent":Landroid/content/Intent;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unkonwn serviceId: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 114
    .end local v0    # "requestId":I
    .end local v2    # "len":I
    .end local v3    # "callId":I
    .end local v4    # "phoneId":I
    .end local v5    # "serviceId":I
    .end local v8    # "byteData":[B
    .end local v9    # "data":Ljava/lang/String;
    :goto_3
    goto :goto_5

    .line 112
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
