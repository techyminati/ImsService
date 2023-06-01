.class public Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;
.super Landroid/content/ContextWrapper;
.source "PplSmsFilterExtension.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ppl/IPplSmsFilter;


# static fields
.field public static final INSTRUCTION_KEY_FROM:Ljava/lang/String; = "From"

.field public static final INSTRUCTION_KEY_SIM_ID:Ljava/lang/String; = "SimId"

.field public static final INSTRUCTION_KEY_TO:Ljava/lang/String; = "To"

.field public static final INSTRUCTION_KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final INTENT_REMOTE_INSTRUCTION_RECEIVED:Ljava/lang/String; = "com.mediatek.ppl.REMOTE_INSTRUCTION_RECEIVED"

.field private static final TAG:Ljava/lang/String; = "PPL/PplSmsFilterExtension"

.field public static final USER_LOAD:Z


# instance fields
.field private mAgent:Lvendor/mediatek/hardware/pplagent/V1_0/IPplAgent;

.field private final mEnabled:Z

.field private final mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->USER_LOAD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, "PPL/PplSmsFilterExtension"

    const-string v1, "PplSmsFilterExtension enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v1, "ro.vendor.mtk_privacy_protection_lock"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_21

    .line 46
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mAgent:Lvendor/mediatek/hardware/pplagent/V1_0/IPplAgent;

    .line 47
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    .line 48
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mEnabled:Z

    .line 49
    return-void

    .line 53
    :cond_21
    :try_start_21
    invoke-static {}, Lvendor/mediatek/hardware/pplagent/V1_0/IPplAgent;->getService()Lvendor/mediatek/hardware/pplagent/V1_0/IPplAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mAgent:Lvendor/mediatek/hardware/pplagent/V1_0/IPplAgent;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_28

    .line 56
    goto :goto_2e

    .line 54
    :catch_28
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Failed to get PPLAgent"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mAgent:Lvendor/mediatek/hardware/pplagent/V1_0/IPplAgent;

    if-nez v1, :cond_3c

    .line 59
    const-string v1, "mAgent is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    .line 61
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mEnabled:Z

    .line 62
    return-void

    .line 65
    :cond_3c
    new-instance v1, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mEnabled:Z

    .line 67
    const-string v1, "PplSmsFilterExtension exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method private convertArrayListToByteArray(Ljava/util/ArrayList;[B)V
    .registers 5
    .param p2, "out"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;[B)V"
        }
    .end annotation

    .line 71
    .local p1, "in":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    array-length v1, p2

    if-ge v0, v1, :cond_19

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, p2, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method private matchNumber(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 213
    .local p2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 214
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 216
    const/4 v0, 0x1

    return v0

    .line 218
    .end local v1    # "s":Ljava/lang/String;
    :cond_1c
    goto :goto_8

    .line 220
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private stringForSecureNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .line 224
    const-string v0, ""

    .line 225
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->USER_LOAD:Z

    if-nez v1, :cond_51

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 228
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2f

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*******"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    .line 231
    :cond_2f
    const/4 v2, 0x4

    if-gt v1, v2, :cond_3b

    .line 232
    const-string v2, "\\w"

    const-string v3, "*"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    .line 234
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .end local v1    # "length":I
    :cond_51
    :goto_51
    return-object v0
.end method

.method public static stringForSecureSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # Ljava/lang/String;

    .line 243
    const-string v0, ""

    .line 244
    .local v0, "result":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->USER_LOAD:Z

    if-nez v1, :cond_33

    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 247
    .local v1, "length":I
    const/4 v2, 0x6

    if-lt v1, v2, :cond_2b

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "......"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 251
    :cond_2b
    const-string v2, "\\w"

    const-string v3, "*"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .end local v1    # "length":I
    :cond_33
    :goto_33
    return-object v0
.end method


# virtual methods
.method public pplFilter(Landroid/os/Bundle;)Z
    .registers 19
    .param p1, "params"    # Landroid/os/Bundle;

    .line 94
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mEnabled:Z

    const/4 v3, 0x0

    const-string v4, "PPL/PplSmsFilterExtension"

    if-nez v2, :cond_11

    .line 95
    const-string v2, "pplFilter returns false: feature not enabled"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v3

    .line 99
    :cond_11
    const-string v2, "format"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "format":Ljava/lang/String;
    const-string v5, "smsType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    move v5, v6

    goto :goto_23

    :cond_22
    move v5, v3

    .line 102
    .local v5, "isMO":Z
    :goto_23
    const-string v7, "subId"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 103
    .local v7, "subId":I
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v8

    .line 104
    .local v8, "simId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pplFilter: subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ". simId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v9, "pdus"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    .line 107
    .local v9, "messages":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 108
    .local v10, "dst":Ljava/lang/String;
    const/4 v11, 0x0

    .line 109
    .local v11, "src":Ljava/lang/String;
    const/4 v12, 0x0

    .line 111
    .local v12, "content":Ljava/lang/String;
    if-nez v9, :cond_82

    .line 112
    const-string v13, "msgContent"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 113
    const-string v13, "srdAddr"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 114
    const-string v13, "dstAddr"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 115
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pplFilter: Read msg directly:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->stringForSecureSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fa

    .line 117
    :cond_82
    array-length v13, v9

    new-array v13, v13, [[B

    .line 118
    .local v13, "pdus":[[B
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_86
    array-length v15, v9

    if-ge v14, v15, :cond_92

    .line 119
    aget-object v15, v9, v14

    check-cast v15, [B

    aput-object v15, v13, v14

    .line 118
    add-int/lit8 v14, v14, 0x1

    goto :goto_86

    .line 121
    .end local v14    # "i":I
    :cond_92
    array-length v14, v13

    .line 122
    .local v14, "pduCount":I
    if-le v14, v6, :cond_9b

    .line 123
    const-string v6, "pplFilter return false: ppl sms is short msg, count should <= 1 "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v3

    .line 126
    :cond_9b
    new-array v15, v14, [Lmediatek/telephony/MtkSmsMessage;

    .line 127
    .local v15, "msgs":[Lmediatek/telephony/MtkSmsMessage;
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "i":I
    :goto_a1
    if-ge v6, v14, :cond_af

    .line 128
    aget-object v3, v13, v6

    invoke-static {v3, v2}, Lmediatek/telephony/MtkSmsMessage;->createFromPdu([BLjava/lang/String;)Lmediatek/telephony/MtkSmsMessage;

    move-result-object v3

    aput-object v3, v15, v6

    .line 127
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto :goto_a1

    .line 131
    .end local v6    # "i":I
    :cond_af
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pplFilter: pdus length "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v13

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v3, 0x0

    aget-object v6, v15, v3

    if-nez v6, :cond_cf

    .line 133
    const-string v6, "pplFilter returns false: message is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v3

    .line 136
    :cond_cf
    aget-object v6, v15, v3

    invoke-virtual {v6}, Lmediatek/telephony/MtkSmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pplFilter: message content is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->stringForSecureSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v3, 0x0

    aget-object v6, v15, v3

    invoke-virtual {v6}, Lmediatek/telephony/MtkSmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    .line 140
    aget-object v6, v15, v3

    invoke-virtual {v6}, Lmediatek/telephony/MtkSmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v10

    .line 143
    .end local v13    # "pdus":[[B
    .end local v14    # "pduCount":I
    .end local v15    # "msgs":[Lmediatek/telephony/MtkSmsMessage;
    :goto_fa
    if-nez v12, :cond_102

    .line 144
    const-string v6, "pplFilter returns false: content is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v3

    .line 148
    :cond_102
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->readControlData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->buildControlData([B)Lcom/mediatek/internal/telephony/ppl/PplControlData;

    move-result-object v3

    .line 150
    .local v3, "controlData":Lcom/mediatek/internal/telephony/ppl/PplControlData;
    if-eqz v3, :cond_1fa

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_115

    const/4 v13, 0x0

    goto/16 :goto_1fb

    .line 155
    :cond_115
    if-eqz v5, :cond_13e

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pplFilter: dst is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->stringForSecureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-direct {v0, v10, v6}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->matchNumber(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_165

    .line 158
    const-string v6, "pplFilter returns false: MO number does not match"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v4, 0x0

    return v4

    .line 162
    :cond_13e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pplFilter: src is "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->stringForSecureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v6, v3, Lcom/mediatek/internal/telephony/ppl/PplControlData;->TrustedNumberList:Ljava/util/List;

    invoke-direct {v0, v11, v6}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->matchNumber(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_165

    .line 164
    const-string v6, "pplFilter returns false: MT number does not match"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v4, 0x0

    return v4

    .line 169
    :cond_165
    iget-object v6, v0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mMessageManager:Lcom/mediatek/internal/telephony/ppl/PplMessageManager;

    invoke-virtual {v6, v12}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->getMessageType(Ljava/lang/String;)B

    move-result v6

    .line 170
    .local v6, "instruction":B
    const/4 v13, -0x1

    if-ne v6, v13, :cond_175

    .line 171
    const-string v13, "pplFilter returns false: message is not matched"

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v4, 0x0

    return v4

    .line 174
    :cond_175
    if-eqz v5, :cond_199

    .line 175
    const/4 v13, 0x1

    if-eq v6, v13, :cond_183

    const/4 v13, 0x3

    if-eq v6, v13, :cond_183

    const/4 v13, 0x5

    if-eq v6, v13, :cond_183

    const/4 v13, 0x7

    if-ne v6, v13, :cond_1b5

    .line 179
    :cond_183
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pplFilter returns false: ignore MO command: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v4, 0x0

    return v4

    .line 183
    :cond_199
    if-eqz v6, :cond_1e4

    const/4 v13, 0x2

    if-eq v6, v13, :cond_1e4

    const/4 v13, 0x4

    if-eq v6, v13, :cond_1e4

    const/4 v13, 0x6

    if-eq v6, v13, :cond_1e4

    const/16 v13, 0x8

    if-eq v6, v13, :cond_1e4

    const/16 v13, 0x9

    if-eq v6, v13, :cond_1e4

    const/16 v13, 0xa

    if-eq v6, v13, :cond_1e4

    const/16 v13, 0xb

    if-ne v6, v13, :cond_1b5

    goto :goto_1e4

    .line 196
    :cond_1b5
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.mediatek.ppl.REMOTE_INSTRUCTION_RECEIVED"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v13, "intent":Landroid/content/Intent;
    const-string v14, "com.mediatek.ppl"

    const-string v15, "com.mediatek.ppl.PplService"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v14, "Type"

    invoke-virtual {v13, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 199
    const-string v14, "SimId"

    invoke-virtual {v13, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    if-eqz v5, :cond_1d5

    .line 202
    const-string v14, "To"

    invoke-virtual {v13, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1da

    .line 204
    :cond_1d5
    const-string v14, "From"

    invoke-virtual {v13, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :goto_1da
    const-string v14, "start PPL Service"

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v0, v13}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 209
    const/4 v4, 0x1

    return v4

    .line 191
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_1e4
    :goto_1e4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pplFilter returns false: ignore MT command: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v13, 0x0

    return v13

    .line 150
    .end local v6    # "instruction":B
    :cond_1fa
    const/4 v13, 0x0

    .line 151
    :goto_1fb
    const-string v6, "pplFilter returns false: control data is null or ppl is not enabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v13
.end method

.method public readControlData()[B
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->mAgent:Lvendor/mediatek/hardware/pplagent/V1_0/IPplAgent;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 78
    const-string v0, "PPL/PplSmsFilterExtension"

    const-string v2, "[writeControlData] mAgent is null !!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v1

    .line 82
    :cond_d
    :try_start_d
    invoke-interface {v0}, Lvendor/mediatek/hardware/pplagent/V1_0/IPplAgent;->readControlData()Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 84
    .local v2, "buff":[B
    invoke-direct {p0, v0, v2}, Lcom/mediatek/internal/telephony/ppl/PplSmsFilterExtension;->convertArrayListToByteArray(Ljava/util/ArrayList;[B)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_1b

    .line 85
    return-object v2

    .line 86
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "buff":[B
    :catch_1b
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 89
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method
