.class public Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;
.super Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;
.source "MtkUiccPhoneBookController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkUiccPhoneBookController"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;-><init>()V

    .line 52
    const-string v0, "mtksimphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_e

    .line 53
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 55
    :cond_e
    return-void
.end method

.method private getDefaultSubscription()I
    .registers 2

    .line 549
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method private getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 9
    .param p1, "subId"    # I

    .line 534
    const-string v0, " For subscription :"

    const-string v1, "Exception is :"

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 536
    .local v3, "phoneId":I
    const/4 v4, 0x0

    :try_start_f
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_17} :catch_39
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_17} :catch_18

    return-object v0

    .line 541
    :catch_18
    move-exception v5

    .line 542
    .local v5, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 544
    return-object v4

    .line 537
    .end local v5    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_39
    move-exception v5

    .line 538
    .local v5, "e":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 540
    return-object v4
.end method


# virtual methods
.method public addContactToGroup(III)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    nop

    .line 249
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 250
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 251
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 252
    invoke-virtual {v1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->addContactToGroup(II)Z

    move-result v1

    .line 251
    return v1

    .line 254
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v1, 0x0

    return v1
.end method

.method public getAdnRecordsCapacityExt()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsCapacityForSubscriber(I)[I
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    nop

    .line 518
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 519
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 520
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getAdnRecordsCapacityExt()[I

    move-result-object v1

    return-object v1

    .line 522
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdnRecordsCapacity iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .registers 3
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .registers 7
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    nop

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 67
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 68
    move-object v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v2, p2, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getAdnRecordsInEf(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 70
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEf iccPbkIntMgr isnull for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkUiccPhoneBookController"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v1
.end method

.method public getAnrCount(I)I
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    nop

    .line 376
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 377
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 378
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getAnrCount()I

    move-result v1

    return v1

    .line 380
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v1, 0x0

    return v1
.end method

.method public getEmailCount(I)I
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    nop

    .line 388
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 389
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 390
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getEmailCount()I

    move-result v1

    return v1

    .line 392
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v1, 0x0

    return v1
.end method

.method public getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    nop

    .line 488
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 489
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 490
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v1

    return-object v1

    .line 492
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSneRecordLen(I)I
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    nop

    .line 464
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 465
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 466
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getSneRecordLen()I

    move-result v1

    return v1

    .line 468
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v1, 0x0

    return v1
.end method

.method public getUpbDone(I)I
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    nop

    .line 500
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 501
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 502
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getUpbDone()I

    move-result v1

    return v1

    .line 504
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpbDone iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v1, -0x1

    return v1
.end method

.method public getUsimAasById(II)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    nop

    .line 352
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 353
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 354
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getUsimAasById(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 356
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUsimAasList(I)Ljava/util/List;
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    nop

    .line 340
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 341
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 342
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getUsimAasList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 344
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUsimAasMaxCount(I)I
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    nop

    .line 400
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 401
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 402
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getUsimAasMaxCount()I

    move-result v1

    return v1

    .line 404
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v1, 0x0

    return v1
.end method

.method public getUsimAasMaxNameLen(I)I
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    nop

    .line 412
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 413
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 414
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getUsimAasMaxNameLen()I

    move-result v1

    return v1

    .line 416
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, 0x0

    return v1
.end method

.method public getUsimGroupById(II)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    nop

    .line 198
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 199
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 200
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 202
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUsimGroups(I)Ljava/util/List;
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    nop

    .line 186
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 187
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 188
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getUsimGroups()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 190
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUsimGrpMaxCount(I)I
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    nop

    .line 328
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 329
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 330
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getUsimGrpMaxCount()I

    move-result v1

    return v1

    .line 332
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, -0x1

    return v1
.end method

.method public getUsimGrpMaxNameLen(I)I
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    nop

    .line 316
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 317
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 318
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getUsimGrpMaxNameLen()I

    move-result v1

    return v1

    .line 320
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v1, -0x1

    return v1
.end method

.method public hasExistGroup(ILjava/lang/String;)I
    .registers 6
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    nop

    .line 304
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 305
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 306
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->hasExistGroup(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 308
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v1, -0x1

    return v1
.end method

.method public hasSne(I)Z
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    nop

    .line 452
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 453
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 454
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->hasSne()Z

    move-result v1

    return v1

    .line 456
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v1, 0x0

    return v1
.end method

.method public insertUsimAas(ILjava/lang/String;)I
    .registers 6
    .param p1, "subId"    # I
    .param p2, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    nop

    .line 364
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 365
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 366
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->insertUsimAas(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 368
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v1, 0x0

    return v1
.end method

.method public insertUsimGroup(ILjava/lang/String;)I
    .registers 6
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    nop

    .line 222
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 223
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 224
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->insertUsimGroup(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 226
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, -0x1

    return v1
.end method

.method public isAdnAccessible(I)Z
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    nop

    .line 476
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 477
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 478
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->isAdnAccessible()Z

    move-result v1

    return v1

    .line 480
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v1, 0x1

    return v1
.end method

.method public isPhbReady(I)Z
    .registers 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    nop

    .line 174
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 175
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 176
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->isPhbReady()Z

    move-result v1

    return v1

    .line 178
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    return v1
.end method

.method public moveContactFromGroupsToGroups(II[I[I)Z
    .registers 8
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fromGrpIdList"    # [I
    .param p4, "toGrpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    nop

    .line 291
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 292
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 293
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 294
    invoke-virtual {v1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v1

    .line 293
    return v1

    .line 296
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v1, 0x0

    return v1
.end method

.method public removeContactFromGroup(III)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    nop

    .line 263
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 264
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 265
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 266
    invoke-virtual {v1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->removeContactFromGroup(II)Z

    move-result v1

    .line 265
    return v1

    .line 268
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x0

    return v1
.end method

.method public removeUsimAasById(III)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    nop

    .line 439
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 440
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 441
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 442
    invoke-virtual {v1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->removeUsimAasById(II)Z

    move-result v1

    .line 441
    return v1

    .line 444
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v1, 0x0

    return v1
.end method

.method public removeUsimGroupById(II)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    nop

    .line 210
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 211
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 212
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-virtual {v1, p2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->removeUsimGroupById(I)Z

    move-result v1

    return v1

    .line 214
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    return v1
.end method

.method public updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 14
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    nop

    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 116
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_14

    .line 117
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 118
    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 117
    return v1

    .line 121
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    return v1
.end method

.method public updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "newTag"    # Ljava/lang/String;
    .param p6, "newPhoneNumber"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    nop

    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 82
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_15

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 84
    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 83
    return v1

    .line 87
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    return v1
.end method

.method public updateContactToGroups(II[I)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    nop

    .line 277
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 278
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 279
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 280
    invoke-virtual {v1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateContactToGroups(I[I)Z

    move-result v1

    .line 279
    return v1

    .line 282
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v1, 0x0

    return v1
.end method

.method public updateUsimAas(IIILjava/lang/String;)Z
    .registers 8
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .param p4, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    nop

    .line 425
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 426
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 427
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 428
    invoke-virtual {v1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateUsimAas(IILjava/lang/String;)Z

    move-result v1

    .line 427
    return v1

    .line 430
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v1, 0x0

    return v1
.end method

.method public updateUsimGroup(IILjava/lang/String;)I
    .registers 7
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .param p3, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    nop

    .line 235
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 236
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 237
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 238
    invoke-virtual {v1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateUsimGroup(ILjava/lang/String;)I

    move-result v1

    .line 237
    return v1

    .line 240
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, -0x1

    return v1
.end method

.method public updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I
    .registers 8
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "record"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    nop

    .line 147
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 148
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 149
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 150
    invoke-virtual {v1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateUsimPBRecordsByIndexWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v1

    .line 149
    return v1

    .line 152
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, 0x0

    return v1
.end method

.method public updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .registers 8
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    nop

    .line 161
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 162
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_f

    .line 163
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 164
    invoke-virtual {v1, p2, p3, p4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v1

    .line 163
    return v1

    .line 166
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkUiccPhoneBookController"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, 0x0

    return v1
.end method

.method public updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 18
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "newAnr"    # Ljava/lang/String;
    .param p6, "newGrpIds"    # Ljava/lang/String;
    .param p7, "newEmails"    # [Ljava/lang/String;
    .param p8, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    nop

    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 133
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_18

    .line 134
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 135
    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    .line 134
    return v1

    .line 138
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MtkUiccPhoneBookController"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    return v1
.end method

.method public updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 26
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "oldAnr"    # Ljava/lang/String;
    .param p6, "oldGrpIds"    # Ljava/lang/String;
    .param p7, "oldEmails"    # [Ljava/lang/String;
    .param p8, "newTag"    # Ljava/lang/String;
    .param p9, "newPhoneNumber"    # Ljava/lang/String;
    .param p10, "newAnr"    # Ljava/lang/String;
    .param p11, "newGrpIds"    # Ljava/lang/String;
    .param p12, "newEmails"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    nop

    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUiccPhoneBookController;->getIccPhoneBookInterfaceManager(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    .line 100
    .local v0, "iccPbkIntMgr":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    if-eqz v0, :cond_24

    .line 101
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 102
    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v1 .. v12}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 101
    return v1

    .line 105
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch iccPbkIntMgr is null for Subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MtkUiccPhoneBookController"

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    return v1
.end method
