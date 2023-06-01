.class public final Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
.source "MtkImsPhoneMmiCode.java"


# static fields
.field private static final DIALOG_DISPLAY_TIME:I = 0x3e8

.field static final LOG_TAG:Ljava/lang/String; = "MtkImsPhoneMmiCode"

.field private static final SC_CFNotRegister:Ljava/lang/String; = "68"

.field private static final SENLOG:Z


# instance fields
.field private processTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 117
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->SENLOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 313
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processTime:J

    .line 314
    return-void
.end method

.method private checkIfOPSupportCallerID()Z
    .registers 2

    .line 1318
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1319
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNotSupportCallIdentity()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1320
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleGeneralError()V

    .line 1321
    const/4 v0, 0x0

    return v0

    .line 1323
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "serviceClass"    # I

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1040
    const v2, 0x10407e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1042
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1043
    .local v1, "classMask":I
    :goto_f
    const/16 v2, 0x200

    if-gt v1, v2, :cond_28

    .line 1046
    and-int v2, v1, p1

    if-eqz v2, :cond_25

    .line 1047
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    and-int v2, v1, p1

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1044
    :cond_25
    shl-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1051
    .end local v1    # "classMask":I
    :cond_28
    return-object v0
.end method

.method private handleGeneralError()V
    .registers 4

    .line 1327
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1329
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040564

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1332
    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1333
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkProcessTime()V

    .line 1334
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1335
    return-void
.end method

.method private isFacToDial()Z
    .registers 9

    .line 1344
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1345
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1346
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1347
    .local v1, "b":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    .line 1348
    const-string v3, "feature_access_codes_string_array"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1350
    .local v3, "dialFacList":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1351
    array-length v4, v3

    move v5, v2

    :goto_29
    if-ge v5, v4, :cond_3a

    aget-object v6, v3, v5

    .line 1352
    .local v6, "fac":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 1353
    const/4 v2, 0x1

    return v2

    .line 1351
    .end local v6    # "fac":Ljava/lang/String;
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 1358
    .end local v3    # "dialFacList":[Ljava/lang/String;
    :cond_3a
    return v2
.end method

.method protected static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .registers 2
    .param p0, "sc"    # Ljava/lang/String;

    .line 1241
    if-eqz p0, :cond_3c

    .line 1242
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1243
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1244
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1245
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1246
    const-string v0, "68"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3a
    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    .line 1241
    :goto_3d
    return v0
.end method

