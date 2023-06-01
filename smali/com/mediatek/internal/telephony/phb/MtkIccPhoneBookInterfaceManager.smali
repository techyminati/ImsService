.class public Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "MtkIccPhoneBookInterfaceManager.java"


# static fields
.field protected static final DBG:Z

.field static final LOG_TAG:Ljava/lang/String; = "MtkIccPhoneBookIM"


# instance fields
.field private mErrorCause:I

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private volatile mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

.field protected mMtkBaseHandler:Landroid/os/Handler;

.field private mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 72
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    .line 85
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$1;-><init>(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    .line 70
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    .param p1, "x1"    # I

    .line 70
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;Lcom/android/internal/telephony/CommandException;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandException;

    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I

    move-result v0

    return v0
.end method

.method private getAdnEFPath(I)Ljava/lang/String;
    .registers 3
    .param p1, "efid"    # I

    .line 647
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_7

    .line 648
    const-string v0, "3F007F10"

    return-object v0

    .line 651
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I
    .registers 4
    .param p1, "e"    # Lcom/android/internal/telephony/CommandException;

    .line 764
    if-nez p1, :cond_4

    .line 765
    const/4 v0, 0x1

    return v0

    .line 768
    :cond_4
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 811
    const/4 v0, 0x0

    .local v0, "ret":I
    goto :goto_36

    .line 808
    .end local v0    # "ret":I
    :pswitch_15
    const/16 v0, -0x11

    .line 809
    .restart local v0    # "ret":I
    goto :goto_36

    .line 805
    .end local v0    # "ret":I
    :pswitch_18
    const/16 v0, -0x10

    .line 806
    .restart local v0    # "ret":I
    goto :goto_36

    .line 802
    .end local v0    # "ret":I
    :pswitch_1b
    const/16 v0, -0xd

    .line 803
    .restart local v0    # "ret":I
    goto :goto_36

    .line 799
    .end local v0    # "ret":I
    :pswitch_1e
    const/16 v0, -0xc

    .line 800
    .restart local v0    # "ret":I
    goto :goto_36

    .line 796
    .end local v0    # "ret":I
    :pswitch_21
    const/16 v0, -0xb

    .line 797
    .restart local v0    # "ret":I
    goto :goto_36

    .line 792
    .end local v0    # "ret":I
    :pswitch_24
    const/16 v0, -0xe

    .line 793
    .restart local v0    # "ret":I
    goto :goto_36

    .line 789
    .end local v0    # "ret":I
    :pswitch_27
    const/4 v0, -0x6

    .line 790
    .restart local v0    # "ret":I
    goto :goto_36

    .line 786
    .end local v0    # "ret":I
    :pswitch_29
    const/4 v0, -0x4

    .line 787
    .restart local v0    # "ret":I
    goto :goto_36

    .line 783
    .end local v0    # "ret":I
    :pswitch_2b
    const/4 v0, -0x3

    .line 784
    .restart local v0    # "ret":I
    goto :goto_36

    .line 780
    .end local v0    # "ret":I
    :pswitch_2d
    const/4 v0, -0x2

    .line 781
    .restart local v0    # "ret":I
    goto :goto_36

    .line 777
    .end local v0    # "ret":I
    :pswitch_2f
    const/4 v0, -0x5

    .line 778
    .restart local v0    # "ret":I
    goto :goto_36

    .line 773
    .end local v0    # "ret":I
    :pswitch_31
    const/4 v0, -0x1

    .line 774
    .restart local v0    # "ret":I
    goto :goto_36

    .line 770
    .end local v0    # "ret":I
    :pswitch_33
    const/16 v0, -0xa

    .line 771
    .restart local v0    # "ret":I
    nop

    .line 815
    :goto_36
    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_33
        :pswitch_31
        :pswitch_2f
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .registers 5
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 948
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 953
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 954
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->addContactToGroup(II)Z

    move-result v1

    :goto_18
    return v1

    .line 950
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkThread()V
    .registers 3

    .line 752
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 757
    return-void

    .line 753
    :cond_11
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 754
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdnRecordsCapacityExt()[I
    .registers 3

    .line 1327
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1333
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1334
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getAdnRecordsCapacityExt()[I

    move-result-object v1

    :goto_18
    return-object v1

    .line 1330
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getAdnRecordsInEf(ILjava/lang/Object;)Ljava/util/List;
    .registers 7
    .param p1, "efid"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 720
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_72

    .line 727
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v0

    move p1, v0

    .line 728
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsInEF: efid=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 730
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_34
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_40

    .line 731
    const-string v0, "getAdnRecordsInEF mMtkAdnCache is null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_7a

    .line 732
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 734
    :cond_40
    :try_start_40
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 735
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 737
    .local v0, "loadRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_7a

    .line 738
    :try_start_49
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 739
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v2, :cond_63

    .line 740
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 741
    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 740
    invoke-virtual {v2, p1, v3, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 742
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_68

    .line 744
    :cond_63
    const-string v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 746
    .end local v1    # "response":Landroid/os/Message;
    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_49 .. :try_end_69} :catchall_6f

    .line 747
    :try_start_69
    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_7a

    monitor-exit p0

    return-object v1

    .line 746
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v1

    .line 723
    .end local v0    # "loadRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_72
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7a

    .line 719
    .end local p1    # "efid":I
    .end local p2    # "object":Ljava/lang/Object;
    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAdnRecordsSize(I)[I
    .registers 10
    .param p1, "efid"    # I

    monitor-enter p0

    .line 665
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsSize: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 669
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 671
    .local v0, "getSizeRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_fd

    .line 673
    :try_start_1e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 675
    .local v1, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_fa

    .line 676
    .local v3, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v3, :cond_45

    .line 677
    :try_start_2d
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getAdnEFPath(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 678
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getAdnEFPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_3e

    .line 680
    :cond_3b
    invoke-virtual {v3, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 682
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_42

    goto :goto_45

    .line 684
    .end local v1    # "response":Landroid/os/Message;
    .end local v3    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catchall_42
    move-exception v1

    goto/16 :goto_fb

    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_fa

    .line 686
    const/16 v1, 0x6f3a

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne p1, v1, :cond_96

    :try_start_4d
    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    if-eqz v1, :cond_96

    .line 687
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->getAdnRecordsCapacityExt()[I

    move-result-object v1

    .line 688
    .local v1, "capabilityResult":[I
    new-array v3, v3, [I

    .line 689
    .local v3, "result":[I
    iget-object v6, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v6, [I

    aget v6, v6, v5

    aput v6, v3, v5

    .line 690
    aget v6, v1, v5

    aput v6, v3, v4

    .line 691
    aget v6, v3, v5

    aget v7, v3, v4

    mul-int/2addr v6, v7

    aput v6, v3, v2

    .line 692
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdnRecordsSize ADN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v4

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_4d .. :try_end_94} :catchall_fd

    .line 693
    monitor-exit p0

    return-object v3

    .line 694
    .end local v1    # "capabilityResult":[I
    .end local v3    # "result":[I
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_96
    const/16 v1, 0x6f49

    if-ne p1, v1, :cond_ed

    :try_start_9a
    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    if-eqz v1, :cond_ed

    .line 695
    new-array v1, v3, [I

    .line 696
    .local v1, "result":[I
    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v5

    aput v3, v1, v5

    .line 697
    iget-object v3, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v4

    aput v3, v1, v4

    .line 698
    aget v3, v1, v5

    const/16 v6, 0x19

    if-ge v3, v6, :cond_ba

    .line 699
    const/16 v3, 0x1a

    aput v3, v1, v5

    .line 701
    :cond_ba
    aget v3, v1, v5

    aget v6, v1, v4

    mul-int/2addr v3, v6

    aput v3, v1, v2

    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdnRecordsSize SDN "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_9a .. :try_end_eb} :catchall_fd

    .line 703
    monitor-exit p0

    return-object v1

    .line 706
    .end local v1    # "result":[I
    :cond_ed
    :try_start_ed
    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_f4

    new-array v1, v3, [I

    goto :goto_f8

    :cond_f4
    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, [I
    :try_end_f8
    .catchall {:try_start_ed .. :try_end_f8} :catchall_fd

    :goto_f8
    monitor-exit p0

    return-object v1

    .line 684
    :catchall_fa
    move-exception v1

    :goto_fb
    :try_start_fb
    monitor-exit v0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    :try_start_fc
    throw v1
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fd

    .line 664
    .end local v0    # "getSizeRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local p1    # "efid":I
    :catchall_fd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAnrCount()I
    .registers 3

    .line 1184
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1190
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1191
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getAnrCount()I

    move-result v1

    :goto_18
    return v1

    .line 1187
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEmailCount()I
    .registers 3

    .line 1201
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1208
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getEmailCount()I

    move-result v1

    :goto_18
    return v1

    .line 1204
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .registers 3

    monitor-enter p0

    .line 1298
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 1304
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1305
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_15

    const/4 v1, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_23

    :goto_19
    monitor-exit p0

    return-object v1

    .line 1301
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    .line 1297
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSneRecordLen()I
    .registers 3

    .line 1269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1275
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1276
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, -0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getSneRecordLen()I

    move-result v1

    :goto_18
    return v1

    .line 1272
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUpbDone()I
    .registers 3

    .line 1309
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1310
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_6

    const/4 v1, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUpbDone()I

    move-result v1

    :goto_a
    return v1
.end method

.method public getUsimAasById(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 1093
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1099
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1100
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimAasById(I)Ljava/lang/String;

    move-result-object v1

    :goto_18
    return-object v1

    .line 1096
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsimAasList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1081
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1082
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimAasList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_18
    return-object v1

    .line 1078
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsimAasMaxCount()I
    .registers 3

    .line 1218
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1225
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, -0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimAasMaxCount()I

    move-result v1

    :goto_18
    return v1

    .line 1221
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsimAasMaxNameLen()I
    .registers 3

    .line 1235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1241
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1242
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, -0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimAasMaxNameLen()I

    move-result v1

    :goto_18
    return v1

    .line 1238
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .registers 4
    .param p1, "nGasId"    # I

    .line 875
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 881
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 882
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v1

    :goto_18
    return-object v1

    .line 878
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsimGroups()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation

    .line 857
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 863
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 864
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimGroups()Ljava/util/List;

    move-result-object v1

    :goto_18
    return-object v1

    .line 860
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsimGrpMaxCount()I
    .registers 3

    .line 1057
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1063
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1064
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, -0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimGrpMaxCount()I

    move-result v1

    :goto_18
    return v1

    .line 1060
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsimGrpMaxNameLen()I
    .registers 3

    .line 1040
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1046
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1047
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, -0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getUsimGrpMaxNameLen()I

    move-result v1

    :goto_18
    return v1

    .line 1043
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .registers 4
    .param p1, "grpName"    # Ljava/lang/String;

    .line 1023
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1029
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1030
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, -0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->hasExistGroup(Ljava/lang/String;)I

    move-result v1

    :goto_18
    return v1

    .line 1026
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasSne()Z
    .registers 3

    .line 1252
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1258
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1259
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->hasSne()Z

    move-result v1

    :goto_18
    return v1

    .line 1255
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .registers 4
    .param p1, "aasName"    # Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1135
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1136
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, -0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->insertUsimAas(Ljava/lang/String;)I

    move-result v1

    :goto_18
    return v1

    .line 1132
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertUsimGroup(Ljava/lang/String;)I
    .registers 4
    .param p1, "grpName"    # Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 916
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 917
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, -0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->insertUsimGroup(Ljava/lang/String;)I

    move-result v1

    :goto_18
    return v1

    .line 913
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAdnAccessible()Z
    .registers 3

    .line 1286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1292
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1293
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->isAdnAccessible()Z

    move-result v1

    :goto_18
    return v1

    .line 1289
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPhbReady()Z
    .registers 4

    .line 831
    const/4 v0, 0x0

    .line 833
    .local v0, "phbReady":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v1, :cond_7

    .line 834
    const/4 v1, 0x0

    return v1

    .line 837
    :cond_7
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 838
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_29

    .line 839
    instance-of v2, v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    if-eqz v2, :cond_1f

    .line 840
    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->isPhbReady()Z

    move-result v0

    goto :goto_29

    .line 841
    :cond_1f
    instance-of v2, v1, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    if-eqz v2, :cond_29

    .line 842
    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/uicc/MtkRuimRecords;->isPhbReady()Z

    move-result v0

    .line 846
    :cond_29
    :goto_29
    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccPbInterfaceManager] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkIccPhoneBookIM"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccPbInterfaceManager] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkIccPhoneBookIM"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccPbInterfaceManager] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkIccPhoneBookIM"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .registers 6
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .line 1006
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1011
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1012
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    .line 1013
    :cond_14
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v1

    .line 1012
    :goto_18
    return v1

    .line 1008
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPhbReady()V
    .registers 5

    .line 819
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v0, :cond_12

    .line 820
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 821
    const/16 v2, 0x6f3a

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v1

    const/4 v3, 0x0

    .line 820
    invoke-virtual {v0, v2, v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 823
    :cond_12
    return-void
.end method

.method public removeContactFromGroup(II)Z
    .registers 5
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 966
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 971
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 972
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    .line 973
    :cond_14
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->removeContactFromGroup(II)Z

    move-result v1

    .line 972
    :goto_18
    return v1

    .line 968
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeUsimAasById(II)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .line 1112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1118
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->removeUsimAasById(II)Z

    move-result v1

    :goto_18
    return v1

    .line 1114
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeUsimGroupById(I)Z
    .registers 4
    .param p1, "nGasId"    # I

    .line 893
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 898
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 899
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->removeUsimGroupById(I)Z

    move-result v1

    :goto_18
    return v1

    .line 895
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdnAas(II)Z
    .registers 5
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .line 1168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1173
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1174
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnAas(II)Z

    move-result v1

    :goto_18
    return v1

    .line 1170
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdnRecordsInEfByIndex(ILandroid/content/ContentValues;ILjava/lang/String;)Z
    .registers 13
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "index"    # I
    .param p4, "pin2"    # Ljava/lang/String;

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "newTag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 475
    .local v1, "newPhoneNumber":Ljava/lang/String;
    if-eqz p2, :cond_10

    .line 476
    const-string v2, "newTag"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    const-string v2, "newNumber"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    :cond_10
    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move-object v5, v1

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 484
    .local v2, "result":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    return v3
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    .line 461
    invoke-virtual/range {p0 .. p5}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 465
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public declared-synchronized updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 15
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;

    monitor-enter p0

    .line 508
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7f

    .line 515
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_1b

    .line 516
    const-string v0, "updateAdnRecordsInEfByIndex mMtkAdnCache is null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_87

    .line 517
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 519
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_1b
    :try_start_1b
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 521
    :cond_43
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 522
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 524
    .local v0, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v0
    :try_end_4c
    .catchall {:try_start_1b .. :try_end_4c} :catchall_87

    .line 525
    :try_start_4c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 526
    .local v8, "response":Landroid/os/Message;
    if-nez p3, :cond_58

    .line 527
    const-string v1, ""

    move-object p3, v1

    .line 529
    :cond_58
    if-nez p2, :cond_5d

    .line 530
    const-string v1, ""

    move-object p2, v1

    .line 532
    :cond_5d
    new-instance v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v5, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .local v5, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v1, :cond_72

    .line 534
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    move v4, p1

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnByIndex(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 535
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_77

    .line 537
    :cond_72
    const-string v1, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 539
    .end local v5    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v8    # "response":Landroid/os/Message;
    :goto_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_4c .. :try_end_78} :catchall_7c

    .line 540
    :try_start_78
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_7a
    .catchall {:try_start_78 .. :try_end_7a} :catchall_87

    monitor-exit p0

    return v1

    .line 539
    :catchall_7c
    move-exception v1

    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v1

    .line 511
    .end local v0    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_7f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_87

    .line 507
    .end local p1    # "efid":I
    .end local p2    # "newTag":Ljava/lang/String;
    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .end local p4    # "index":I
    .end local p5    # "pin2":Ljava/lang/String;
    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    .line 200
    invoke-virtual/range {p0 .. p6}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 204
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public updateAdnRecordsInEfBySearchForSubscriber(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 16
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pin2"    # Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 297
    return v0

    .line 300
    :cond_4
    const-string v1, "newTag"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "newTag":Ljava/lang/String;
    const-string v2, "newNumber"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, "newPhoneNumber":Ljava/lang/String;
    const-string v2, "tag"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 304
    .local v10, "oldTag":Ljava/lang/String;
    const-string v2, "number"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 306
    .local v11, "oldPhoneNumber":Ljava/lang/String;
    move-object v2, p0

    move v3, p1

    move-object v4, v10

    move-object v5, v11

    move-object v6, v1

    move-object v7, v9

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 309
    .local v2, "result":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    move v0, v3

    :cond_2b
    return v0
.end method

.method public declared-synchronized updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;

    monitor-enter p0

    .line 232
    const/4 v0, -0x1

    .line 233
    .local v0, "index":I
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9b

    .line 240
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v1, :cond_1c

    .line 241
    const-string v1, "updateAdnRecordsInEfBySearchWithError mMtkAdnCache is null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_a3

    .line 242
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 245
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_1c
    :try_start_1c
    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfBySearch: efid=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 249
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v2

    .line 250
    .end local p1    # "efid":I
    .local v2, "efid":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 251
    new-instance p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 253
    .local p1, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter p1
    :try_end_49
    .catchall {:try_start_1c .. :try_end_49} :catchall_a3

    .line 254
    :try_start_49
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 255
    .local v6, "response":Landroid/os/Message;
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v3, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v3, "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-nez p5, :cond_5a

    .line 257
    const-string v1, ""

    move-object p5, v1

    .line 259
    :cond_5a
    if-nez p4, :cond_5f

    .line 260
    const-string v1, ""

    move-object p4, v1

    .line 262
    :cond_5f
    new-instance v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v4, p4, p5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v4, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v1, :cond_75

    .line 264
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/4 v7, 0x0

    move-object v5, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnBySearch(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Ljava/lang/String;Landroid/os/Message;Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    .line 266
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_7a

    .line 268
    :cond_75
    const-string v1, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 270
    .end local v3    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v6    # "response":Landroid/os/Message;
    :goto_7a
    monitor-exit p1
    :try_end_7b
    .catchall {:try_start_49 .. :try_end_7b} :catchall_98

    .line 271
    :try_start_7b
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_96

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearchWithError success index is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_7b .. :try_end_94} :catchall_a3

    .line 273
    monitor-exit p0

    return v0

    .line 275
    :cond_96
    monitor-exit p0

    return v1

    .line 270
    :catchall_98
    move-exception v1

    :try_start_99
    monitor-exit p1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw v1

    .line 236
    .end local v2    # "efid":I
    .local p1, "efid":I
    :cond_9b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_a3

    .line 231
    .end local v0    # "index":I
    .end local p1    # "efid":I
    .end local p2    # "oldTag":Ljava/lang/String;
    .end local p3    # "oldPhoneNumber":Ljava/lang/String;
    .end local p4    # "newTag":Ljava/lang/String;
    .end local p5    # "newPhoneNumber":Ljava/lang/String;
    .end local p6    # "pin2":Ljava/lang/String;
    :catchall_a3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateContactToGroups(I[I)Z
    .registers 5
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .line 985
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 990
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 991
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    .line 992
    :cond_14
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateContactToGroups(I[I)Z

    move-result v1

    .line 991
    :goto_18
    return v1

    .line 987
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .registers 4
    .param p1, "iccRecords"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .line 144
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 145
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 146
    const/4 v0, -0x1

    if-eqz p1, :cond_3b

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 148
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-eqz v1, :cond_1d

    .line 149
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getSlotId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    goto :goto_24

    .line 151
    :cond_1d
    const-string v1, "[updateIccRecords] mMtkAdnCache == null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V

    .line 152
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    .line 154
    :goto_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateIccRecords] Set mMtkAdnCache value slotid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V

    goto :goto_45

    .line 156
    :cond_3b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 157
    const-string v1, "[updateIccRecords] Set mMtkAdnCache value to null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V

    .line 158
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mSlotId:I

    .line 160
    :goto_45
    return-void
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .line 1149
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 1154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 1155
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateUsimAas(IILjava/lang/String;)Z

    move-result v1

    :goto_18
    return v1

    .line 1151
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateUsimGroup(ILjava/lang/String;)I
    .registers 5
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .line 930
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 935
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    .line 936
    .local v0, "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    if-nez v0, :cond_14

    const/4 v1, -0x1

    goto :goto_18

    :cond_14
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateUsimGroup(ILjava/lang/String;)I

    move-result v1

    :goto_18
    return v1

    .line 932
    .end local v0    # "adnCache":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized updateUsimPBRecordsByIndexWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I
    .registers 13
    .param p1, "efid"    # I
    .param p2, "record"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "index"    # I

    monitor-enter p0

    .line 618
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_67

    .line 624
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_1b

    .line 625
    const-string v0, "updateUsimPBRecordsByIndexWithError mMtkAdnCache is null"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_6f

    .line 626
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 629
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_1b
    :try_start_1b
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_43

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPBRecordsByIndexWithError: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 633
    :cond_43
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 634
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 636
    .local v0, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v0
    :try_end_4c
    .catchall {:try_start_1b .. :try_end_4c} :catchall_6f

    .line 637
    :try_start_4c
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 638
    .local v8, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnByIndex(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 639
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 640
    .end local v8    # "response":Landroid/os/Message;
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_64

    .line 641
    :try_start_60
    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_6f

    monitor-exit p0

    return v1

    .line 640
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v1

    .line 620
    .end local v0    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_67
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6f

    .line 617
    .end local p1    # "efid":I
    .end local p2    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p3    # "index":I
    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I
    .registers 15
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    monitor-enter p0

    .line 403
    const/4 v0, -0x1

    .line 404
    .local v0, "index":I
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_94

    .line 410
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v1, :cond_1c

    .line 411
    const-string v1, "updateUsimPBRecordsBySearchWithError mMtkAdnCache is null"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_9c

    .line 412
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 415
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_1c
    :try_start_1c
    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v1, :cond_49

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimPBRecordsBySearchWithError: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")==>("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 419
    :cond_49
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 420
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    .line 422
    .local v1, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v1
    :try_end_52
    .catchall {:try_start_1c .. :try_end_52} :catchall_9c

    .line 423
    :try_start_52
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 424
    .local v9, "response":Landroid/os/Message;
    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_64

    .line 425
    const-string v2, ""

    invoke-virtual {p3, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setNumber(Ljava/lang/String;)V

    .line 427
    :cond_64
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnBySearch(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Ljava/lang/String;Landroid/os/Message;Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .line 429
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 430
    .end local v9    # "response":Landroid/os/Message;
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_52 .. :try_end_74} :catchall_91

    .line 431
    :try_start_74
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8f

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimPBRecordsBySearchWithError success index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_74 .. :try_end_8d} :catchall_9c

    .line 433
    monitor-exit p0

    return v0

    .line 435
    :cond_8f
    monitor-exit p0

    return v2

    .line 430
    :catchall_91
    move-exception v2

    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    :try_start_93
    throw v2

    .line 406
    .end local v1    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_94
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9c

    .line 402
    .end local v0    # "index":I
    .end local p1    # "efid":I
    .end local p2    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p3    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catchall_9c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 27
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "newAnr"    # Ljava/lang/String;
    .param p5, "newGrpIds"    # Ljava/lang/String;
    .param p6, "newEmails"    # [Ljava/lang/String;
    .param p7, "index"    # I

    move-object/from16 v1, p0

    monitor-enter p0

    .line 566
    :try_start_3
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c3

    .line 572
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_1d

    .line 573
    const-string v0, "updateUsimPBRecordsInEfByIndexWithError mMtkAdnCache is null"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_cd

    .line 574
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 577
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_1d
    :try_start_1d
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_56

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimPBRecordsInEfByIndexWithError: efid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Index="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p7

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ==>  newAnr= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newGrpIds = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_5e

    .line 577
    :cond_56
    move/from16 v2, p1

    move-object/from16 v14, p4

    move-object/from16 v12, p5

    move/from16 v15, p7

    .line 582
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 583
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    move-object v11, v0

    .line 585
    .local v11, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v11
    :try_end_68
    .catchall {:try_start_1d .. :try_end_68} :catchall_cd

    .line 586
    :try_start_68
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_b9

    .line 587
    .local v16, "response":Landroid/os/Message;
    if-nez p3, :cond_7d

    .line 588
    :try_start_71
    const-string v0, ""
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_76

    move-object/from16 v17, v0

    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .local v0, "newPhoneNumber":Ljava/lang/String;
    goto :goto_7f

    .line 597
    .end local v0    # "newPhoneNumber":Ljava/lang/String;
    .end local v16    # "response":Landroid/os/Message;
    .restart local p3    # "newPhoneNumber":Ljava/lang/String;
    :catchall_76
    move-exception v0

    move-object/from16 v18, p2

    move-object/from16 v17, p3

    move-object v4, v11

    goto :goto_bf

    .line 587
    .restart local v16    # "response":Landroid/os/Message;
    :cond_7d
    move-object/from16 v17, p3

    .line 590
    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .local v17, "newPhoneNumber":Ljava/lang/String;
    :goto_7f
    if-nez p2, :cond_8b

    .line 591
    :try_start_81
    const-string v0, ""
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_86

    move-object/from16 v18, v0

    .end local p2    # "newTag":Ljava/lang/String;
    .local v0, "newTag":Ljava/lang/String;
    goto :goto_8d

    .line 597
    .end local v0    # "newTag":Ljava/lang/String;
    .end local v16    # "response":Landroid/os/Message;
    .restart local p2    # "newTag":Ljava/lang/String;
    :catchall_86
    move-exception v0

    move-object/from16 v18, p2

    move-object v4, v11

    goto :goto_bf

    .line 590
    .restart local v16    # "response":Landroid/os/Message;
    :cond_8b
    move-object/from16 v18, p2

    .line 593
    .end local p2    # "newTag":Ljava/lang/String;
    .local v18, "newTag":Ljava/lang/String;
    :goto_8d
    :try_start_8d
    new-instance v13, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object v3, v13

    move/from16 v4, p1

    move/from16 v5, p7

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .local v13, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :try_end_a3
    .catchall {:try_start_8d .. :try_end_a3} :catchall_b6

    const/4 v3, 0x0

    move-object v4, v11

    .end local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local v4, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    move-object v11, v0

    move/from16 v12, p1

    move/from16 v14, p7

    move-object v15, v3

    :try_start_ab
    invoke-virtual/range {v11 .. v16}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnByIndex(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 596
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 597
    .end local v13    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v16    # "response":Landroid/os/Message;
    monitor-exit v4
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_c1

    .line 598
    :try_start_b2
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_b4
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_cd

    monitor-exit p0

    return v0

    .line 597
    .end local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :catchall_b6
    move-exception v0

    move-object v4, v11

    .end local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    goto :goto_bf

    .end local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local p2    # "newTag":Ljava/lang/String;
    .restart local p3    # "newPhoneNumber":Ljava/lang/String;
    :catchall_b9
    move-exception v0

    move-object v4, v11

    move-object/from16 v18, p2

    move-object/from16 v17, p3

    .end local v11    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local p2    # "newTag":Ljava/lang/String;
    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .restart local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v17    # "newPhoneNumber":Ljava/lang/String;
    .restart local v18    # "newTag":Ljava/lang/String;
    :goto_bf
    :try_start_bf
    monitor-exit v4
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c1

    :try_start_c0
    throw v0

    :catchall_c1
    move-exception v0

    goto :goto_bf

    .line 568
    .end local v4    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local p2    # "newTag":Ljava/lang/String;
    .restart local p3    # "newPhoneNumber":Ljava/lang/String;
    :cond_c3
    move/from16 v2, p1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cd
    .catchall {:try_start_c0 .. :try_end_cd} :catchall_cd

    .line 565
    .end local p1    # "efid":I
    .end local p2    # "newTag":Ljava/lang/String;
    .end local p3    # "newPhoneNumber":Ljava/lang/String;
    .end local p4    # "newAnr":Ljava/lang/String;
    .end local p5    # "newGrpIds":Ljava/lang/String;
    .end local p6    # "newEmails":[Ljava/lang/String;
    .end local p7    # "index":I
    :catchall_cd
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 35
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "oldAnr"    # Ljava/lang/String;
    .param p5, "oldGrpIds"    # Ljava/lang/String;
    .param p6, "oldEmails"    # [Ljava/lang/String;
    .param p7, "newTag"    # Ljava/lang/String;
    .param p8, "newPhoneNumber"    # Ljava/lang/String;
    .param p9, "newAnr"    # Ljava/lang/String;
    .param p10, "newGrpIds"    # Ljava/lang/String;
    .param p11, "newEmails"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    monitor-enter p0

    .line 345
    const/4 v2, -0x1

    .line 346
    .local v2, "index":I
    :try_start_4
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f4

    .line 352
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;

    if-nez v0, :cond_1e

    .line 353
    const-string v0, "updateUsimPBRecordsInEfBySearchWithError mMtkAdnCache is null"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_102

    .line 354
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 357
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;
    :cond_1e
    :try_start_1e
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->DBG:Z

    if-eqz v0, :cond_61

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimPBRecordsInEfBySearchWithError: efid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "oldAnr"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " oldGrpIds "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "==> newAnr= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newGrpIds = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p10

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_6b

    .line 357
    :cond_61
    move/from16 v3, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v10, p9

    move-object/from16 v8, p10

    .line 362
    :goto_6b
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->checkThread()V

    .line 363
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    move-object v5, v0

    .line 365
    .local v5, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v5
    :try_end_75
    .catchall {:try_start_1e .. :try_end_75} :catchall_102

    .line 366
    :try_start_75
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 367
    .local v9, "response":Landroid/os/Message;
    new-instance v6, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    invoke-direct {v6, v4, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_ea

    .line 368
    .local v6, "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-nez p8, :cond_94

    .line 369
    :try_start_87
    const-string v0, ""
    :try_end_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_8c

    move-object/from16 v21, v0

    .end local p8    # "newPhoneNumber":Ljava/lang/String;
    .local v0, "newPhoneNumber":Ljava/lang/String;
    goto :goto_96

    .line 379
    .end local v0    # "newPhoneNumber":Ljava/lang/String;
    .end local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    .restart local p8    # "newPhoneNumber":Ljava/lang/String;
    :catchall_8c
    move-exception v0

    move-object/from16 v22, p7

    move-object/from16 v21, p8

    move-object v15, v5

    goto/16 :goto_f0

    .line 368
    .restart local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v9    # "response":Landroid/os/Message;
    :cond_94
    move-object/from16 v21, p8

    .line 371
    .end local p8    # "newPhoneNumber":Ljava/lang/String;
    .local v21, "newPhoneNumber":Ljava/lang/String;
    :goto_96
    if-nez p7, :cond_a2

    .line 372
    :try_start_98
    const-string v0, ""
    :try_end_9a
    .catchall {:try_start_98 .. :try_end_9a} :catchall_9d

    move-object/from16 v22, v0

    .end local p7    # "newTag":Ljava/lang/String;
    .local v0, "newTag":Ljava/lang/String;
    goto :goto_a4

    .line 379
    .end local v0    # "newTag":Ljava/lang/String;
    .end local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    .restart local p7    # "newTag":Ljava/lang/String;
    :catchall_9d
    move-exception v0

    move-object/from16 v22, p7

    move-object v15, v5

    goto :goto_f0

    .line 371
    .restart local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v9    # "response":Landroid/os/Message;
    :cond_a2
    move-object/from16 v22, p7

    .line 374
    .end local p7    # "newTag":Ljava/lang/String;
    .local v22, "newTag":Ljava/lang/String;
    :goto_a4
    :try_start_a4
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v0

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    move-object/from16 v18, p9

    move-object/from16 v19, p11

    move-object/from16 v20, p10

    invoke-direct/range {v13 .. v20}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 376
    .local v7, "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mMtkAdnCache:Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :try_end_b9
    .catchall {:try_start_a4 .. :try_end_b9} :catchall_e7

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v4, v0

    move-object v15, v5

    .end local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local v15, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    move/from16 v5, p1

    move-object v8, v13

    move-object v10, v14

    :try_start_c1
    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->updateAdnBySearch(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Ljava/lang/String;Landroid/os/Message;Ljava/lang/Object;)I

    move-result v0

    move v2, v0

    .line 378
    invoke-virtual {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    .line 379
    .end local v6    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v7    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    monitor-exit v15
    :try_end_ca
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_f2

    .line 380
    :try_start_ca
    iget v0, v1, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->mErrorCause:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_e5

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsimPBRecordsInEfBySearchWithError success index is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;->logi(Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_ca .. :try_end_e3} :catchall_102

    .line 382
    monitor-exit p0

    return v2

    .line 384
    :cond_e5
    monitor-exit p0

    return v0

    .line 379
    .end local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :catchall_e7
    move-exception v0

    move-object v15, v5

    .end local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    goto :goto_f0

    .end local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v21    # "newPhoneNumber":Ljava/lang/String;
    .end local v22    # "newTag":Ljava/lang/String;
    .restart local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local p7    # "newTag":Ljava/lang/String;
    .restart local p8    # "newPhoneNumber":Ljava/lang/String;
    :catchall_ea
    move-exception v0

    move-object v15, v5

    move-object/from16 v22, p7

    move-object/from16 v21, p8

    .end local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local p7    # "newTag":Ljava/lang/String;
    .end local p8    # "newPhoneNumber":Ljava/lang/String;
    .restart local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v21    # "newPhoneNumber":Ljava/lang/String;
    .restart local v22    # "newTag":Ljava/lang/String;
    :goto_f0
    :try_start_f0
    monitor-exit v15
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_f2

    :try_start_f1
    throw v0

    :catchall_f2
    move-exception v0

    goto :goto_f0

    .line 348
    .end local v15    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v21    # "newPhoneNumber":Ljava/lang/String;
    .end local v22    # "newTag":Ljava/lang/String;
    .restart local p7    # "newTag":Ljava/lang/String;
    .restart local p8    # "newPhoneNumber":Ljava/lang/String;
    :cond_f4
    move/from16 v3, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_102
    .catchall {:try_start_f1 .. :try_end_102} :catchall_102

    .line 344
    .end local v2    # "index":I
    .end local p1    # "efid":I
    .end local p2    # "oldTag":Ljava/lang/String;
    .end local p3    # "oldPhoneNumber":Ljava/lang/String;
    .end local p4    # "oldAnr":Ljava/lang/String;
    .end local p5    # "oldGrpIds":Ljava/lang/String;
    .end local p6    # "oldEmails":[Ljava/lang/String;
    .end local p7    # "newTag":Ljava/lang/String;
    .end local p8    # "newPhoneNumber":Ljava/lang/String;
    .end local p9    # "newAnr":Ljava/lang/String;
    .end local p10    # "newGrpIds":Ljava/lang/String;
    .end local p11    # "newEmails":[Ljava/lang/String;
    :catchall_102
    move-exception v0

    monitor-exit p0

    throw v0
.end method
