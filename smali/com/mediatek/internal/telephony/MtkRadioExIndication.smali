.class public Lcom/mediatek/internal/telephony/MtkRadioExIndication;
.super Lcom/mediatek/internal/telephony/MtkRadioExIndicationBase;
.source "MtkRadioExIndication.java"


# static fields
.field private static final ENG:Z

.field private static final TAG:Ljava/lang/String; = "MtkRadioInd"


# instance fields
.field private mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 130
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .param p1, "ril"    # Lcom/android/internal/telephony/RIL;

    .line 137
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkRadioExIndicationBase;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 139
    return-void
.end method

.method private getSubId(I)I
    .registers 5
    .param p1, "phoneId"    # I

    .line 268
    const/4 v0, -0x1

    .line 269
    .local v0, "subId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 270
    .local v1, "subIds":[I
    if-eqz v1, :cond_d

    array-length v2, v1

    if-lez v2, :cond_d

    .line 271
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 273
    :cond_d
    return v0
.end method


# virtual methods
.method public bipProactiveCommand(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1002
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    .line 1003
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbf1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1006
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 1007
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mBipProCmdRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1009
    :cond_23
    return-void
.end method

.method public callAdditionalInfoInd(IILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .param p2, "ciType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 191
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 192
    .local v0, "notification":[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 194
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 198
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc36

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_42

    .line 203
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallAdditionalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 204
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 206
    :cond_42
    return-void
.end method

.method public cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "cfuStatus"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;

    .line 143
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 146
    .local v0, "notification":[I
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;->status:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 147
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CfuStatusNotification;->lineId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 149
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbfe

    invoke-virtual {v1, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 151
    aget v1, v0, v2

    if-ne v1, v2, :cond_21

    .line 152
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCfuReturnValue:Ljava/lang/Object;

    .line 156
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_3c

    aget v1, v0, v2

    if-ne v1, v2, :cond_3c

    .line 158
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallForwardingInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 159
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 161
    :cond_3c
    return-void
.end method

.method public cipherIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "cipherNotify"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;

    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 213
    .local v0, "notification":[Ljava/lang/String;
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;->simCipherStatus:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 214
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;->sessionStatus:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 215
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;->csStatus:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 216
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CipherNotification;->psStatus:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 218
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbd0

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 220
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_36

    .line 221
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCipherIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 222
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 225
    :cond_36
    return-void
.end method

.method public confSRVCC(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1098
    .local p2, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc00

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1102
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1103
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1104
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1103
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1106
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mEconfSrvccRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1107
    return-void
.end method

.method public crssIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "crssNotification"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;

    .line 247
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 249
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;-><init>()V

    .line 250
    .local v0, "notification":Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;->code:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->code:I

    .line 251
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;->type:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->type:I

    .line 252
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;->alphaid:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->alphaid:Ljava/lang/String;

    .line 253
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    .line 254
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CrssNotification;->cli_validity:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->cli_validity:I

    .line 256
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbd1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallRelatedSuppSvcRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_38

    .line 259
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCallRelatedSuppSvcRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 262
    :cond_38
    return-void
.end method

.method public currentSignalStrengthWithWcdmaEcioInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/SignalStrengthWithWcdmaEcio;

    .line 402
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 404
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 406
    .local v0, "ss":Landroid/telephony/SignalStrength;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc19

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 407
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSignalStrengthWithWcdmaEcioInd SignalStrength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 410
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSignalStrengthWithWcdmaEcioRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 411
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 413
    :cond_3e
    return-void
.end method

.method public dedicatedBearerActivationInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;

    .line 1141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1144
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc0a

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1147
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertDedicatedDataCallResult(Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    move-result-object v0

    .line 1149
    .local v0, "ret":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1152
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_2e

    .line 1153
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerActivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1156
    :cond_2e
    return-void
.end method

.method public dedicatedBearerDeactivationInd(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "cid"    # I

    .line 1177
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc0c

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dedicatedBearerDeactivationInd, cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_39

    .line 1188
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerDeactivatedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 1189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1188
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1191
    :cond_39
    return-void
.end method

.method public dedicatedBearerModificationInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "ddcResult"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;

    .line 1159
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc0b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->convertDedicatedDataCallResult(Lvendor/mediatek/hardware/mtkradioex/V3_0/DedicateDataCall;)Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;

    move-result-object v0

    .line 1167
    .local v0, "ret":Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/MtkDedicateDataCallResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_2e

    .line 1171
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mDedicatedBearerModifiedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1174
    :cond_2e
    return-void
.end method

.method public dsbpStateChanged(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "dsbpState"    # I

    .line 1255
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1257
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc2a

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1259
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsbpStateChanged state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_3d

    .line 1261
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsbpStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 1262
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1261
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1264
    :cond_3d
    return-void
.end method

.method public eMBMSAtInfoIndication(ILjava/lang/String;)V
    .registers 8
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "ret":Ljava/lang/Object;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 788
    .local v1, "response":Ljava/lang/String;
    move-object v0, v1

    .line 790
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbef

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 793
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 795
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "Notify mEmbmsAtInfoNotificationRegistrant"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 797
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsAtInfoNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_39

    .line 801
    :cond_32
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "No mEmbmsAtInfoNotificationRegistrant exist"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 804
    :goto_39
    return-void
.end method

.method public eMBMSSessionStatusIndication(II)V
    .registers 8
    .param p1, "indicationType"    # I
    .param p2, "status"    # I

    .line 621
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 624
    .local v1, "response":[I
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 626
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbee

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 629
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 631
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "Notify mEmbmsSessionStatusNotificationRegistrant"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 633
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mEmbmsSessionStatusNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_39

    .line 637
    :cond_32
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v3, "No mEmbmsSessionStatusNotificationRegistrant exist"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 641
    :goto_39
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.EMBMS_SESSION_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "isActived"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 645
    return-void
.end method

.method public eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "indicationType"    # I
    .param p2, "eccListWithCard"    # Ljava/lang/String;
    .param p3, "eccListNoCard"    # Ljava/lang/String;

    .line 265
    return-void
.end method

.method public esnMeidChangeInd(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "esnMeid"    # Ljava/lang/String;

    .line 963
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 965
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    .line 966
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbcf

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 970
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCDMACardEsnMeidRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_24

    .line 971
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCDMACardEsnMeidRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_31

    .line 974
    :cond_24
    if-eqz v0, :cond_2d

    .line 975
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "Cache esnMeidChangeInd"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 977
    :cond_2d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object p2, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mEspOrMeid:Ljava/lang/Object;

    .line 979
    :goto_31
    return-void
.end method

.method public gmssRatChangedIndication(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 871
    .local p2, "gmsss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 874
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 875
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 877
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 879
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbbb

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 881
    move-object v2, v0

    check-cast v2, [I

    .line 882
    .local v2, "rat":[I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v3, :cond_40

    .line 883
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mGmssRatChangedRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 885
    :cond_40
    return-void
.end method

.method public iccidChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .line 1389
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1392
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1393
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1392
    const/16 v2, 0xc3f

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1396
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->cacheIccid(Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 1398
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIccidRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1400
    :cond_2c
    return-void
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;

    .line 166
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 168
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 169
    .local v0, "notification":[Ljava/lang/String;
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->callId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 170
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->number:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 171
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->type:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 172
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->callMode:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 173
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->seqNo:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 174
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IncomingCallNotification;->redirectNumber:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 177
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mIncomingCallIndicationRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_40

    .line 180
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mIncomingCallIndicationRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 181
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 184
    :cond_40
    return-void
.end method

.method public iwlanRegistrationStateInd(II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "state"    # I

    .line 1450
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1452
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc45

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1455
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1456
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1457
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mIWlanStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1458
    return-void
.end method

.method public mdChangedApnInd(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "apnClassType"    # I

    .line 951
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 953
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbcd

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 955
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_27

    .line 956
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mAttachApnChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 957
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 956
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 959
    :cond_27
    return-void
.end method

.method public meSmsStorageFullInd(I)V
    .registers 4
    .param p1, "indicationType"    # I

    .line 537
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 539
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbc3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 541
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMeSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_1d

    .line 542
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMeSmsFullRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 544
    :cond_1d
    return-void
.end method

.method public mobileDataUsageInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1356
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1358
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1359
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1360
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1359
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1363
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc3d

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1365
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_3b

    .line 1366
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mMobileDataUsageRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1369
    :cond_3b
    return-void
.end method

.method public networkInfoInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1054
    .local p2, "networkinfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1057
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbd6

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 1061
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1063
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_40

    .line 1064
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1066
    :cond_40
    return-void
.end method

.method public networkRejectCauseInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 328
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 333
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 334
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 336
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 338
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xc25

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 340
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_41

    .line 341
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkRejectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 344
    :cond_41
    return-void
.end method

.method public newEtwsInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "etws"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;

    .line 518
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 520
    new-instance v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkEtwsNotification;-><init>()V

    .line 521
    .local v0, "response":Lcom/mediatek/internal/telephony/MtkEtwsNotification;
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;->messageId:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->messageId:I

    .line 522
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;->serialNumber:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->serialNumber:I

    .line 523
    iget v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;->warningType:I

    iput v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->warningType:I

    .line 524
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;->plmnId:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->plmnId:Ljava/lang/String;

    .line 525
    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/EtwsNotification;->securityInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkEtwsNotification;->securityInfo:Ljava/lang/String;

    .line 527
    sget-boolean v1, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 530
    :cond_29
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mEtwsNotificationRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_3c

    .line 531
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mEtwsNotificationRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 534
    :cond_3c
    return-void
.end method

.method public nrCaBandChangeInd(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1462
    .local p2, "bands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc46

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1464
    return-void
.end method

.method public nrSysInfoInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1485
    .local p2, "nrSysInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1487
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1488
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1489
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1488
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1493
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc48

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1496
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNrSysInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 1497
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNrSysInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1499
    :cond_3f
    return-void
.end method

.method public oemHookRaw(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1199
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1201
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 1203
    .local v0, "response":[B
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1204
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1203
    const/16 v3, 0x404

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1207
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_27

    .line 1208
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mUnsolOemHookRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1211
    :cond_27
    return-void
.end method

.method public on5GUWInfoInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1467
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1468
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1469
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1470
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1472
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc47

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1474
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->m5gUWInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 1475
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->m5gUWInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1477
    :cond_3f
    return-void
.end method

.method public onCardDetectedInd(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 497
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 499
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    .line 500
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc35

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 503
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_28

    .line 504
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCardDetectedIndRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_36

    .line 508
    :cond_28
    if-eqz v0, :cond_31

    .line 509
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "Cache card detected event"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 511
    :cond_31
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsCardDetected:Z

    .line 513
    :goto_36
    return-void
.end method

.method public onCellularQualityChangedInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1319
    .local p2, "indStgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1321
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc3c

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1324
    :cond_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1325
    .local v0, "data":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 1326
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1325
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1330
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, 0x0

    aget v1, v0, v1

    packed-switch v1, :pswitch_data_60

    .line 1347
    const/4 v1, 0x0

    .local v1, "CellularQualityType":I
    goto :goto_3e

    .line 1344
    .end local v1    # "CellularQualityType":I
    :pswitch_34
    const/4 v1, 0x7

    .line 1345
    .restart local v1    # "CellularQualityType":I
    goto :goto_3e

    .line 1341
    .end local v1    # "CellularQualityType":I
    :pswitch_36
    const/4 v1, 0x6

    .line 1342
    .restart local v1    # "CellularQualityType":I
    goto :goto_3e

    .line 1338
    .end local v1    # "CellularQualityType":I
    :pswitch_38
    const/4 v1, 0x2

    .line 1339
    .restart local v1    # "CellularQualityType":I
    goto :goto_3e

    .line 1335
    .end local v1    # "CellularQualityType":I
    :pswitch_3a
    const/4 v1, 0x5

    .line 1336
    .restart local v1    # "CellularQualityType":I
    goto :goto_3e

    .line 1332
    .end local v1    # "CellularQualityType":I
    :pswitch_3c
    const/4 v1, 0x0

    .line 1333
    .restart local v1    # "CellularQualityType":I
    nop

    .line 1351
    :goto_3e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_UNSOL_IWLAN_CELLULAR_QUALITY_CHANGED_IND type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1353
    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3a
        :pswitch_38
        :pswitch_36
        :pswitch_34
    .end packed-switch
.end method

.method public onDsdaChangedInd(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "mode"    # I

    .line 1267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1269
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc3b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1271
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDsdaChangedInd: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vendor.radio.dsda.state"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_53

    .line 1275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mDsdaStateRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1277
    :cond_53
    return-void
.end method

.method public onImeiLock(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 475
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 477
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbbf

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 479
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 480
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImeiLockRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 483
    :cond_23
    return-void
.end method

.method public onImsiRefreshDone(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 486
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 488
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 490
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 491
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mImsiRefreshDoneRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 494
    :cond_23
    return-void
.end method

.method public onMccMncChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 428
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc18

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    .line 432
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMccMncRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 434
    :cond_23
    return-void
.end method

.method public onMdDataRetryCountReset(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 1070
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1072
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    .line 1073
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbf3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1076
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 1077
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mMdDataRetryCountResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1080
    :cond_23
    return-void
.end method

.method public onNwLimitInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1372
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1374
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1375
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1376
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1375
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1379
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc3e

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1381
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_3b

    .line 1382
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mNwLimitRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1385
    :cond_3b
    return-void
.end method

.method public onPlmnDataInd(ILvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;)V
    .registers 14
    .param p1, "indicationType"    # I
    .param p2, "plmnMvnoInfo"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;

    .line 1404
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1406
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->gsmPlmn:Ljava/lang/String;

    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->cdmaPlmn:Ljava/lang/String;

    iget-object v4, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->gsmSpn:Ljava/lang/String;

    iget-object v5, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->cdmaSpn:Ljava/lang/String;

    iget-object v6, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->gsmImsi:Ljava/lang/String;

    iget-object v7, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->cdmaImsi:Ljava/lang/String;

    iget-object v8, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->gid1:Ljava/lang/String;

    iget-object v9, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->pnn:Ljava/lang/String;

    iget-object v10, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PlmnMvnoInfo;->impi:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    .local v0, "response":Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc40

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1414
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->notifyPlmnMvnoData(Lcom/mediatek/internal/telephony/dataconnection/PlmnMvnoData;)V

    .line 1415
    return-void
.end method

.method public onPseudoCellInfoInd(ILjava/util/ArrayList;)V
    .registers 14
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 575
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 577
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbc9

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 579
    :cond_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 580
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 581
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 585
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "persist.vendor.radio.apc.mode%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "property":Ljava/lang/String;
    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, "propStr":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 588
    .local v5, "index":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_75

    .line 589
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 590
    .local v6, "subStr":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 591
    .local v7, "settings":[Ljava/lang/String;
    aget-object v8, v7, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 592
    .local v8, "mode":I
    aget-object v9, v7, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 593
    .local v9, "report":I
    if-ne v9, v1, :cond_66

    goto :goto_67

    :cond_66
    move v1, v4

    .line 594
    .local v1, "enable":Z
    :goto_67
    const/4 v4, 0x2

    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 595
    .local v4, "interval":I
    new-instance v10, Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {v10, v8, v1, v4, v0}, Lcom/mediatek/internal/telephony/PseudoCellInfo;-><init>(IZI[I)V

    move-object v1, v10

    .line 596
    .end local v4    # "interval":I
    .end local v6    # "subStr":Ljava/lang/String;
    .end local v7    # "settings":[Ljava/lang/String;
    .end local v8    # "mode":I
    .end local v9    # "report":I
    .local v1, "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    goto :goto_7a

    .line 597
    .end local v1    # "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :cond_75
    new-instance v1, Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {v1, v4, v4, v4, v0}, Lcom/mediatek/internal/telephony/PseudoCellInfo;-><init>(IZI[I)V

    .line 600
    .restart local v1    # "cellInfo":Lcom/mediatek/internal/telephony/PseudoCellInfo;
    :goto_7a
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v4, :cond_8d

    .line 601
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkRIL;->mPseudoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 605
    :cond_8d
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.mediatek.phone.ACTION_APC_INFO_NOTIFY"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    const-string v7, "phoneId"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 607
    const-string v6, "info"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 608
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 610
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Broadcast for APC info:cellInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/PseudoCellInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public onRemoveRestrictEutran(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 1084
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1086
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    .line 1087
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbf4

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1090
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 1091
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mRemoveRestrictEutranRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1094
    :cond_23
    return-void
.end method

.method public onRsuEvent(IILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "eventId"    # I
    .param p3, "eventString"    # Ljava/lang/String;

    .line 1418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1419
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RSU-SIMLOCK] onRsuEvent eventId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 1421
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_2e

    .line 1422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc38

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1425
    :cond_2e
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1426
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1428
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_47

    .line 1429
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1432
    :cond_47
    return-void
.end method

.method public onRsuSimLockEvent(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "eventId"    # I

    .line 762
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 763
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RSU-SIMLOCK] onRsuSimLockEvent eventId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 764
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_26

    .line 765
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc38

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 768
    :cond_26
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 769
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 771
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_3f

    .line 772
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mRsuSimlockRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 775
    :cond_3f
    return-void
.end method

.method public onSimHotSwapInd(IILjava/lang/String;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 657
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_27

    .line 658
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimHotSwapInd event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 661
    :cond_27
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_a6

    .line 700
    :pswitch_2b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "onSimHotSwapInd Invalid event!"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_a5

    .line 693
    :pswitch_34
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 694
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimCommonSlotNoChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 687
    :pswitch_47
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 688
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimTrayPlugIn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 681
    :pswitch_5a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 682
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimMissing:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 675
    :pswitch_6d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 676
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimRecovery:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 669
    :pswitch_80
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 670
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugOut:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_a5

    .line 663
    :pswitch_93
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_a5

    .line 664
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPlugIn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 703
    :cond_a5
    :goto_a5
    return-void

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_93
        :pswitch_80
        :pswitch_6d
        :pswitch_5a
        :pswitch_47
        :pswitch_2b
        :pswitch_34
    .end packed-switch
.end method

.method public onSimPowerChangedInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 713
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 715
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    .line 716
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc34

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 719
    :cond_10
    const/4 v0, 0x0

    .line 720
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 721
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 722
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 724
    .end local v2    # "i":I
    :cond_2d
    move-object v0, v1

    .line 726
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerInfo:Ljava/lang/Object;

    .line 727
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_49

    .line 728
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSimPowerChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 730
    :cond_49
    return-void
.end method

.method public onStkMenuReset(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 1040
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1042
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    .line 1043
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbff

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 1046
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 1047
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mStkSetupMenuResetRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1050
    :cond_23
    return-void
.end method

.method public onTxPowerIndication(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1219
    .local p2, "txPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1220
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1221
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1222
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1221
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1225
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_34

    .line 1226
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1229
    :cond_34
    return-void
.end method

.method public onTxPowerStatusIndication(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1237
    .local p2, "txPower":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1238
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1239
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1240
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1239
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1243
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_34

    .line 1244
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mTxPowerStatusRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1247
    :cond_34
    return-void
.end method

.method public onVirtualSimOff(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 450
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 452
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 454
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_27

    .line 455
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 456
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 455
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 458
    :cond_27
    return-void
.end method

.method public onVirtualSimOn(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 439
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 441
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbbd

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 443
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_27

    .line 444
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 445
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 444
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 447
    :cond_27
    return-void
.end method

.method public onVirtualSimStatusChanged(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "simInserted"    # I

    .line 461
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 463
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc39

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 465
    :cond_10
    const/4 v0, 0x0

    if-nez p2, :cond_2a

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_2a

    .line 466
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOff:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    .line 467
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 466
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_43

    .line 468
    :cond_2a
    const/4 v1, 0x1

    if-ne p2, v1, :cond_43

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_43

    .line 469
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mVirtualSimOn:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    .line 470
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 469
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 472
    :cond_43
    :goto_43
    return-void
.end method

.method public onVsimEventIndication(ILvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;)V
    .registers 10
    .param p1, "indicationType"    # I
    .param p2, "event"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;

    .line 1111
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;->dataLength:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc02

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1119
    iget v0, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;->dataLength:I

    if-lez v0, :cond_2f

    iget v0, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;->dataLength:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 1121
    .local v0, "length":I
    :goto_30
    new-instance v1, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;->transactionId:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;->eventId:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkRIL;->mInstanceId:Ljava/lang/Integer;

    .line 1123
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int/2addr v5, v6

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 1124
    .local v1, "indicationEvent":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    if-lez v0, :cond_55

    .line 1125
    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;->dataLength:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1126
    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/VsimOperationEvent;->data:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putBytes([B)I

    .line 1129
    :cond_55
    sget-boolean v3, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1130
    invoke-virtual {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1129
    invoke-virtual {v3, v2, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1132
    :cond_62
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v2, :cond_75

    .line 1133
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mVsimIndicationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1136
    :cond_75
    return-void
.end method

.method public pcoDataAfterAttached(ILvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;)V
    .registers 10
    .param p1, "indicationType"    # I
    .param p2, "pco"    # Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;

    .line 1023
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1025
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/PcoDataAfterAttached;

    iget v2, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;->cid:I

    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;->apnName:Ljava/lang/String;

    iget-object v4, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;->bearerProto:Ljava/lang/String;

    iget v5, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;->pcoId:I

    iget-object v1, p2, Lvendor/mediatek/hardware/mtkradioex/V3_0/PcoDataAttachedInfo;->contents:Ljava/util/ArrayList;

    .line 1029
    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/dataconnection/PcoDataAfterAttached;-><init>(ILjava/lang/String;Ljava/lang/String;I[B)V

    .line 1031
    .local v0, "response":Lcom/mediatek/internal/telephony/dataconnection/PcoDataAfterAttached;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbed

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1033
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPcoDataAfterAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1035
    return-void
.end method

.method public phbReadyNotification(II)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "isPhbReady"    # I

    .line 982
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 984
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 985
    .local v0, "response":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 988
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phbReadyNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbd4

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogMore(ILjava/lang/String;)V

    .line 992
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_36

    .line 993
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mPhbReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 996
    :cond_36
    return-void
.end method

.method public plmnChangedIndication(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 813
    .local p2, "plmns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 816
    .local v1, "response":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 817
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 819
    .end local v2    # "i":I
    :cond_1e
    move-object v0, v1

    .line 821
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 823
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 824
    :try_start_2b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v3

    if-lez v3, :cond_4a

    .line 826
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v4, "ECOPS,notify mPlmnChangeNotificationRegistrant"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 828
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mPlmnChangeNotificationRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_4e

    .line 831
    :cond_4a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mEcopsReturnValue:Ljava/lang/Object;

    .line 833
    :goto_4e
    monitor-exit v2

    .line 834
    return-void

    .line 833
    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_50

    throw v3
.end method

.method public qualifiedNetworkTypesChangedInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1280
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1282
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1283
    .local v0, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1284
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1283
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1288
    .end local v1    # "i":I
    :cond_21
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xc3a

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1292
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mLatestQualifiedNetworkTypes:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1293
    :try_start_2d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mLatestQualifiedNetworkTypes:Landroid/util/SparseArray;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1294
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v2, :cond_4a

    .line 1295
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mQualifiedNetworkTypesRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1298
    :cond_4a
    monitor-exit v1

    .line 1299
    return-void

    .line 1298
    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method public registrationSuspendedIndication(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 842
    .local p2, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 845
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 846
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 845
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 848
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 850
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 852
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mWPMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 853
    :try_start_2f
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mRegistrationSuspendedRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v3, :cond_4a

    .line 855
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v4, "EMSR, notify mRegistrationSuspendedRegistrant"

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 857
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mRegistrationSuspendedRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_4e

    .line 860
    :cond_4a
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v3, Lcom/mediatek/internal/telephony/MtkRIL;->mEmsrReturnValue:Ljava/lang/Object;

    .line 862
    :goto_4e
    monitor-exit v2

    .line 863
    return-void

    .line 862
    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_50

    throw v3
.end method

.method public resetAttachApnInd(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 934
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 937
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xbcc

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 939
    :cond_10
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v0, :cond_23

    .line 940
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mResetAttachApnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 943
    :cond_23
    return-void
.end method

.method public responseCsNetworkStateChangeInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 281
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "[UNSL]< UNSOL_RESPONSE_CS_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_2d

    .line 284
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mCsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 285
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 284
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 287
    :cond_2d
    return-void
.end method

.method public responseFemtocellInfo(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 382
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 386
    .local v1, "response":[Ljava/lang/String;
    move-object v0, v1

    .line 389
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbd5

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 392
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_31

    .line 393
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mFemtoCellInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 395
    :cond_31
    return-void
.end method

.method public responseInvalidSimInd(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 367
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 368
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 369
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc8

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 371
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_2f

    .line 372
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mInvalidSimInfoRegistrant:Lcom/android/internal/telephony/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 374
    :cond_2f
    return-void
.end method

.method public responseLteNetworkInfo(II)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "info"    # I

    .line 416
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UNSL]< RIL_UNSOL_LTE_NETWORK_INFO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public responseModulationInfoInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 353
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 354
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 356
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 358
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbcb

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 360
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mModulationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_41

    .line 361
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mModulationRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 363
    :cond_41
    return-void
.end method

.method public responseNetworkEventInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 314
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 315
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 317
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 319
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbca

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 321
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_41

    .line 322
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mNetworkEventRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 325
    :cond_41
    return-void
.end method

.method public responsePsNetworkStateChangeInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p2, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 293
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "[UNSL]< UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 297
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 298
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 300
    .end local v2    # "i":I
    :cond_29
    move-object v0, v1

    .line 301
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_41

    .line 302
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mPsNetworkStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 305
    :cond_41
    return-void
.end method

.method public smlSlotLockInfoChangedInd(ILjava/util/ArrayList;)V
    .registers 8
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 734
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 736
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    .line 737
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc2b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 741
    :cond_10
    const/4 v0, 0x0

    .line 742
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 743
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 744
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 743
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 746
    .end local v2    # "i":I
    :cond_2d
    move-object v0, v1

    .line 748
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iput-object v0, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfo:Ljava/lang/Object;

    .line 749
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_49

    .line 750
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkRIL;->mSmlSlotLockInfoChanged:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 753
    :cond_49
    return-void
.end method

.method public smsInfoExtInd(ILjava/lang/String;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 564
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v1, 0xc41

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_23

    .line 568
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsInfoExtRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 570
    :cond_23
    return-void
.end method

.method public smsReadyInd(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 547
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 549
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->ENG:Z

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbc4

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLog(I)V

    .line 551
    :cond_10
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_22

    .line 552
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mSmsReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_30

    .line 555
    :cond_22
    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const-string v1, "Cache sms ready event"

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 556
    :cond_2b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkRIL;->mIsSmsReady:Z

    .line 558
    :goto_30
    return-void
.end method

.method public suppSvcNotifyEx(ILandroid/hardware/radio/V1_0/SuppSvcNotification;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "suppSvcNotification"    # Landroid/hardware/radio/V1_0/SuppSvcNotification;

    .line 229
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 231
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;-><init>()V

    .line 232
    .local v0, "notification":Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;
    iget-boolean v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->isMT:Z

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->notificationType:I

    .line 233
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->code:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->code:I

    .line 234
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->index:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->index:I

    .line 235
    iget v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->type:I

    iput v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->type:I

    .line 236
    iget-object v1, p2, Landroid/hardware/radio/V1_0/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppServiceNotification;->number:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v2, 0xbd2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_38

    .line 242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;->mSsnExRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 244
    :cond_38
    return-void
.end method

.method public toeInfoInd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "indicationType"    # I
    .param p2, "longName"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;
    .param p4, "numeric"    # Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 1437
    const/4 v0, 0x0

    .line 1438
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 1439
    .local v1, "response":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1440
    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 1441
    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 1442
    move-object v0, v1

    .line 1445
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xc42

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1447
    return-void
.end method

.method public triggerOtaSP(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 1013
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1014
    .local v0, "testTriggerOtasp":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "AT+CDV=*22899"

    aput-object v2, v0, v1

    .line 1015
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 1016
    const/4 v1, 0x2

    const-string v2, "DESTRILD:C2K"

    aput-object v2, v0, v1

    .line 1017
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1018
    return-void
.end method

.method public worldModeChangedIndication(ILjava/util/ArrayList;)V
    .registers 11
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 893
    .local p2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkRIL;->processIndication(I)V

    .line 894
    const/4 v0, 0x0

    .line 895
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 896
    .local v1, "response":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 897
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 899
    .end local v2    # "i":I
    :cond_22
    move-object v0, v1

    .line 901
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v3, 0xbce

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/internal/telephony/MtkRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 903
    const/4 v2, 0x1

    .line 904
    .local v2, "state":I
    const/4 v3, 0x0

    .line 905
    .local v3, "retvalue":Z
    nop

    .line 906
    move-object v4, v0

    check-cast v4, [I

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 908
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3c

    .line 909
    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->resetSwitchingState(I)Z

    move-result v3

    .line 910
    const/4 v2, 0x1

    goto :goto_48

    .line 911
    :cond_3c
    if-nez v2, :cond_44

    .line 912
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateSwitchingState(Z)Z

    move-result v3

    goto :goto_48

    .line 914
    :cond_44
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateSwitchingState(Z)Z

    move-result v3

    .line 916
    :goto_48
    if-nez v3, :cond_4b

    .line 917
    return-void

    .line 920
    :cond_4b
    new-instance v4, Landroid/content/Intent;

    const-string v5, "mediatek.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 921
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "worldModeState"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 922
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkRIL;->mMtkContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 924
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkRadioExIndication;->mMtkRil:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcast for WorldModeChanged: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->riljLog(Ljava/lang/String;)V

    .line 927
    .end local v4    # "intent":Landroid/content/Intent;
    return-void
.end method