.method public static isUtMmiCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .registers 6
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "dialPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 918
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    move-result-object v0

    .line 919
    .local v0, "mmi":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    const/4 v1, 0x0

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_77

    .line 923
    :cond_e
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isShortCode()Z

    move-result v2

    if-nez v2, :cond_76

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v2, :cond_19

    goto :goto_76

    .line 925
    :cond_19
    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_75

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 926
    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 927
    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 928
    const-string v3, "76"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 929
    const-string v3, "77"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 930
    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 931
    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 932
    const-string v3, "43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 933
    const-string v3, "156"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 934
    const-string v3, "157"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 936
    :cond_73
    const/4 v1, 0x1

    return v1

    .line 938
    :cond_75
    return v1

    .line 924
    :cond_76
    :goto_76
    return v1

    .line 920
    :cond_77
    :goto_77
    return v1
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .registers 3
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 142
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    move-result-object v0

    return-object v0
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .registers 10
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p2, "wrappedCallback"    # Landroid/os/ResultReceiver;

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "ret":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newFromDialString, dialstring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneMmiCode"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "#"

    if-nez v1, :cond_35

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 154
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_35

    :cond_33
    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    move v1, v3

    .line 155
    .local v1, "isMmi":Z
    :goto_36
    const/4 v5, 0x2

    if-nez v1, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_46

    .line 156
    const-string v3, "Not belong to MMI format."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v2, 0x0

    return-object v2

    .line 161
    :cond_46
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 162
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 166
    invoke-static {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 169
    :cond_62
    sget-object v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 172
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_f2

    .line 174
    new-instance v6, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v6, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    move-object v0, v6

    .line 176
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 177
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mAction:Ljava/lang/String;

    .line 178
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 179
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 180
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    .line 181
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSic:Ljava/lang/String;

    .line 182
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    .line 183
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 184
    iput-object p2, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    .line 190
    iget-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v3, :cond_ea

    iget-object v3, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 192
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 194
    new-instance v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v3, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    move-object v0, v3

    .line 196
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_11f

    .line 199
    :cond_ea
    invoke-direct {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isFacToDial()Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 201
    const/4 v0, 0x0

    goto :goto_11f

    .line 204
    :cond_f2
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 210
    new-instance v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v3, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    move-object v0, v3

    .line 212
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_11f

    .line 213
    :cond_101
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v4

    invoke-static {v3, v4, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 216
    const/4 v0, 0x0

    goto :goto_11f

    .line 217
    :cond_111
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 220
    new-instance v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v3, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    move-object v0, v3

    .line 222
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 225
    :cond_11f
    :goto_11f
    return-object v0
.end method

.method public static newFromUssdUserInput(Ljava/lang/String;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .registers 4
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 267
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 269
    .local v0, "ret":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 270
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 271
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 273
    return-object v0
.end method

.method public static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .registers 5
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 232
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v0, p2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 234
    .local v0, "ret":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 235
    iput-boolean p1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsNetworkInitiatedUSSD:Z

    .line 239
    if-eqz p1, :cond_15

    .line 240
    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 241
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_19

    .line 243
    :cond_15
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 246
    :goto_19
    return-object v0
.end method

.method public static newNetworkInitiatedUssdError(Ljava/lang/String;Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;)Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    .registers 5
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    .line 253
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 254
    .local v0, "ret":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 255
    iput-object p0, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1b

    .line 257
    :cond_10
    iget-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040564

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 259
    :goto_1b
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 260
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 262
    return-object v0
.end method

.method private removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 1232
    const-string v0, ""

    .line 1233
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, "reverse":Ljava/lang/String;
    const-string v2, "\\)[0-9]{5}\\("

    .line 1235
    .local v2, "pattern":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    return-object v0
.end method

.method protected static scToCallForwardReason(Ljava/lang/String;)I
    .registers 3
    .param p0, "sc"    # Ljava/lang/String;

    .line 1251
    const-string v0, "invalid call forward sc"

    if-eqz p0, :cond_50

    .line 1255
    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1256
    const/4 v0, 0x4

    return v0

    .line 1257
    :cond_e
    const-string v1, "21"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1258
    const/4 v0, 0x0

    return v0

    .line 1259
    :cond_18
    const-string v1, "67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1260
    const/4 v0, 0x1

    return v0

    .line 1261
    :cond_22
    const-string v1, "62"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1262
    const/4 v0, 0x3

    return v0

    .line 1263
    :cond_2c
    const-string v1, "61"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1264
    const/4 v0, 0x2

    return v0

    .line 1265
    :cond_36
    const-string v1, "004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1266
    const/4 v0, 0x5

    return v0

    .line 1267
    :cond_40
    const-string v1, "68"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1268
    const/4 v0, 0x6

    return v0

    .line 1270
    :cond_4a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1252
    :cond_50
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .registers 5
    .param p0, "si"    # Ljava/lang/String;

    .line 278
    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4d

    .line 282
    :cond_9
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 284
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_50

    .line 305
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :sswitch_29
    const/16 v1, 0x40

    return v1

    .line 301
    :sswitch_2c
    const/16 v1, 0x11

    return v1

    .line 300
    :sswitch_2f
    const/16 v1, 0x20

    return v1

    .line 299
    :sswitch_32
    const/16 v1, 0x210

    return v1

    .line 297
    :sswitch_35
    const/16 v1, 0x50

    return v1

    .line 296
    :sswitch_38
    const/16 v1, 0xa0

    return v1

    .line 294
    :sswitch_3b
    const/16 v1, 0x30

    return v1

    .line 292
    :sswitch_3e
    const/4 v1, 0x5

    return v1

    .line 290
    :sswitch_40
    const/16 v1, 0x8

    return v1

    .line 288
    :sswitch_43
    const/4 v1, 0x4

    return v1

    .line 287
    :sswitch_45
    const/16 v1, 0xc

    return v1

    .line 286
    :sswitch_48
    const/4 v1, 0x1

    return v1

    .line 285
    :sswitch_4a
    const/16 v1, 0xd

    return v1

    .line 279
    .end local v0    # "serviceCode":I
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_50
    .sparse-switch
        0xa -> :sswitch_4a
        0xb -> :sswitch_48
        0xc -> :sswitch_45
        0xd -> :sswitch_43
        0x10 -> :sswitch_40
        0x13 -> :sswitch_3e
        0x14 -> :sswitch_3b
        0x15 -> :sswitch_38
        0x16 -> :sswitch_35
        0x18 -> :sswitch_32
        0x19 -> :sswitch_2f
        0x1a -> :sswitch_2c
        0x63 -> :sswitch_29
    .end sparse-switch
.end method

.method private supportMdAutoSetupIms()Z
    .registers 4

    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 945
    const/4 v0, 0x1

    .line 947
    :cond_10
    return v0
.end method

.method private triggerMmiCodeCsfb(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1276
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1277
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isNotSupportUtToCS()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1279
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1280
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_8a

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8a

    .line 1281
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    const v2, 0xf007

    const v3, 0xf006

    const/4 v4, 0x1

    const-string v5, "MtkImsPhoneMmiCode"

    if-eqz v1, :cond_5a

    .line 1282
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1283
    .local v1, "cmdException":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_44

    .line 1285
    const-string v2, "handleMessage(): CommandException.Error.UT_XCAP_403_FORBIDDEN"

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v2, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V

    .line 1289
    return v4

    .line 1290
    :cond_44
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v6, :cond_59

    .line 1292
    const-string v3, "handleMessage(): CommandException.Error.UT_UNKNOWN_HOST"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v3, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V

    .line 1295
    return v4

    .line 1290
    .end local v1    # "cmdException":Lcom/android/internal/telephony/CommandException;
    :cond_59
    goto :goto_8a

    .line 1297
    :cond_5a
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_8a

    .line 1298
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1299
    .local v1, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v6

    if-ne v6, v3, :cond_77

    .line 1300
    const-string v2, "handleMessage(): ImsReasonInfo.CODE_UT_XCAP_403_FORBIDDEN"

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v2, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v2, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V

    .line 1304
    return v4

    .line 1305
    :cond_77
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_8a

    .line 1306
    const-string v3, "handleMessage(): ImsReasonInfo.CODE_UT_UNKNOWN_HOST"

    invoke-static {v5, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v3, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->handleMmiCodeCsfb(ILcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;)V

    .line 1309
    return v4

    .line 1314
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "imsException":Lcom/android/ims/ImsException;
    :cond_8a
    :goto_8a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method checkProcessTime()V
    .registers 7

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 445
    .local v0, "now":J
    iget-wide v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    .line 447
    :try_start_e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    .line 450
    goto :goto_13

    .line 448
    :catch_12
    move-exception v2

    .line 452
    :cond_13
    :goto_13
    return-void
.end method

.method protected getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1215
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_39

    .line 1216
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1217
    .local v0, "err":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1218
    .local v1, "errorMsg":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_39

    .line 1219
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1222
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getErrorMessage, errorMsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkImsPhoneMmiCode"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-object v1

    .line 1228
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_39
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getImsErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1198
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1200
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    .local v2, "errorMessage":Ljava/lang/CharSequence;
    if-eqz v1, :cond_c

    .line 1201
    return-object v2

    .line 1202
    :cond_c
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 1205
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImsErrorMessage, errorMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkImsPhoneMmiCode"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    return-object v1

    .line 1209
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_31
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method protected getMmiErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1134
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/ims/ImsException;

    const v1, 0x104084b

    const v2, 0x104084c

    const v3, 0x104084d

    const v4, 0x104084a

    const v5, 0x1040566

    const v6, 0x1040564

    const-string v7, "MtkImsPhoneMmiCode"

    if-eqz v0, :cond_9b

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMmiErrorMessage, ims error code = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/ims/ImsException;

    .line 1136
    invoke-virtual {v8}, Lcom/android/ims/ImsException;->getCode()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    invoke-static {v7, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_164

    .line 1161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1149
    :sswitch_48
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1150
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1151
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_71

    .line 1154
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ims errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return-object v1

    .line 1158
    :cond_71
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 1147
    .end local v0    # "error":Lcom/android/ims/ImsException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :sswitch_78
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1145
    :sswitch_7f
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1143
    :sswitch_86
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1141
    :sswitch_8d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1139
    :sswitch_94
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1163
    :cond_9b
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_15c

    .line 1164
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1165
    .local v0, "err":Lcom/android/internal/telephony/CommandException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMmiErrorMessage, error code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_cc

    .line 1167
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1168
    :cond_cc
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v8, :cond_db

    .line 1169
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1170
    :cond_db
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_ea

    .line 1171
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1172
    :cond_ea
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_f9

    .line 1173
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1174
    :cond_f9
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL_VIDEO:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_108

    .line 1175
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1176
    :cond_108
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_130

    .line 1177
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_130

    .line 1178
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_130

    .line 1179
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v2, :cond_130

    .line 1180
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_15c

    .line 1181
    :cond_130
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1182
    .restart local v1    # "errorMsg":Ljava/lang/String;
    if-eqz v1, :cond_155

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_155

    .line 1185
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->removeLastErrorCode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    return-object v1

    .line 1189
    :cond_155
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 1193
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException;
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_15c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_164
    .sparse-switch
        0xf1 -> :sswitch_94
        0x336 -> :sswitch_8d
        0x337 -> :sswitch_86
        0x338 -> :sswitch_7f
        0x339 -> :sswitch_78
        0xf009 -> :sswitch_48
    .end sparse-switch
.end method

.method handleCLIP()V
    .registers 5

    .line 611
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CLIP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkIfOPSupportCallerID()Z

    move-result v1

    if-nez v1, :cond_e

    .line 614
    return-void

    .line 616
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 618
    :try_start_14
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->queryCLIP(Landroid/os/Message;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_25

    .line 619
    :catch_1f
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Could not get UT handle for queryCLIP."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_25
    goto :goto_57

    .line 622
    :cond_26
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_3b

    .line 630
    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    const/4 v3, 0x0

    .line 625
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 624
    invoke-interface {v1, v2, v3}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_4f
    .catch Lcom/android/ims/ImsException; {:try_start_3b .. :try_end_4f} :catch_50

    goto :goto_56

    .line 626
    :catch_50
    move-exception v1

    .line 627
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for updateCLIP."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_56
    nop

    .line 632
    :goto_57
    return-void
.end method

.method handleCLIR()V
    .registers 7

    .line 542
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CLIR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkIfOPSupportCallerID()Z

    move-result v1

    if-nez v1, :cond_e

    .line 547
    return-void

    .line 549
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v1

    const-string v2, "Could not get UT handle for updateCLIR."

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 550
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isClirActivationAndDeactivationPrevented()Z

    move-result v1

    if-nez v1, :cond_56

    .line 551
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 552
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 553
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 555
    invoke-virtual {p0, v4, v3, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 553
    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 557
    return-void

    .line 561
    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 562
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 561
    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_50

    goto :goto_54

    .line 563
    :catch_50
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_54
    goto/16 :goto_f2

    .line 566
    :cond_56
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 567
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isClirActivationAndDeactivationPrevented()Z

    move-result v1

    if-nez v1, :cond_9a

    .line 568
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_8b

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 569
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 570
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 572
    invoke-virtual {p0, v4, v3, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 570
    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 574
    return-void

    .line 578
    :cond_8b
    :try_start_8b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 579
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 578
    invoke-virtual {v1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_94} :catch_95

    goto :goto_99

    .line 580
    :catch_95
    move-exception v1

    .line 581
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_99
    goto :goto_f2

    .line 583
    :cond_9a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 584
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_e1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 585
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 586
    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 587
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_e0

    .line 588
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 589
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSavedClirSetting()[I

    move-result-object v1

    .line 590
    .local v1, "result":[I
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    const/4 v5, -0x1

    invoke-direct {v2, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    aget v4, v1, v4

    .line 591
    invoke-virtual {v2, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v2

    aget v3, v1, v3

    .line 592
    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 593
    .local v2, "info":Landroid/telephony/ims/ImsSsInfo;
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 594
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 596
    .end local v1    # "result":[I
    .end local v2    # "info":Landroid/telephony/ims/ImsSsInfo;
    :cond_e0
    return-void

    .line 600
    .end local v0    # "msg":Landroid/os/Message;
    :cond_e1
    :try_start_e1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ea} :catch_eb

    goto :goto_f1

    .line 601
    :catch_eb
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Could not get UT handle for queryCLIR."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_f1
    nop

    .line 607
    :goto_f2
    return-void

    .line 605
    :cond_f3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCOLP()V
    .registers 5

    .line 636
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is COLP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkIfOPSupportCallerID()Z

    move-result v1

    if-nez v1, :cond_e

    .line 639
    return-void

    .line 641
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 643
    :try_start_14
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    const/4 v2, 0x7

    .line 644
    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_24
    .catch Lcom/android/ims/ImsException; {:try_start_14 .. :try_end_24} :catch_25

    goto :goto_2b

    .line 645
    :catch_25
    move-exception v1

    .line 646
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for queryCOLP."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_2b
    goto :goto_5d

    .line 648
    :cond_2c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_41

    .line 656
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_41
    :goto_41
    :try_start_41
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    const/4 v3, 0x0

    .line 651
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 650
    invoke-interface {v1, v2, v3}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_55
    .catch Lcom/android/ims/ImsException; {:try_start_41 .. :try_end_55} :catch_56

    goto :goto_5c

    .line 652
    :catch_56
    move-exception v1

    .line 653
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for updateCOLP."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_5c
    nop

    .line 658
    :goto_5d
    return-void
.end method

.method handleCOLR()V
    .registers 6

    .line 662
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is COLR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkIfOPSupportCallerID()Z

    move-result v1

    if-nez v1, :cond_e

    .line 665
    return-void

    .line 667
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v1

    const-string v2, "Could not get UT handle for updateCOLR."

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    .line 669
    :try_start_17
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    const/4 v4, 0x1

    .line 670
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 669
    invoke-interface {v1, v4, v3}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_27
    .catch Lcom/android/ims/ImsException; {:try_start_17 .. :try_end_27} :catch_28

    goto :goto_2c

    .line 671
    :catch_28
    move-exception v1

    .line 672
    .local v1, "e":Lcom/android/ims/ImsException;
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_2c
    goto :goto_66

    .line 674
    :cond_2d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 676
    :try_start_33
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 677
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 676
    invoke-interface {v1, v3, v4}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_42
    .catch Lcom/android/ims/ImsException; {:try_start_33 .. :try_end_42} :catch_43

    goto :goto_47

    .line 678
    :catch_43
    move-exception v1

    .line 679
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_47
    goto :goto_66

    .line 681
    :cond_48
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 683
    :try_start_4e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    const/4 v2, 0x7

    .line 684
    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_5e
    .catch Lcom/android/ims/ImsException; {:try_start_4e .. :try_end_5e} :catch_5f

    goto :goto_65

    .line 685
    :catch_5f
    move-exception v1

    .line 686
    .restart local v1    # "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for queryCOLR."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_65
    nop

    .line 691
    :goto_66
    return-void

    .line 689
    :cond_67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCW()V
    .registers 11

    .line 743
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CW"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v1

    .line 747
    .local v1, "serviceClass":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v2

    const-string v3, "Invalid or Unsupported MMI Code"

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v2, :cond_4a

    .line 749
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_3b

    .line 752
    :cond_24
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 753
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_19c

    .line 755
    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    .line 751
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 750
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_19c

    .line 759
    :cond_4a
    const/4 v2, 0x0

    .line 760
    .local v2, "tbcwMode":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v2

    .line 761
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v6

    const-string v7, "persist.vendor.radio.terminal-based.cw"

    const-string v8, "disabled_tbcw"

    if-nez v6, :cond_10d

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v6

    if-eqz v6, :cond_67

    goto/16 :goto_10d

    .line 788
    :cond_67
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v6

    if-eqz v6, :cond_107

    .line 789
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v2

    .line 790
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v3

    const-string v6, "getCallWaiting() by Ut interface."

    if-eqz v3, :cond_93

    .line 791
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_19c

    .line 793
    :cond_93
    if-ne v2, v4, :cond_a6

    .line 794
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 795
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 794
    invoke-interface {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_19c

    .line 798
    :cond_a6
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 799
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 798
    invoke-static {v3, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 802
    .local v3, "tbcwStatus":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SC_WAIT isInterrogate() tbcwStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v7, "enabled_tbcw_on"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v7, :cond_e2

    .line 804
    new-array v0, v8, [I

    .line 805
    .local v0, "cwInfos":[I
    const/4 v6, 0x1

    aput v6, v0, v5

    .line 806
    aput v6, v0, v6

    .line 808
    invoke-virtual {p0, v4, v9}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 809
    .local v4, "msg":Landroid/os/Message;
    invoke-static {v4, v0, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 810
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->sendMessage(Landroid/os/Message;)Z

    .line 811
    .end local v0    # "cwInfos":[I
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_105

    :cond_e2
    const-string v7, "enabled_tbcw_off"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 812
    new-array v0, v8, [I

    .line 813
    .restart local v0    # "cwInfos":[I
    aput v5, v0, v5

    .line 815
    invoke-virtual {p0, v4, v9}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 816
    .restart local v4    # "msg":Landroid/os/Message;
    invoke-static {v4, v0, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 817
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->sendMessage(Landroid/os/Message;)Z

    .line 818
    .end local v0    # "cwInfos":[I
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_105

    .line 819
    :cond_f9
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 822
    .end local v3    # "tbcwStatus":Ljava/lang/String;
    :goto_105
    goto/16 :goto_19c

    .line 824
    :cond_107
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_10d
    :goto_10d
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v3

    const-string v6, "setCallWaiting() by Ut interface."

    if-eqz v3, :cond_12c

    .line 764
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v3

    .line 766
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 765
    invoke-virtual {v0, v3, v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_19c

    .line 767
    :cond_12c
    if-ne v2, v4, :cond_147

    .line 768
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 769
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v3

    .line 770
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v4

    const/4 v6, -0x1

    .line 769
    invoke-virtual {p0, v5, v4, v6, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 768
    invoke-interface {v0, v3, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_19c

    .line 773
    :cond_147
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 774
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 773
    invoke-static {v3, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 777
    .restart local v3    # "tbcwStatus":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTerminal-based CallWaiting(): tbcwStatus = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", enable = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 777
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18b

    .line 780
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 781
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v4

    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 780
    invoke-virtual {v0, v4, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto :goto_19b

    .line 783
    :cond_18b
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v4

    .line 785
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 784
    invoke-virtual {v0, v4, v1, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    .line 787
    .end local v3    # "tbcwStatus":Ljava/lang/String;
    :goto_19b
    nop

    .line 827
    .end local v2    # "tbcwMode":I
    :goto_19c
    return-void
.end method

.method handleCallBarring()V
    .registers 10

    .line 520
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CB"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 526
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "facility":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v8

    .line 529
    .local v8, "serviceClass":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 530
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v3, 0x7

    .line 531
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 530
    invoke-virtual {v2, v1, v3, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;I)V

    goto :goto_4c

    .line 532
    :cond_26
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_3b

    .line 536
    :cond_33
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid or Unsupported MMI Code"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v4

    const/4 v3, 0x0

    .line 534
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 533
    move-object v3, v1

    move-object v5, v0

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V

    .line 538
    :goto_4c
    return-void
.end method

.method handleCallBarringACR()V
    .registers 12

    .line 711
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CB (ACR/AR)"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v1, 0x0

    .line 713
    .local v1, "callAction":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 714
    .local v9, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v10

    .line 718
    .local v10, "serviceClass":I
    :try_start_10
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 719
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0xa

    .line 721
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 719
    invoke-interface {v2, v3, v4}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V

    goto :goto_4a

    .line 723
    :cond_29
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 724
    const/4 v1, 0x1

    goto :goto_35

    .line 725
    :cond_31
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    .line 726
    const/4 v1, 0x0

    .line 728
    :goto_35
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 731
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x0

    .line 728
    move v4, v1

    move v7, v10

    move-object v8, v9

    invoke-interface/range {v2 .. v8}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4a
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_4a} :catch_4b

    .line 738
    :goto_4a
    goto :goto_51

    .line 736
    :catch_4b
    move-exception v2

    .line 737
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v3, "Could not get UT handle for ICBa."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_51
    return-void
.end method

.method handleCallBarringSpecificMT()V
    .registers 5

    .line 695
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CB (specifc MT)"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :try_start_7
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 698
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 699
    const/16 v2, 0xa

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 698
    invoke-interface {v1, v2, v3}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V

    goto :goto_22

    .line 701
    :cond_1f
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processIcbMmiCodeForUpdate()V
    :try_end_22
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_22} :catch_23

    .line 706
    :goto_22
    goto :goto_29

    .line 704
    :catch_23
    move-exception v1

    .line 705
    .local v1, "e":Lcom/android/ims/ImsException;
    const-string v2, "Could not get UT handle for ICB."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_29
    return-void
.end method

.method handleCallForward()V
    .registers 16

    .line 456
    const-string v0, "MtkImsPhoneMmiCode"

    const-string v1, "processCode: is CF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 459
    .local v1, "dialingNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v9

    .line 460
    .local v9, "reason":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v10

    .line 461
    .local v10, "serviceClass":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v11

    .line 463
    .local v11, "time":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isInterrogate()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    .line 464
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 465
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 464
    invoke-virtual {v0, v9, v10, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    goto/16 :goto_a4

    .line 469
    :cond_2d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isActivate()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_44

    .line 474
    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 475
    const/4 v2, 0x1

    .line 476
    .local v2, "cfAction":I
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsCallFwdReg:Z

    move v12, v2

    goto :goto_5e

    .line 478
    .end local v2    # "cfAction":I
    :cond_3f
    const/4 v2, 0x3

    .line 479
    .restart local v2    # "cfAction":I
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIsCallFwdReg:Z

    move v12, v2

    goto :goto_5e

    .line 481
    .end local v2    # "cfAction":I
    :cond_44
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 482
    const/4 v2, 0x0

    move v12, v2

    .restart local v2    # "cfAction":I
    goto :goto_5e

    .line 483
    .end local v2    # "cfAction":I
    :cond_4d
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 484
    const/4 v2, 0x3

    move v12, v2

    .restart local v2    # "cfAction":I
    goto :goto_5e

    .line 485
    .end local v2    # "cfAction":I
    :cond_56
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isErasure()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 486
    const/4 v2, 0x4

    move v12, v2

    .line 493
    .local v12, "cfAction":I
    :goto_5e
    const/4 v2, 0x4

    if-eqz v9, :cond_63

    if-ne v9, v2, :cond_6a

    :cond_63
    and-int/lit8 v5, v10, 0x1

    if-nez v5, :cond_6c

    if-nez v10, :cond_6a

    goto :goto_6c

    .line 495
    :cond_6a
    move v5, v4

    goto :goto_6d

    :cond_6c
    :goto_6c
    move v5, v3

    :goto_6d
    move v13, v5

    .line 498
    .local v13, "isSettingUnconditional":I
    if-eq v12, v3, :cond_76

    const/4 v5, 0x3

    if-ne v12, v5, :cond_74

    goto :goto_76

    .line 499
    :cond_74
    move v3, v4

    goto :goto_77

    :cond_76
    :goto_76
    nop

    :goto_77
    move v14, v3

    .line 501
    .local v14, "isEnableDesired":I
    const-string v3, "handleCallForward: is CF setCallForward"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpReregisterForCF()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 505
    const-string v3, "Set ims dereg to ON."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v0, "vendor.gsm.radio.ss.imsdereg"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_95
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 511
    invoke-virtual {p0, v2, v13, v14, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 510
    move-object v2, v0

    move v3, v12

    move v4, v9

    move-object v5, v1

    move v6, v10

    move v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 516
    .end local v12    # "cfAction":I
    .end local v13    # "isSettingUnconditional":I
    .end local v14    # "isEnableDesired":I
    :goto_a4
    return-void

    .line 488
    :cond_a5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "invalid action"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 835
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->triggerMmiCodeCsfb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 836
    return-void

    .line 839
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_10e

    .line 911
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_10d

    .line 859
    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 866
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_d2

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_d2

    .line 867
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_25

    move v2, v3

    .line 868
    .local v2, "cffEnabled":Z
    :cond_25
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->queryCFUAgainAfterSet()Z

    move-result v4

    const-string v5, "MtkImsPhoneMmiCode"

    if-eqz v4, :cond_94

    .line 869
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_8f

    .line 870
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 871
    .local v4, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v4, :cond_89

    array-length v6, v4

    if-nez v6, :cond_41

    goto :goto_89

    .line 874
    :cond_41
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_42
    array-length v7, v4

    if-ge v6, v7, :cond_8e

    .line 875
    aget-object v7, v4, v6

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_86

    .line 877
    aget-object v7, v4, v6

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v3, :cond_6c

    .line 878
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set CF_ENABLE, serviceClass: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v6

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v2, 0x1

    goto :goto_8e

    .line 882
    :cond_6c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set CF_DISABLE, serviceClass: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v6

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v2, 0x0

    .line 886
    goto :goto_8e

    .line 874
    :cond_86
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 872
    .end local v6    # "i":I
    :cond_89
    :goto_89
    const-string v6, "cfInfo is null or length is 0."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v4    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_8e
    :goto_8e
    goto :goto_94

    .line 891
    :cond_8f
    const-string v4, "ar.result is null."

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_94
    :goto_94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SET_CFF_COMPLETE: cffEnabled:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mDialingNumber="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mIccRecords="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_d2

    .line 898
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v4, v3, v2, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 901
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v3, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v3, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->saveTimeSlot([J)V

    .line 906
    .end local v2    # "cffEnabled":Z
    :cond_d2
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 907
    goto :goto_10d

    .line 841
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_d6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 843
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v4

    if-nez v4, :cond_109

    .line 844
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v5, "43"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_109

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 845
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_109

    .line 847
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_109

    .line 848
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_100

    move v2, v3

    .line 849
    .local v2, "enable":Z
    :cond_100
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3, v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 855
    .end local v2    # "enable":Z
    :cond_109
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 856
    nop

    .line 914
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_10d
    return-void

    :sswitch_data_10e
    .sparse-switch
        0x0 -> :sswitch_d6
        0x4 -> :sswitch_14
    .end sparse-switch
.end method

.method public isSupportedOverImsPhone()Z
    .registers 7

    .line 319
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isShortCode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 320
    :cond_8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    return v2

    .line 321
    :cond_e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "300"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v2

    .line 322
    :cond_1d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 323
    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 324
    const-string v3, "43"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    :cond_3b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "31"

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    :cond_49
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "30"

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    :cond_57
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 327
    const-string v5, "77"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    :cond_65
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 328
    const-string v5, "76"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    :cond_73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 329
    const-string v5, "156"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    :cond_81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 330
    const-string v5, "157"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_bc

    .line 366
    :cond_90
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isPinPukCommand()Z

    move-result v0

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 368
    const-string v5, "03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    goto :goto_bb

    .line 370
    :cond_b5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_ba

    return v1

    .line 372
    :cond_ba
    return v2

    .line 369
    :cond_bb
    :goto_bb
    return v2

    .line 331
    :cond_bc
    :goto_bc
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    const-string v3, "isSupportedOverImsPhone(), return true!"

    const-string v4, "MtkImsPhoneMmiCode"

    if-eqz v0, :cond_f2

    .line 333
    :try_start_c6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, "serviceClass":I
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_d8

    and-int/lit16 v5, v0, 0x200

    if-nez v5, :cond_d8

    if-nez v0, :cond_d7

    goto :goto_d8

    .line 341
    :cond_d7
    return v2

    .line 337
    :cond_d8
    :goto_d8
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_db} :catch_dc

    .line 338
    return v1

    .line 342
    .end local v0    # "serviceClass":I
    :catch_dc
    move-exception v0

    .line 343
    .local v0, "exc":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid service class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    goto :goto_13d

    .line 347
    :cond_f2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v0

    if-nez v0, :cond_10e

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 348
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 349
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isWFCUtSupport()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 351
    :cond_10e
    :try_start_10e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 353
    .local v0, "serviceClass":I
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_120

    and-int/lit16 v5, v0, 0x200

    if-nez v5, :cond_120

    if-nez v0, :cond_11f

    goto :goto_120

    .line 362
    .end local v0    # "serviceClass":I
    :cond_11f
    goto :goto_13d

    .line 356
    .restart local v0    # "serviceClass":I
    :cond_120
    :goto_120
    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/lang/RuntimeException; {:try_start_10e .. :try_end_123} :catch_124

    .line 357
    return v1

    .line 360
    .end local v0    # "serviceClass":I
    :catch_124
    move-exception v0

    .line 361
    .local v0, "exc":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exc.toString() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :cond_13d
    :goto_13d
    return v2
.end method

.method protected makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .line 1076
    const-string v0, "{0}"

    const-string v1, "{1}"

    const-string v2, "{2}"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "sources":[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 1084
    .local v1, "destinations":[Ljava/lang/CharSequence;
    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1a

    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    if-lez v2, :cond_1a

    move v2, v5

    goto :goto_1b

    :cond_1a
    move v2, v4

    .line 1087
    .local v2, "needTimeTemplate":Z
    :goto_1b
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v5, :cond_35

    .line 1088
    if-eqz v2, :cond_2b

    .line 1089
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "template":Ljava/lang/CharSequence;
    goto :goto_60

    .line 1092
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_2b
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401d7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_60

    .line 1095
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_35
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v6, :cond_4b

    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1096
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_60

    .line 1102
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_4b
    if-eqz v2, :cond_57

    .line 1103
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_60

    .line 1106
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_57
    iget-object v6, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401da

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1116
    .restart local v6    # "template":Ljava/lang/CharSequence;
    :goto_60
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v4

    .line 1117
    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 1118
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .line 1120
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v3, :cond_95

    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v3, p2

    if-ne v3, v5, :cond_95

    .line 1123
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v5, :cond_89

    move v4, v5

    :cond_89
    move v3, v4

    .line 1124
    .local v3, "cffEnabled":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_95

    .line 1125
    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1129
    .end local v3    # "cffEnabled":Z
    :cond_95
    invoke-static {v6, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method protected onQueryCfComplete(Landroid/os/AsyncResult;)V
    .registers 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 953
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16

    .line 956
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    .line 957
    return-void

    .line 961
    :cond_16
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 963
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v2, :cond_50

    array-length v3, v2

    if-nez v3, :cond_20

    goto :goto_50

    .line 973
    :cond_20
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 981
    .local v3, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x1

    .line 982
    .local v4, "serviceClassMask":I
    :goto_26
    const/16 v5, 0x200

    if-gt v4, v5, :cond_4c

    .line 984
    const/16 v5, 0x100

    if-ne v4, v5, :cond_2f

    goto :goto_49

    .line 986
    :cond_2f
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v2

    .local v6, "s":I
    :goto_31
    if-ge v5, v6, :cond_49

    .line 987
    aget-object v7, v2, v5

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_46

    .line 988
    aget-object v7, v2, v5

    invoke-virtual {p0, v7, v4}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 990
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 986
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 983
    .end local v5    # "i":I
    .end local v6    # "s":I
    :cond_49
    :goto_49
    shl-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 994
    .end local v4    # "serviceClassMask":I
    :cond_4c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 965
    .end local v3    # "tb":Landroid/text/SpannableStringBuilder;
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10407e2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 968
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_68

    .line 969
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 997
    :cond_68
    :goto_68
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1000
    .end local v2    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryCfComplete: mmi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkImsPhoneMmiCode"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkProcessTime()V

    .line 1003
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1005
    return-void
.end method

.method protected onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V
    .registers 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1012
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_69

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_69

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1015
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    const-string v1, "MtkImsPhoneMmiCode"

    const-string v2, "onSuppSvcQueryComplete: Received Call Barring Response."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1020
    .local v2, "cbInfos":[I
    const/4 v3, 0x0

    aget v4, v2, v3

    if-nez v4, :cond_3d

    .line 1021
    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x10407e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 1024
    :cond_3d
    aget v3, v2, v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1027
    :goto_46
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1028
    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1029
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuppSvcQueryComplete mmi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkProcessTime()V

    .line 1031
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1032
    return-void

    .line 1034
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "cbInfos":[I
    :cond_69
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    .line 1035
    return-void
.end method

.method public processCode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 381
    const-string v0, "MtkImsPhoneMmiCode"

    :try_start_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->supportMdAutoSetupIms()Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_6} :catch_15d

    const-string v2, "cs_fallback"

    if-nez v1, :cond_29

    :try_start_a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 382
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_29

    .line 384
    :cond_17
    const-string v1, "processCode(): getCsFallbackStatus(): CS Fallback!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v1, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;->removeMmi(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 386
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    throw v1

    .line 390
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    :cond_29
    :goto_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->processTime:J

    .line 392
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isShortCode()Z

    move-result v1
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_33} :catch_15d

    const-string v3, "\' over CS pipe."

    if-nez v1, :cond_139

    .line 399
    :try_start_37
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 400
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCallForward()V

    goto/16 :goto_10d

    .line 401
    :cond_44
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 402
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCallBarring()V

    goto/16 :goto_10d

    .line 403
    :cond_51
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 404
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCLIR()V

    goto/16 :goto_10d

    .line 405
    :cond_64
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "30"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 406
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCLIP()V

    goto/16 :goto_10d

    .line 407
    :cond_77
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "76"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 408
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCOLP()V

    goto/16 :goto_10d

    .line 409
    :cond_8a
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "77"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 410
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCOLR()V

    goto/16 :goto_10d

    .line 411
    :cond_9d
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "156"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 412
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCallBarringSpecificMT()V

    goto :goto_10d

    .line 413
    :cond_af
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "157"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 414
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCallBarringACR()V

    goto :goto_10d

    .line 415
    :cond_c1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_d3

    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 416
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->handleCW()V

    goto :goto_10d

    .line 417
    :cond_d3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_131

    .line 420
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_10e

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCode: CS is out of service, sending ussd string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 427
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' over IMS pipe."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 440
    :goto_10d
    goto :goto_17d

    .line 422
    :cond_10e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCode: Sending ussd string \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 423
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    throw v1

    .line 431
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    :cond_131
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid or Unsupported MMI Code"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    throw v1

    .line 393
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    :cond_139
    const-string v1, "processCode: isShortCode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCode: Sending short code \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    throw v1
    :try_end_15d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_15d} :catch_15d

    .line 433
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;
    :catch_15d
    move-exception v1

    .line 434
    .local v1, "exc":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 435
    const-string v2, "procesCode: mState = FAILED"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 437
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040564

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 438
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->checkProcessTime()V

    .line 439
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 441
    .end local v1    # "exc":Ljava/lang/RuntimeException;
    :goto_17d
    return-void
.end method

.method protected serviceClassToCFString(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "serviceClass"    # I

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceClassToCFString, serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsPhoneMmiCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    sparse-switch p1, :sswitch_data_28

    .line 1067
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1065
    :sswitch_1e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x8050044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :sswitch_data_28
    .sparse-switch
        0x100 -> :sswitch_1e
        0x200 -> :sswitch_1e
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MtkImsPhoneMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    :cond_39
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_53

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    :cond_53
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    if-eqz v1, :cond_71

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    :cond_71
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_8f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    :cond_8f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_ad

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_ad
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    const-string v2, "MtkImsPhoneMmiCode"

    if-eqz v1, :cond_cd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " poundString="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    :cond_cd
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_eb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dialingNumber="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 1373
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    :cond_eb
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_109

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pwd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    :cond_109
    iget-object v1, p0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_112

    const-string v1, " hasReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    :cond_112
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
