.class public Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;
.super Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;
.source "MtkPhoneSubInfoControllerEx.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MtkPhoneSubInfoCtlEx"

.field private static final VDBG:Z = false


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;

    .line 73
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 75
    const-string v0, "iphonesubinfoEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_10

    .line 76
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 78
    :cond_10
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    .line 79
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mAppOps:Landroid/app/AppOpsManager;

    .line 80
    return-void
.end method

.method private checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_9

    .line 96
    return v0

    .line 97
    :catch_9
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v1    # "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method private getDefaultSubscription()I
    .registers 2

    .line 106
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method private getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 6
    .param p1, "subId"    # I

    .line 121
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 122
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 123
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 125
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v2, :cond_13

    .line 126
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    goto :goto_14

    :cond_13
    move-object v3, v1

    .line 127
    .local v3, "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_14
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 128
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1a
    return-object v1

    .line 130
    .end local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "uiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccRecords phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 131
    return-object v1
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 4
    .param p1, "subId"    # I

    .line 113
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 114
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 115
    const/4 v0, 0x0

    .line 117
    :cond_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 83
    const-string v0, "MtkPhoneSubInfoCtlEx"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 87
    const-string v0, "MtkPhoneSubInfoCtlEx"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method


# virtual methods
.method public getIsimDomainForSubscriber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 231
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 232
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 235
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 236
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_1b

    .line 237
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimDomain()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 239
    :cond_1b
    return-object v1

    .line 242
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimDomain phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 243
    return-object v1
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .registers 2

    .line 323
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getIsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimGbabpForSubscriber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 327
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 328
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 331
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 332
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_1e

    .line 333
    move-object v1, v2

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->getIsimGbabp()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 335
    :cond_1e
    return-object v1

    .line 338
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimGbabp phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 339
    return-object v1
.end method

.method public getIsimImpiForSubscriber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 214
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 215
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 218
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 219
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_1b

    .line 220
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpi()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    :cond_1b
    return-object v1

    .line 225
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimImpi phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 226
    return-object v1
.end method

.method public getIsimImpuForSubscriber(I)[Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 248
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 249
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 252
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 253
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_1b

    .line 254
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimImpu()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 256
    :cond_1b
    return-object v1

    .line 259
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimImpu phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 260
    return-object v1
.end method

.method public getIsimIstForSubscriber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 265
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 266
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 269
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 270
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_1b

    .line 271
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimIst()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 273
    :cond_1b
    return-object v1

    .line 276
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimIst phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 277
    return-object v1
.end method

.method public getIsimPcscfForSubscriber(I)[Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .line 282
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 283
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 286
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 287
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_1b

    .line 288
    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IsimRecords;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 290
    :cond_1b
    return-object v1

    .line 293
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimPcscf phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 294
    return-object v1
.end method

.method public getIsimPsismsc()[B
    .registers 2

    .line 299
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getIsimPsismscForSubscriber(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getIsimPsismscForSubscriber(I)[B
    .registers 6
    .param p1, "subId"    # I

    .line 303
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 304
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 307
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v2

    .line 308
    .local v2, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v2, :cond_1e

    .line 309
    move-object v1, v2

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->getEfPsismsc()[B

    move-result-object v1

    return-object v1

    .line 311
    :cond_1e
    return-object v1

    .line 314
    .end local v2    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsimPsismsc phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 315
    return-object v1
.end method

.method public getLine1PhoneNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;

    .line 408
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 409
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 411
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v3, "getLine1PhoneNumber"

    invoke-static {v2, p1, p2, p3, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1PhoneNumber permission check fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 414
    return-object v1

    .line 416
    :cond_26
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getLine1PhoneNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 418
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1PhoneNumber phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 419
    return-object v1
.end method

.method public getMncLength()I
    .registers 2

    .line 195
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getMncLengthForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getMncLengthForSubscriber(I)I
    .registers 5
    .param p1, "subId"    # I

    .line 199
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 203
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_14

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMncLength()I

    move-result v1

    return v1

    .line 206
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMncLength iccRecords is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x0

    return v1
.end method

.method public getUsimGbabp()Ljava/lang/String;
    .registers 2

    .line 366
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getUsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGbabpForSubscriber(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .line 370
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 374
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_14

    .line 375
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfGbabp()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 377
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsimGbabp iccRecords is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 378
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUsimPsismsc()[B
    .registers 2

    .line 161
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getUsimPsismscForSubscriber(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getUsimPsismscForSubscriber(I)[B
    .registers 5
    .param p1, "subId"    # I

    .line 165
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 169
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_14

    .line 170
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfPsismsc()[B

    move-result-object v1

    return-object v1

    .line 172
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsimPsismsc iccRecords is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUsimService(ILjava/lang/String;)Z
    .registers 4
    .param p1, "service"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getUsimServiceForSubscriber(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getUsimServiceForSubscriber(IILjava/lang/String;)Z
    .registers 8
    .param p1, "subId"    # I
    .param p2, "service"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 141
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 143
    const-string v2, "getUsimService"

    invoke-direct {p0, p3, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->checkReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 144
    return v1

    .line 146
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v2

    .line 148
    .local v2, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    if-eqz v2, :cond_1b

    .line 149
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(I)Z

    move-result v1

    return v1

    .line 151
    :cond_1b
    const-string v3, "getUsimService fail due to UST is null."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->log(Ljava/lang/String;)V

    .line 152
    return v1

    .line 155
    .end local v2    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimService phone is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 156
    return v1
.end method

.method public getUsimSmsp()[B
    .registers 2

    .line 178
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getUsimSmspForSubscriber(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getUsimSmspForSubscriber(I)[B
    .registers 5
    .param p1, "subId"    # I

    .line 182
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 186
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_14

    .line 187
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfSmsp()[B

    move-result-object v1

    return-object v1

    .line 189
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUsimSmsp iccRecords is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    return-object v1
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 344
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 345
    return-void
.end method

.method public setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 348
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 349
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-eqz v0, :cond_31

    .line 352
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v1

    .line 353
    .local v1, "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    if-eqz v1, :cond_1c

    .line 354
    move-object v2, v1

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;

    invoke-virtual {v2, p2, p3}, Lcom/mediatek/internal/telephony/uicc/MtkIsimUiccRecords;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_30

    .line 356
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsimGbabp isim is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 358
    .end local v1    # "isim":Lcom/android/internal/telephony/uicc/IsimRecords;
    :goto_30
    goto :goto_45

    .line 359
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsimGbabp phone is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 361
    :goto_45
    return-void
.end method

.method public setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 383
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 384
    return-void
.end method

.method public setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 387
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "Requires READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 391
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_13

    .line 392
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setEfGbabp(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_27

    .line 394
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsimGbabp iccRecords is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkPhoneSubInfoControllerEx;->loge(Ljava/lang/String;)V

    .line 396
    :goto_27
    return-void
.end method
