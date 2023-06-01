.class public final Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
.super Lcom/android/internal/telephony/gsm/GsmMmiCode;
.source "MtkGsmMmiCode.java"


# static fields
.field static final CNAPMmi:Ljava/lang/String; = "Calling Name Presentation"

.field static final EVENT_GET_COLP_COMPLETE:I = 0x9

.field static final EVENT_GET_COLR_COMPLETE:I = 0x8

.field static final LOG_TAG:Ljava/lang/String; = "MtkGsmMmiCode"

.field static final SC_CNAP:Ljava/lang/String; = "300"

.field static final SC_COLP:Ljava/lang/String; = "76"

.field static final SC_COLR:Ljava/lang/String; = "77"

.field private static final SENLOG:Z


# instance fields
.field private mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

.field mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 81
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->SENLOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .registers 4
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 241
    iput-object p1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 243
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getMtkSSRequestDecisionMaker()Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 244
    return-void
.end method

.method private createQueryCnapResultMessage(II)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "status"    # I
    .param p2, "serviceProvisioned"    # I

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createQueryCnapResultMessage, status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", provisioned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmMmiCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1134
    .local v0, "sb":Ljava/lang/StringBuilder;
    const v2, 0x10407e6

    packed-switch p2, :pswitch_data_72

    .line 1149
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 1140
    :pswitch_33
    if-nez p1, :cond_42

    .line 1141
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10407e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 1143
    :cond_42
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5c

    .line 1144
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10407e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 1136
    :pswitch_52
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1138
    nop

    .line 1153
    :cond_5c
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CNAP_sb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-object v0

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_52
        :pswitch_33
    .end packed-switch
.end method

