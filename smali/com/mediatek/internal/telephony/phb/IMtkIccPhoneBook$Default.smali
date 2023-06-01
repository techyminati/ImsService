.class public Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Default;
.super Ljava/lang/Object;
.source "IMtkIccPhoneBook.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addContactToGroup(III)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdnRecordsCapacityExt()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdnRecordsCapacityForSubscriber(I)[I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    const/4 v0, 0x0

    return-object v0
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

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .registers 4
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

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnrCount(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailCount(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSneRecordLen(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public getUpbDone(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public getUsimAasById(II)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsimAasList(I)Ljava/util/List;
    .registers 3
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

    .line 403
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsimAasMaxCount(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public getUsimAasMaxNameLen(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public getUsimGroupById(II)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsimGroups(I)Ljava/util/List;
    .registers 3
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

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsimGrpMaxCount(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public getUsimGrpMaxNameLen(I)I
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public hasExistGroup(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public hasSne(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public insertUsimAas(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public insertUsimGroup(ILjava/lang/String;)I
    .registers 4
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public isAdnAccessible(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public isPhbReady(I)Z
    .registers 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public moveContactFromGroupsToGroups(II[I[I)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fromGrpIdList"    # [I
    .param p4, "toGrpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public removeContactFromGroup(III)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public removeUsimAasById(III)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public removeUsimGroupById(II)Z
    .registers 4
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 8
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

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
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

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public updateContactToGroups(II[I)Z
    .registers 5
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public updateUsimAas(IIILjava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .param p4, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public updateUsimGroup(IILjava/lang/String;)I
    .registers 5
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .param p3, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I
    .registers 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "record"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .registers 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 10
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

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
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

    .line 103
    const/4 v0, 0x0

    return v0
.end method