.method public static isUtMmiCode(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .registers 7
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "dialPhone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "iccApp"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1248
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v0

    .line 1249
    .local v0, "mmi":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    const/4 v1, 0x0

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_63

    .line 1253
    :cond_e
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isShortCode()Z

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v2, :cond_19

    goto :goto_62

    .line 1255
    :cond_19
    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_61

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1256
    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1257
    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1258
    const-string v3, "76"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1259
    const-string v3, "77"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1260
    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1261
    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 1262
    const-string v3, "43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1264
    :cond_5f
    const/4 v1, 0x1

    return v1

    .line 1266
    :cond_61
    return v1

    .line 1254
    :cond_62
    :goto_62
    return v1

    .line 1250
    :cond_63
    :goto_63
    return v1
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    .registers 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    move-result-object v0

    return-object v0
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    .registers 12
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "ret":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newFromDialString, dialstring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmMmiCode"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    nop

    .line 125
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "dialPart":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "#"

    if-nez v3, :cond_3e

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 127
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v3, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v3, v4

    .line 128
    .local v3, "isMmi":Z
    :goto_3f
    const/4 v6, 0x2

    if-nez v3, :cond_4f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_4f

    .line 129
    const-string v4, "Not belong to MMI format."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v2, 0x0

    return-object v2

    .line 134
    :cond_4f
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 135
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 139
    invoke-static {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 142
    :cond_63
    sget-object v2, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 145
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 146
    new-instance v7, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v7, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v7

    .line 147
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mAction:Ljava/lang/String;

    .line 149
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    .line 150
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    .line 151
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    .line 152
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSic:Ljava/lang/String;

    .line 153
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    .line 154
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 156
    iget-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v4, :cond_e9

    iget-object v4, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 158
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 164
    new-instance v4, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v4, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v4

    .line 165
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_11e

    .line 166
    :cond_e9
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isFacToDial()Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 168
    const/4 v0, 0x0

    goto :goto_11e

    .line 170
    :cond_f1
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 174
    new-instance v4, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v4, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v4

    .line 175
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_11e

    .line 176
    :cond_100
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v5

    invoke-static {v4, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 178
    const/4 v0, 0x0

    goto :goto_11e

    .line 179
    :cond_110
    invoke-static {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 181
    new-instance v4, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v4, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v4

    .line 182
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 185
    :cond_11e
    :goto_11e
    if-eqz v0, :cond_122

    .line 186
    iput-object p3, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    .line 189
    :cond_122
    return-object v0
.end method

.method public static newFromUssdUserInput(Ljava/lang/String;Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    .registers 5
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 195
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 197
    .local v0, "ret":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 198
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIsPendingUSSD:Z

    .line 201
    return-object v0
.end method

.method public static newNetworkInitiatedUssdError(Ljava/lang/String;ZLcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    .registers 7
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .param p3, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1161
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;

    invoke-direct {v0, p2, p3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;-><init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 1162
    .local v0, "ret":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 1163
    iput-object p0, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1b

    .line 1165
    :cond_10
    iget-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040564

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1167
    :goto_1b
    iput-boolean p1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIsUssdRequest:Z

    .line 1168
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1170
    return-object v0
.end method

.method private onGetColpComplete(Landroid/os/AsyncResult;)V
    .registers 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1175
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1e

    .line 1178
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1179
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 1182
    :cond_1e
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1185
    .local v1, "colpArgs":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_64

    goto :goto_5c

    .line 1197
    :pswitch_29
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x805000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1199
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_5c

    .line 1192
    :pswitch_3a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x805000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1194
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1195
    goto :goto_5c

    .line 1187
    :pswitch_4b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10407e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1189
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1190
    nop

    .line 1203
    .end local v1    # "colpArgs":[I
    :goto_5c
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1204
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 1205
    return-void

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_3a
        :pswitch_29
    .end packed-switch
.end method

.method private onGetColrComplete(Landroid/os/AsyncResult;)V
    .registers 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1209
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1e

    .line 1212
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1213
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 1216
    :cond_1e
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1219
    .local v1, "colrArgs":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    packed-switch v2, :pswitch_data_64

    goto :goto_5c

    .line 1233
    :pswitch_29
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040564

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1235
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_5c

    .line 1227
    :pswitch_3a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x805000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1229
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1230
    goto :goto_5c

    .line 1221
    :pswitch_4b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10407e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1223
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1224
    nop

    .line 1241
    .end local v1    # "colrArgs":[I
    :goto_5c
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 1243
    return-void

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_3a
        :pswitch_29
    .end packed-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .registers 5
    .param p0, "si"    # Ljava/lang/String;

    .line 205
    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4d

    .line 209
    :cond_9
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 211
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_50

    .line 234
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

    .line 231
    :sswitch_29
    const/16 v1, 0x40

    return v1

    .line 230
    :sswitch_2c
    const/16 v1, 0x11

    return v1

    .line 229
    :sswitch_2f
    const/16 v1, 0x20

    return v1

    .line 228
    :sswitch_32
    const/16 v1, 0x210

    return v1

    .line 227
    :sswitch_35
    const/16 v1, 0x50

    return v1

    .line 226
    :sswitch_38
    const/16 v1, 0xa0

    return v1

    .line 225
    :sswitch_3b
    const/16 v1, 0x30

    return v1

    .line 217
    :sswitch_3e
    const/4 v1, 0x5

    return v1

    .line 216
    :sswitch_40
    const/16 v1, 0x8

    return v1

    .line 215
    :sswitch_43
    const/4 v1, 0x4

    return v1

    .line 214
    :sswitch_45
    const/16 v1, 0xc

    return v1

    .line 213
    :sswitch_48
    const/4 v1, 0x1

    return v1

    .line 212
    :sswitch_4a
    const/16 v1, 0xd

    return v1

    .line 206
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

    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "r":Z
    const-string v1, "ro.vendor.md_auto_setup_ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1272
    const/4 v0, 0x1

    .line 1274
    :cond_10
    return v0
.end method


# virtual methods
.method protected createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "serviceClass"    # I

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    .line 1114
    const v2, 0x10407e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1116
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1117
    .local v1, "classMask":I
    :goto_f
    const/16 v2, 0x200

    if-gt v1, v2, :cond_28

    .line 1120
    and-int v2, v1, p1

    if-eqz v2, :cond_25

    .line 1121
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    and-int v2, v1, p1

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_25
    shl-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1125
    .end local v1    # "classMask":I
    :cond_28
    return-object v0
.end method

.method protected createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "serviceClass"    # I

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    .line 1096
    const v2, 0x10407e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1098
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1099
    .local v1, "classMask":I
    :goto_f
    const/16 v2, 0x200

    if-gt v1, v2, :cond_28

    .line 1102
    and-int v2, v1, p1

    if-eqz v2, :cond_25

    .line 1103
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    and-int v2, v1, p1

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1100
    :cond_25
    shl-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1107
    .end local v1    # "classMask":I
    :cond_28
    return-object v0
.end method

.method protected getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1289
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_82

    .line 1290
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1293
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    const-string v2, "MtkGsmMmiCode"

    if-eq v0, v1, :cond_4b

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4b

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4b

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_4b

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_25

    goto :goto_4b

    .line 1314
    :cond_25
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_5:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_38

    .line 1315
    const-string v1, "getErrorMessage, OEM_ERROR_5 CALL_BARRED"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x8050008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1317
    :cond_38
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_82

    .line 1318
    const-string v1, "getErrorMessage, FDN_CHECK_FAILURE"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x8050007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1298
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    const v3, 0x1040564

    if-eqz v1, :cond_7b

    .line 1299
    const-string v1, "getErrorMessage, OEM_ERROR"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 1301
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v1

    .line 1302
    .local v1, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    const/4 v2, 0x0

    .line 1303
    .local v2, "errorMsg":Ljava/lang/String;
    if-eqz v1, :cond_7a

    .line 1304
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->getXCAPErrorMessageFromSysProp(Lcom/android/internal/telephony/CommandException$Error;)Ljava/lang/String;

    move-result-object v2

    .line 1305
    if-eqz v2, :cond_73

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_73

    .line 1306
    return-object v2

    .line 1308
    :cond_73
    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 1311
    .end local v1    # "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_7a
    goto :goto_82

    .line 1312
    :cond_7b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1323
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_82
    :goto_82
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getScString()Ljava/lang/CharSequence;
    .registers 3

    .line 1280
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1281
    const-string v0, "Calling Name Presentation"

    return-object v0

    .line 1283
    :cond_11
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method handleCLIP()V
    .registers 4

    .line 388
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CLIP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 391
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_20

    .line 392
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->queryCLIP(Landroid/os/Message;)V

    .line 393
    return-void

    .line 396
    :cond_20
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 397
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 398
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCLIP(Landroid/os/Message;)V

    .line 399
    return-void

    .line 402
    :cond_3a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    .line 403
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 405
    :cond_49
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 409
    return-void

    .line 407
    :cond_55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCLIR()V
    .registers 5

    .line 413
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CLIR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_16
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 415
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isClirActivationAndDeactivationPrevented()Z

    move-result v0

    if-nez v0, :cond_81

    .line 416
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 417
    move v2, v3

    goto :goto_27

    :cond_26
    nop

    :goto_27
    move v0, v2

    .line 419
    .local v0, "clirAction":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 420
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 421
    return-void

    .line 424
    :cond_3a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 425
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 426
    return-void

    .line 429
    :cond_4e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_68

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 430
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 431
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 432
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 431
    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCLIR(ILandroid/os/Message;)V

    .line 433
    return-void

    .line 436
    :cond_68
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-ne v2, v3, :cond_75

    .line 437
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 439
    :cond_75
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 440
    .end local v0    # "clirAction":I
    goto :goto_df

    :cond_81
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 442
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 443
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 444
    return-void

    .line 447
    :cond_99
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpTbClir()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 448
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 449
    return-void

    .line 452
    :cond_ad
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 453
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 454
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCLIR(Landroid/os/Message;)V

    .line 455
    return-void

    .line 458
    :cond_c7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v3, :cond_d4

    .line 459
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 461
    :cond_d4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 465
    :goto_df
    return-void

    .line 463
    :cond_e0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCNAP(Ljava/lang/String;)V
    .registers 4
    .param p1, "cnapssMessage"    # Ljava/lang/String;

    .line 366
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CNAP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 373
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 374
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 380
    :cond_1c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->sendCNAP(Ljava/lang/String;Landroid/os/Message;)V

    .line 384
    return-void

    .line 382
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCOLP()V
    .registers 4

    .line 470
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is COLP"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 472
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_21

    .line 473
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLP(Landroid/os/Message;)V

    .line 474
    return-void

    .line 477
    :cond_21
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 478
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 479
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCOLP(Landroid/os/Message;)V

    .line 480
    return-void

    .line 483
    :cond_3b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4a

    .line 484
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 486
    :cond_4a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLP(Landroid/os/Message;)V

    .line 490
    return-void

    .line 488
    :cond_56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCOLR()V
    .registers 4

    .line 494
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is COLR"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 496
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_21

    .line 497
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLR(Landroid/os/Message;)V

    .line 498
    return-void

    .line 501
    :cond_21
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 502
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 503
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->getCOLR(Landroid/os/Message;)V

    .line 504
    return-void

    .line 507
    :cond_3b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4a

    .line 508
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 510
    :cond_4a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-virtual {p0, v1, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getCOLR(Landroid/os/Message;)V

    .line 514
    return-void

    .line 512
    :cond_56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCW()V
    .registers 11

    .line 738
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 739
    .local v0, "serviceClass":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCode: CW serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmMmiCode"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v1

    const-string v3, "Invalid or Unsupported MMI Code"

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v1, :cond_5b

    .line 742
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_4b

    .line 745
    :cond_33
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 746
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 747
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 746
    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_5a

    .line 749
    :cond_45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 743
    :cond_4b
    :goto_4b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v2

    .line 744
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 743
    invoke-interface {v1, v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 751
    :goto_5a
    return-void

    .line 754
    :cond_5b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v1

    .line 756
    .local v1, "tbcwMode":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-nez v6, :cond_de

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v6

    if-eqz v6, :cond_71

    goto :goto_de

    .line 792
    :cond_71
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 793
    if-ne v1, v5, :cond_8c

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 794
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v3

    if-nez v3, :cond_8c

    .line 795
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_198

    .line 796
    :cond_8c
    if-eq v1, v9, :cond_be

    if-ne v1, v8, :cond_91

    goto :goto_be

    .line 804
    :cond_91
    const-string v3, "processCode getCallWaiting"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_b1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 807
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 808
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 809
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 808
    invoke-virtual {v2, v0, v3}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_198

    .line 811
    :cond_b1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_198

    .line 798
    :cond_be
    :goto_be
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-ne v2, v5, :cond_cb

    .line 799
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 801
    :cond_cb
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 802
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 801
    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_198

    .line 816
    :cond_d8
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 757
    :cond_de
    :goto_de
    if-ne v1, v5, :cond_13f

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isOpNwCW()Z

    move-result v3

    if-nez v3, :cond_13f

    .line 759
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 760
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v3

    .line 759
    const-string v4, "persist.vendor.radio.terminal-based.cw"

    const-string v6, "disabled_tbcw"

    invoke-static {v3, v4, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 763
    .local v3, "tbcwStatus":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTerminal-based CallWaiting(): tbcwStatus = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", enable = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 763
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12a

    .line 766
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    .line 767
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 766
    invoke-virtual {v2, v4, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto :goto_13e

    .line 769
    :cond_12a
    const-string v4, "setCallWaiting() by NW."

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    .line 771
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 770
    invoke-interface {v2, v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 773
    .end local v3    # "tbcwStatus":Ljava/lang/String;
    :goto_13e
    goto :goto_198

    :cond_13f
    if-eq v1, v9, :cond_177

    if-ne v1, v8, :cond_144

    goto :goto_177

    .line 781
    :cond_144
    const-string v3, "processCode setCallWaiting"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_167

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 784
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_167

    .line 785
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v3

    .line 786
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 785
    invoke-virtual {v2, v3, v0, v4}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_198

    .line 788
    :cond_167
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v3

    .line 789
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 788
    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_198

    .line 775
    :cond_177
    :goto_177
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-ne v2, v5, :cond_184

    .line 776
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 778
    :cond_184
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v3

    .line 779
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v4, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 778
    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 818
    :goto_198
    return-void
.end method

.method handleCallBarring()V
    .registers 12

    .line 609
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CB"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    .line 612
    .local v1, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v9

    .line 613
    .local v9, "serviceClass":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, "facility":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "handleCallBarring: getUiccCardApplication() == null"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_91

    .line 616
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v2

    const/4 v7, 0x5

    if-eqz v2, :cond_33

    .line 617
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 618
    invoke-virtual {p0, v7, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 617
    invoke-interface {v0, v10, v1, v9, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 619
    return-void

    .line 622
    :cond_33
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 623
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 624
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 625
    invoke-virtual {p0, v7, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 624
    invoke-virtual {v0, v10, v1, v9, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 626
    return-void

    .line 629
    :cond_4d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-ne v2, v6, :cond_5a

    .line 630
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 636
    :cond_5a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-nez v2, :cond_77

    .line 637
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0, v7, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 640
    .local v0, "msg":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 642
    .local v2, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {v0, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 643
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 644
    return-void

    .line 647
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_77
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 648
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v6

    .line 649
    invoke-virtual {p0, v7, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 647
    move-object v3, v10

    move-object v4, v1

    move v5, v9

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_126

    .line 650
    :cond_91
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v2

    if-nez v2, :cond_a6

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_9e

    goto :goto_a6

    .line 686
    :cond_9e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid or Unsupported MMI Code"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_a6
    :goto_a6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 652
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    .line 653
    invoke-virtual {p0, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 652
    move-object v3, v10

    move-object v5, v1

    move v6, v9

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 654
    return-void

    .line 657
    :cond_bf
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_e0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 658
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 659
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    .line 660
    invoke-virtual {p0, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 659
    move-object v3, v10

    move-object v5, v1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 661
    return-void

    .line 664
    :cond_e0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v2

    if-ne v2, v6, :cond_ed

    .line 665
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v5}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 671
    :cond_ed
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-nez v2, :cond_10a

    .line 672
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {p0, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 675
    .restart local v0    # "msg":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 677
    .restart local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {v0, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 678
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 679
    return-void

    .line 682
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_10a
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v4

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 683
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v7

    .line 684
    invoke-virtual {p0, v6, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 682
    move-object v3, v10

    move-object v5, v1

    move v6, v9

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 688
    :goto_126
    return-void
.end method

.method handleCallForward()V
    .registers 16

    .line 519
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is CF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    .line 522
    .local v1, "dialingNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v9

    .line 523
    .local v9, "serviceClass":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v10

    .line 524
    .local v10, "reason":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v11

    .line 526
    .local v11, "time":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v2, :cond_6a

    .line 528
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 529
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 530
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 529
    invoke-interface {v0, v10, v9, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 531
    return-void

    .line 534
    :cond_36
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 535
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 536
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 537
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 536
    invoke-virtual {v0, v10, v9, v1, v2}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 538
    return-void

    .line 541
    :cond_50
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v5, :cond_5d

    .line 542
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 544
    :cond_5d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 545
    invoke-virtual {p0, v4, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 544
    invoke-interface {v0, v10, v9, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_104

    .line 549
    :cond_6a
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 555
    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 556
    const/4 v2, 0x1

    .line 557
    .local v2, "cfAction":I
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIsCallFwdReg:Z

    move v12, v2

    goto :goto_9a

    .line 559
    .end local v2    # "cfAction":I
    :cond_7b
    const/4 v2, 0x3

    .line 560
    .restart local v2    # "cfAction":I
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIsCallFwdReg:Z

    move v12, v2

    goto :goto_9a

    .line 562
    .end local v2    # "cfAction":I
    :cond_80
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isDeactivate()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 563
    const/4 v2, 0x0

    move v12, v2

    .restart local v2    # "cfAction":I
    goto :goto_9a

    .line 564
    .end local v2    # "cfAction":I
    :cond_89
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 565
    const/4 v2, 0x3

    move v12, v2

    .restart local v2    # "cfAction":I
    goto :goto_9a

    .line 566
    .end local v2    # "cfAction":I
    :cond_92
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isErasure()Z

    move-result v2

    if-eqz v2, :cond_105

    .line 567
    const/4 v2, 0x4

    move v12, v2

    .line 572
    .local v12, "cfAction":I
    :goto_9a
    invoke-static {v10, v9}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isVoiceUnconditionalForwarding(II)Z

    move-result v2

    move v13, v2

    .line 573
    .local v13, "includeCFU":I
    if-eq v12, v5, :cond_a6

    if-ne v12, v4, :cond_a4

    goto :goto_a6

    .line 574
    :cond_a4
    move v2, v3

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v2, v5

    :goto_a7
    move v14, v2

    .line 576
    .local v14, "isEnableDesired":I
    const-string v2, "is CF setCallForward"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_c6

    .line 578
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 579
    invoke-virtual {p0, v2, v13, v14, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 578
    move-object v2, v0

    move v3, v12

    move v4, v10

    move v5, v9

    move-object v6, v1

    move v7, v11

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 583
    return-void

    .line 586
    :cond_c6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 587
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isGsmUtSupport()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 588
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMtkSSReqDecisionMaker:Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;

    .line 589
    invoke-virtual {p0, v2, v13, v14, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 588
    move-object v2, v0

    move v3, v12

    move v4, v10

    move v5, v9

    move-object v6, v1

    move v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/internal/telephony/MtkSSRequestDecisionMaker;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 593
    return-void

    .line 596
    :cond_e6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v5, :cond_f3

    .line 597
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 599
    :cond_f3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 600
    invoke-virtual {p0, v2, v13, v14, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 599
    move-object v2, v0

    move v3, v12

    move v4, v10

    move v5, v9

    move-object v6, v1

    move v7, v11

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 605
    .end local v12    # "cfAction":I
    .end local v13    # "includeCFU":I
    .end local v14    # "isEnableDesired":I
    :goto_104
    return-void

    .line 569
    :cond_105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "invalid action"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleChangeBarringPassward()V
    .registers 10

    .line 692
    const-string v0, "MtkGsmMmiCode"

    const-string v1, "processCode: is Change PWD"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    .line 695
    .local v0, "oldPwd":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSic:Ljava/lang/String;

    .line 696
    .local v1, "newPwd":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isActivate()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_20

    .line 732
    :cond_18
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid or Unsupported MMI Code"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :cond_20
    :goto_20
    const-string v2, "**"

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mAction:Ljava/lang/String;

    .line 700
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    if-nez v2, :cond_2c

    .line 702
    const-string v2, "AB"

    move-object v8, v2

    .local v2, "facility":Ljava/lang/String;
    goto :goto_33

    .line 704
    .end local v2    # "facility":Ljava/lang/String;
    :cond_2c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 708
    .local v8, "facility":Ljava/lang/String;
    :goto_33
    const v2, 0x10405d9

    if-eqz v0, :cond_8b

    if-eqz v1, :cond_8b

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v3, :cond_8b

    .line 709
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_87

    .line 710
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_87

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_5a

    goto :goto_87

    .line 713
    :cond_5a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsCall()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_76

    .line 714
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 715
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 717
    .local v3, "ce":Lcom/android/internal/telephony/CommandException;
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 718
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 719
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "ce":Lcom/android/internal/telephony/CommandException;
    goto :goto_8e

    .line 723
    :cond_76
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPwd:Ljava/lang/String;

    .line 724
    invoke-virtual {p0, v3, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 723
    move-object v3, v8

    move-object v4, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkRIL;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_8e

    .line 711
    :cond_87
    :goto_87
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    goto :goto_8e

    .line 729
    :cond_8b
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    .line 734
    :goto_8e
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 825
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const-string v2, "43"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_ee

    .line 898
    :pswitch_b
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_ec

    .line 859
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 860
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onGetColpComplete(Landroid/os/AsyncResult;)V

    .line 861
    goto/16 :goto_ec

    .line 864
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 865
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onGetColrComplete(Landroid/os/AsyncResult;)V

    .line 866
    goto/16 :goto_ec

    .line 841
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 847
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_44

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_44

    .line 848
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_33

    move v4, v5

    :cond_33
    move v1, v4

    .line 849
    .local v1, "cffEnabled":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_44

    .line 850
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v1, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 851
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->saveTimeSlot([J)V

    .line 855
    .end local v1    # "cffEnabled":Z
    :cond_44
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 856
    goto/16 :goto_ec

    .line 869
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 870
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v6

    if-nez v6, :cond_bb

    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 871
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v2

    if-ne v2, v1, :cond_bb

    .line 872
    const-string v1, "MtkGsmMmiCode"

    const-string v2, "TBCW_WITH_CS"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_bb

    .line 874
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 879
    .local v2, "cwArray":[I
    :try_start_72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_GET_CALL_WAITING_FOR_CS_TB cwArray[0]:cwArray[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    aget v6, v2, v4

    if-ne v6, v5, :cond_9c

    aget v6, v2, v5

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_9c

    move v4, v5

    .line 885
    .local v4, "csEnable":Z
    :cond_9c
    iget-object v5, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v5, v4, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V
    :try_end_a1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_72 .. :try_end_a1} :catch_a2

    .line 890
    .end local v4    # "csEnable":Z
    goto :goto_bb

    .line 886
    :catch_a2
    move-exception v3

    .line 887
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_CALL_WAITING_FOR_CS_TB: improper result: err ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 887
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .end local v2    # "cwArray":[I
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_bb
    :goto_bb
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    .line 894
    goto :goto_ec

    .line 827
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_bf
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 829
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v6

    if-nez v6, :cond_e8

    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 830
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getTbcwMode()I

    move-result v2

    if-ne v2, v1, :cond_e8

    .line 831
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_e8

    .line 832
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_e2

    move v4, v5

    :cond_e2
    move v1, v4

    .line 833
    .local v1, "enable":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 837
    .end local v1    # "enable":Z
    :cond_e8
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 838
    nop

    .line 901
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_ec
    return-void

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_49
        :pswitch_22
        :pswitch_b
        :pswitch_19
        :pswitch_10
    .end packed-switch
.end method

.method protected makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .line 950
    const-string v0, "{0}"

    const-string v1, "{1}"

    const-string v2, "{2}"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "sources":[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 958
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

    .line 961
    .local v2, "needTimeTemplate":Z
    :goto_1b
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v5, :cond_35

    .line 962
    if-eqz v2, :cond_2b

    .line 963
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "template":Ljava/lang/CharSequence;
    goto :goto_60

    .line 966
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_2b
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401d7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_60

    .line 969
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_35
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v6, :cond_4b

    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 970
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_60

    .line 976
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_4b
    if-eqz v2, :cond_57

    .line 977
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "template":Ljava/lang/CharSequence;
    goto :goto_60

    .line 980
    .end local v6    # "template":Ljava/lang/CharSequence;
    :cond_57
    iget-object v6, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401da

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 990
    .restart local v6    # "template":Ljava/lang/CharSequence;
    :goto_60
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v4

    .line 991
    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 992
    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 991
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->formatLtr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 993
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .line 995
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v3, :cond_99

    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v3, p2

    if-ne v3, v5, :cond_99

    .line 998
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v5, :cond_8d

    move v4, v5

    :cond_8d
    move v3, v4

    .line 1000
    .local v3, "cffEnabled":Z
    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_99

    .line 1002
    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v7}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1006
    .end local v3    # "cffEnabled":Z
    :cond_99
    invoke-static {v6, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method protected onQueryCfComplete(Landroid/os/AsyncResult;)V
    .registers 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1012
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16

    .line 1015
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    .line 1016
    return-void

    .line 1020
    :cond_16
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1022
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_72

    array-length v6, v2

    if-nez v6, :cond_23

    goto :goto_72

    .line 1032
    :cond_23
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1040
    .local v6, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v7, 0x1

    .line 1041
    .local v7, "serviceClassMask":I
    :goto_29
    const/16 v8, 0x200

    if-gt v7, v8, :cond_6e

    .line 1043
    const/16 v8, 0x100

    if-ne v7, v8, :cond_32

    goto :goto_6b

    .line 1045
    :cond_32
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v9, v2

    .local v9, "s":I
    :goto_34
    if-ge v8, v9, :cond_6b

    .line 1046
    aget-object v10, v2, v8

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v10, v7

    if-eqz v10, :cond_68

    .line 1047
    aget-object v10, v2, v8

    invoke-virtual {p0, v10, v7}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1048
    invoke-virtual {v6, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1051
    aget-object v10, v2, v8

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v10, :cond_68

    aget-object v10, v2, v8

    iget v10, v10, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v10, v7

    if-ne v10, v5, :cond_68

    .line 1054
    iget-object v10, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v10, :cond_68

    .line 1055
    iget-object v10, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    aget-object v11, v2, v8

    iget v11, v11, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v11, v5, :cond_64

    move v11, v5

    goto :goto_65

    :cond_64
    move v11, v4

    :goto_65
    invoke-virtual {v10, v5, v11, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1045
    :cond_68
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 1042
    .end local v8    # "i":I
    .end local v9    # "s":I
    :cond_6b
    :goto_6b
    shl-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 1062
    .end local v7    # "serviceClassMask":I
    :cond_6e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_87

    .line 1024
    .end local v6    # "tb":Landroid/text/SpannableStringBuilder;
    :cond_72
    :goto_72
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10407e2

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1027
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_87

    .line 1028
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, v5, v4, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1065
    :cond_87
    :goto_87
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1068
    .end local v2    # "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryCfComplete: mmi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkGsmMmiCode"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 1071
    return-void
.end method

.method protected onQueryComplete(Landroid/os/AsyncResult;)V
    .registers 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1076
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_43

    .line 1079
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1080
    .local v1, "ints":[I
    array-length v2, v1

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "300"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1082
    const-string v2, "MtkGsmMmiCode"

    const-string v3, "onQueryComplete_CNAP"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->createQueryCnapResultMessage(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1084
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1085
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1086
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 1087
    return-void

    .line 1090
    .end local v1    # "ints":[I
    :cond_43
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    .line 1091
    return-void
.end method

.method protected onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 906
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_50

    .line 909
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 910
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_50

    .line 911
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 912
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_50

    .line 913
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 917
    :cond_3c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040564

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 918
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 919
    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 920
    return-void

    .line 925
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_50
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    .line 926
    return-void
.end method

.method public processCode()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 250
    const-string v0, "04"

    const-string v1, "MtkGsmMmiCode"

    const v2, 0x1040564

    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->supportMdAutoSetupIms()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_54

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 251
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringVoLteCall()Z

    move-result v3

    if-nez v3, :cond_1f

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->isDuringImsEccCall()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 252
    :cond_1f
    const-string v0, "Stop CS MMI during IMS Ecc Call or VoLTE call"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v5, :cond_31

    .line 255
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 258
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 261
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 262
    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 263
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 264
    return-void

    .line 267
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_54
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isShortCode()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 268
    const-string v0, "processCode: isShortCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_221

    .line 271
    :cond_66
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_68} :catch_24e

    const-string v6, "Invalid or Unsupported MMI Code"

    if-nez v3, :cond_22d

    .line 276
    :try_start_6c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_8b

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "300"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_221

    .line 278
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCNAP(Ljava/lang/String;)V

    goto/16 :goto_221

    .line 280
    :cond_8b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_9e

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "30"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 281
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCLIP()V

    goto/16 :goto_221

    .line 282
    :cond_9e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_b1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "31"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 283
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCLIR()V

    goto/16 :goto_221

    .line 284
    :cond_b1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_c4

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "76"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 285
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCOLP()V

    goto/16 :goto_221

    .line 286
    :cond_c4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_d7

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "77"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 287
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCOLR()V

    goto/16 :goto_221

    .line 288
    :cond_d7
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 289
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCallForward()V

    goto/16 :goto_221

    .line 290
    :cond_e4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCallBarring()V

    goto/16 :goto_221

    .line 292
    :cond_f1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_104

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "03"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 293
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleChangeBarringPassward()V

    goto/16 :goto_221

    .line 294
    :cond_104
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_117

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "43"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 295
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handleCW()V

    goto/16 :goto_221

    .line 296
    :cond_117
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isPinPukCommand()Z

    move-result v3

    if-eqz v3, :cond_20b

    .line 304
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSia:Ljava/lang/String;

    .line 305
    .local v3, "oldPinOrPuk":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSib:Ljava/lang/String;

    .line 306
    .local v4, "newPinOrPuk":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 307
    .local v6, "pinLen":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->isRegister()Z

    move-result v7

    if-eqz v7, :cond_1f2

    .line 308
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13b

    .line 310
    const v0, 0x104055a

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_1f1

    .line 311
    :cond_13b
    const/4 v7, 0x4

    if-lt v6, v7, :cond_1eb

    const/16 v7, 0x8

    if-le v6, v7, :cond_144

    goto/16 :goto_1eb

    .line 314
    :cond_144
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_162

    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v7, :cond_162

    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 316
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v7, v8, :cond_162

    .line 318
    const v0, 0x1040574

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_1f1

    .line 319
    :cond_162
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v7, :cond_1e3

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "process mmi service code using UiccApp sc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 324
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 325
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 324
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f1

    .line 326
    :cond_18e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "042"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 327
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 328
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 327
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f1

    .line 329
    :cond_1a2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "05"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 330
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 331
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 330
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f1

    .line 332
    :cond_1b6
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v7, "052"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 333
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 334
    invoke-virtual {p0, v5, p0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 333
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1f1

    .line 336
    :cond_1ca
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uicc unsupported service code="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    throw v0

    .line 339
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_1e3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "No application mUiccApplicaiton is null"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    throw v0

    .line 313
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_1eb
    :goto_1eb
    const v0, 0x1040423

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->handlePasswordError(I)V

    .line 344
    .end local v3    # "oldPinOrPuk":Ljava/lang/String;
    .end local v4    # "newPinOrPuk":Ljava/lang/String;
    .end local v6    # "pinLen":I
    :goto_1f1
    goto :goto_221

    .line 342
    .restart local v3    # "oldPinOrPuk":Ljava/lang/String;
    .restart local v4    # "newPinOrPuk":Ljava/lang/String;
    .restart local v6    # "pinLen":I
    :cond_1f2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ivalid register/action="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    throw v0

    .line 344
    .end local v3    # "oldPinOrPuk":Ljava/lang/String;
    .end local v4    # "newPinOrPuk":Ljava/lang/String;
    .end local v6    # "pinLen":I
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_20b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_222

    .line 346
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v5, :cond_21c

    .line 347
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->setCsFallbackStatus(I)V

    .line 351
    :cond_21c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 361
    :cond_221
    :goto_221
    goto :goto_274

    .line 353
    :cond_222
    const-string v0, "processCode: Invalid or Unsupported MMI Code"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    throw v0

    .line 272
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :cond_22d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Special USSD Support:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    throw v0
    :try_end_24e
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_24e} :catch_24e

    .line 356
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;
    :catch_24e
    move-exception v0

    .line 357
    .local v0, "exc":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 358
    iget-object v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCode: RuntimeException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    .line 362
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :goto_274
    return-void
.end method

.method protected serviceClassToCFString(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "serviceClass"    # I

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceClassToCFString, serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkGsmMmiCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    sparse-switch p1, :sswitch_data_28

    .line 941
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 939
    :sswitch_1e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/gsm/MtkGsmMmiCode;->mContext:Landroid/content/Context;

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
