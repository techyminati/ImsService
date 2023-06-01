.class public Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
.super Lcom/android/internal/telephony/uicc/AdnRecordCache;
.source "MtkAdnRecordCache.java"


# static fields
.field private static final ADN_FILE_SIZE:I = 0xfa

.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkAdnRecordCache"

.field public static final MAX_PHB_NAME_LENGTH:I = 0x3c

.field public static final MAX_PHB_NUMBER_ANR_COUNT:I = 0x1

.field public static final MAX_PHB_NUMBER_ANR_LENGTH:I = 0x14

.field public static final MAX_PHB_NUMBER_LENGTH:I = 0x28

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private final mLock:Ljava/lang/Object;

.field protected mMtkAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeedToWait:Z

.field private mSlotId:I

.field private mSuccess:Z

.field private mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 65
    nop

    .line 66
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b

    .line 67
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    nop

    :goto_1c
    sput-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->DBG:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .registers 6
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    .line 86
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 93
    iput-object p2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 94
    iput-object p3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 95
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    .line 96
    if-eqz p3, :cond_31

    move-object v0, p3

    check-cast v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/uicc/MtkUiccCardApplication;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    .line 97
    :cond_31
    return-void
.end method

.method private clearUserWriters()V
    .registers 6

    .line 125
    const-string v0, "clearUserWriters"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedToWait "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 128
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    if-eqz v1, :cond_2a

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 130
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 132
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_5f

    .line 133
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 134
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    if-ge v1, v0, :cond_59

    .line 135
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdnCace reset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 136
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-direct {p0, v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 138
    .end local v1    # "i":I
    :cond_59
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 139
    return-void

    .line 132
    .end local v0    # "size":I
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method private dumpAdnLikeFile()V
    .registers 9

    .line 898
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 899
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpAdnLikeFile size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 901
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v0, :cond_82

    .line 902
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 904
    .local v2, "key":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 905
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpAdnLikeFile index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "records size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 906
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7f

    .line 907
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 908
    .local v5, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMtkAdnLikeFiles["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 906
    .end local v5    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 901
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .end local v4    # "j":I
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 911
    .end local v1    # "i":I
    .end local v2    # "key":I
    :cond_82
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .line 143
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    .registers 6
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;
    .param p3, "ril_errno"    # I

    .line 151
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 153
    .local v0, "e":Lcom/android/internal/telephony/CommandException;
    if-eqz p1, :cond_12

    .line 154
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logw(Ljava/lang/String;)V

    .line 155
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 156
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 158
    :cond_12
    return-void
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .registers 4
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 867
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->addContactToGroup(II)Z

    move-result v0

    return v0
.end method

.method public getAdnRecordsCapacityExt()[I
    .registers 2

    .line 985
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getAdnRecordsCapacityExt()[I

    move-result-object v0

    return-object v0
.end method

.method public getAnrCount()I
    .registers 2

    .line 945
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getAnrCount()I

    move-result v0

    return v0
.end method

.method public getEmailCount()I
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getEmailCount()I

    move-result v0

    return v0
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    .registers 2

    .line 977
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsIfLoaded(ILjava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "efid"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;",
            ">;"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSlotId()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    return v0
.end method

.method public getSneRecordLen()I
    .registers 2

    .line 965
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getSneRecordLen()I

    move-result v0

    return v0
.end method

.method public getUpbDone()I
    .registers 2

    .line 981
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUpbDone()I

    move-result v0

    return v0
.end method

.method public getUsimAasById(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 919
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/phb/AlphaTag;",
            ">;"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasMaxCount()I
    .registers 2

    .line 953
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimAasMaxNameLen()I
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v0

    return v0
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .registers 3
    .param p1, "nGasId"    # I

    .line 851
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/phb/UsimGroup;",
            ">;"
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimGroups()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGrpMaxCount()I
    .registers 2

    .line 893
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimGrpMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimGrpMaxNameLen()I
    .registers 2

    .line 889
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->getUsimGrpMaxNameLen()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 748
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14e

    goto/16 :goto_14d

    .line 767
    :pswitch_7
    const-string v0, "EVENT_UPDATE_ADN_DONE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_f
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    if-eqz v1, :cond_fd

    .line 770
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 771
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 772
    .local v2, "efid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 773
    .local v3, "index":I
    iget-object v4, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .line 775
    .local v4, "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_ba

    if-eqz v4, :cond_ba

    .line 777
    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setRecordIndex(I)V

    .line 778
    iget v5, v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    if-gtz v5, :cond_2e

    .line 779
    iput v2, v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    .line 782
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMtkAdnLikeFiles changed index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",adn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  efid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 785
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    const/16 v6, 0x4f3b

    if-eqz v5, :cond_93

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_93

    .line 787
    if-ne v2, v6, :cond_6a

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 788
    invoke-static {v5}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 789
    add-int/lit16 v3, v3, -0xfa

    .line 792
    :cond_6a
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v7, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 793
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " index:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "   efid:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 796
    :cond_93
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    if-eqz v5, :cond_ba

    const/16 v5, 0x6f3b

    if-eq v2, v5, :cond_ba

    .line 797
    if-ne v2, v6, :cond_b3

    .line 801
    add-int/lit16 v3, v3, 0xfa

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " index2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 805
    :cond_b3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    add-int/lit8 v6, v3, -0x1

    .line 806
    invoke-virtual {v5, v6, v4}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateUsimPhonebookRecordsList(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V

    .line 810
    :cond_ba
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 811
    .local v5, "response":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 813
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MtkAdnRecordCache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 815
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_ec

    if-eqz v5, :cond_ec

    .line 816
    const/4 v6, 0x0

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v6, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 817
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 819
    :cond_ec
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v7, 0x0

    if-nez v6, :cond_f3

    const/4 v6, 0x1

    goto :goto_f4

    :cond_f3
    move v6, v7

    :goto_f4
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    .line 820
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 821
    iget-object v6, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 823
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    .end local v3    # "index":I
    .end local v4    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v5    # "response":Landroid/os/Message;
    :cond_fd
    monitor-exit v0

    .line 824
    goto :goto_14d

    .line 823
    :catchall_ff
    move-exception v1

    monitor-exit v0
    :try_end_101
    .catchall {:try_start_f .. :try_end_101} :catchall_ff

    throw v1

    .line 751
    :pswitch_102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 752
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 754
    .local v1, "efid":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    monitor-enter v2

    .line 755
    :try_start_10b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 756
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v4, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 757
    monitor-exit v2
    :try_end_119
    .catchall {:try_start_10b .. :try_end_119} :catchall_14a

    .line 758
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_127

    .line 759
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_146

    .line 761
    :cond_127
    const-string v2, "MtkAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_LOAD_ALL_ADN_LIKE_DONE exception(slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    :goto_146
    invoke-virtual {p0, v3, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 765
    goto :goto_14d

    .line 757
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :catchall_14a
    move-exception v3

    :try_start_14b
    monitor-exit v2
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14a

    throw v3

    .line 828
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "efid":I
    :goto_14d
    return-void

    :pswitch_data_14e
    .packed-switch 0x1
        :pswitch_102
        :pswitch_7
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .registers 3
    .param p1, "grpName"    # Ljava/lang/String;

    .line 885
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->hasExistGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasSne()Z
    .registers 2

    .line 961
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->hasSne()Z

    move-result v0

    return v0
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .registers 3
    .param p1, "aasName"    # Ljava/lang/String;

    .line 927
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->insertUsimAas(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertUsimGroup(Ljava/lang/String;)I
    .registers 3
    .param p1, "grpName"    # Ljava/lang/String;

    .line 859
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->insertUsimGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAdnAccessible()Z
    .registers 2

    .line 969
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isAdnAccessible()Z

    move-result v0

    return v0
.end method

.method public isUsimPhbEfAndNeedReset(I)Z
    .registers 3
    .param p1, "fileId"    # I

    .line 973
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isUsimPhbEfAndNeedReset(I)Z

    move-result v0

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 831
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecordCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_24
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecordCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecordCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAdnRecordCache"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .registers 5
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .line 880
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v0

    return v0
.end method

.method protected notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .registers 8
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .line 716
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_3

    .line 717
    return-void

    .line 720
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_8
    if-ge v0, v1, :cond_33

    .line 721
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 723
    .local v2, "waiter":Landroid/os/Message;
    if-eqz v2, :cond_30

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotifyWaiters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 725
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 726
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 720
    .end local v2    # "waiter":Landroid/os/Message;
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 729
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_33
    return-void
.end method

.method public removeContactFromGroup(II)Z
    .registers 4
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .line 871
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeContactFromGroup(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimAasById(II)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .line 923
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimGroupById(I)Z
    .registers 3
    .param p1, "nGasId"    # I

    .line 855
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeUsimGroupById(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .registers 10
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestLoadAllAdnLike efid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extensionEf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x0

    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_28

    .line 652
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadEfFilesFromUsim(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    goto :goto_2c

    .line 654
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :cond_28
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getRecordsIfLoaded(ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 656
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :goto_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLoadAllAdnLike efid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result = null ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_44

    move v5, v3

    goto :goto_45

    :cond_44
    move v5, v4

    :goto_45
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 659
    if-eqz v0, :cond_5d

    .line 660
    if-eqz p3, :cond_5c

    .line 661
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 662
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 665
    :cond_5c
    return-void

    .line 666
    :cond_5d
    if-nez v0, :cond_68

    if-ne p1, v1, :cond_68

    .line 667
    const-string v1, "Error occurs when query PBR"

    const/4 v2, 0x2

    invoke-direct {p0, p3, v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 671
    return-void

    .line 675
    :cond_68
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    monitor-enter v1

    .line 676
    :try_start_6b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 678
    .local v2, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v2, :cond_7a

    .line 682
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    monitor-exit v1

    return-void

    .line 688
    :cond_7a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 689
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 692
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_6b .. :try_end_89} :catchall_c4

    .line 694
    if-gez p2, :cond_b5

    .line 697
    if-eqz p3, :cond_b4

    .line 698
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 701
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 704
    :cond_b4
    return-void

    .line 707
    :cond_b5
    new-instance v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 708
    invoke-virtual {p0, v3, p1, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 707
    invoke-virtual {v1, p1, p2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 709
    return-void

    .line 692
    .end local v2    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :catchall_c4
    move-exception v2

    :try_start_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v2
.end method

.method public reset()V
    .registers 3

    .line 105
    const-string v0, "reset"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mMtkAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->reset()V

    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    monitor-enter v0

    .line 109
    :try_start_12
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->clearWaiters()V

    .line 110
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_25

    .line 111
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->clearUserWriters()V

    .line 114
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 115
    invoke-static {}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->clearAdnRecordSize()V

    .line 118
    :cond_24
    return-void

    .line 110
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public updateAdnAas(II)Z
    .registers 4
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .line 941
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateAdnAas(II)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateAdnByIndex(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .registers 29
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p5

    monitor-enter p0

    .line 172
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnByIndex efid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", recordIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", adn ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v2

    .line 175
    .local v2, "extensionEF":I
    const/4 v3, 0x0

    .line 176
    .local v3, "i":I
    const/4 v4, 0x0

    .line 178
    .local v4, "anr":Ljava/lang/String;
    if-gez v2, :cond_5a

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF is not known ADN-like EF:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-direct {v1, v11, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_b .. :try_end_58} :catchall_307

    .line 181
    monitor-exit p0

    return-void

    .line 184
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_5a
    :try_start_5a
    iget-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v5, :cond_62

    .line 185
    const-string v5, ""

    iput-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 187
    :cond_62
    iget-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3c

    if-le v5, v6, :cond_86

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the input length of mAlphaTag is too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f6

    invoke-direct {v1, v11, v5, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_84
    .catchall {:try_start_5a .. :try_end_84} :catchall_307

    .line 193
    monitor-exit p0

    return-void

    .line 195
    :cond_86
    :try_start_86
    iget-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    if-nez v5, :cond_8e

    .line 196
    const-string v5, ""

    iput-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 198
    :cond_8e
    iget-object v5, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 199
    .local v5, "numLength":I
    iget-object v6, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    const/16 v7, 0x2b

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_a1

    .line 200
    add-int/lit8 v5, v5, -0x1

    .line 203
    :cond_a1
    const/16 v6, 0x28

    if-le v5, v6, :cond_bf

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the input length of phoneNumber is too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f5

    invoke-direct {v1, v11, v6, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_bd
    .catchall {:try_start_86 .. :try_end_bd} :catchall_307

    .line 209
    monitor-exit p0

    return-void

    .line 212
    :cond_bf
    const/4 v3, 0x0

    move v12, v5

    .end local v5    # "numLength":I
    .local v12, "numLength":I
    :goto_c1
    const/4 v13, 0x1

    if-ge v3, v13, :cond_f7

    .line 213
    :try_start_c4
    invoke-virtual {v9, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 214
    if-eqz v4, :cond_f4

    .line 215
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 216
    .end local v12    # "numLength":I
    .restart local v5    # "numLength":I
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v8, :cond_d7

    .line 217
    add-int/lit8 v5, v5, -0x1

    .line 220
    :cond_d7
    const/16 v6, 0x14

    if-le v5, v6, :cond_f3

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the input length of additional number is too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f9

    invoke-direct {v1, v11, v6, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_f1
    .catchall {:try_start_c4 .. :try_end_f1} :catchall_307

    .line 226
    monitor-exit p0

    return-void

    .line 220
    :cond_f3
    move v12, v5

    .line 212
    .end local v5    # "numLength":I
    .restart local v12    # "numLength":I
    :cond_f4
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 231
    :cond_f7
    :try_start_f7
    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v6, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v5

    const/16 v14, 0x1fd

    if-nez v5, :cond_10a

    .line 232
    const-string v5, "the email string is too long"

    invoke-direct {v1, v11, v5, v14}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_108
    .catchall {:try_start_f7 .. :try_end_108} :catchall_307

    .line 236
    monitor-exit p0

    return-void

    .line 241
    :cond_10a
    const/4 v5, 0x0

    .line 243
    .local v5, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    const/16 v15, 0x4f30

    const/4 v8, 0x0

    if-ne v0, v15, :cond_146

    .line 244
    :try_start_110
    iget-object v6, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v6, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadEfFilesFromUsim(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 246
    .local v6, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    if-nez v6, :cond_130

    .line 247
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adn list not exist for EF:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1fb

    invoke-direct {v1, v11, v7, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_12e
    .catchall {:try_start_110 .. :try_end_12e} :catchall_307

    .line 251
    monitor-exit p0

    return-void

    .line 254
    :cond_130
    add-int/lit8 v7, v10, -0x1

    :try_start_132
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object v5, v7

    .line 255
    iget v7, v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    move v0, v7

    .line 256
    .end local p1    # "efid":I
    .local v0, "efid":I
    iget v7, v5, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    move v2, v7

    .line 258
    iput v0, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    move v7, v0

    move/from16 v16, v2

    move-object v6, v5

    goto :goto_14a

    .line 243
    .end local v0    # "efid":I
    .end local v6    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .restart local p1    # "efid":I
    :cond_146
    move v7, v0

    move/from16 v16, v2

    move-object v6, v5

    .line 262
    .end local v2    # "extensionEF":I
    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p1    # "efid":I
    .local v6, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v7, "efid":I
    .local v16, "extensionEF":I
    :goto_14a
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v2, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v10, v2, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v0

    const/16 v5, 0x1fc

    if-nez v0, :cond_15d

    .line 263
    const-string v0, "drop the email for the limitation of the SIM card"

    invoke-direct {v1, v11, v0, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_15b
    .catchall {:try_start_132 .. :try_end_15b} :catchall_307

    .line 267
    monitor-exit p0

    return-void

    .line 270
    :cond_15d
    const/4 v0, 0x0

    move-object/from16 v17, v4

    move v4, v0

    .end local v3    # "i":I
    .local v4, "i":I
    .local v17, "anr":Ljava/lang/String;
    :goto_161
    if-ge v4, v13, :cond_18c

    .line 271
    :try_start_163
    invoke-virtual {v9, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    .end local v17    # "anr":Ljava/lang/String;
    .local v0, "anr":Ljava/lang/String;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v2, v0, v10, v4, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v2

    if-nez v2, :cond_187

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop the additional number for the update fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fa

    invoke-direct {v1, v11, v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_185
    .catchall {:try_start_163 .. :try_end_185} :catchall_307

    .line 277
    monitor-exit p0

    return-void

    .line 270
    :cond_187
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v0

    goto :goto_161

    .line 281
    .end local v0    # "anr":Ljava/lang/String;
    .restart local v17    # "anr":Ljava/lang/String;
    :cond_18c
    :try_start_18c
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v2, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v0, v10, v2, v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkSneCapacityFree(ILjava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v0

    const/16 v3, 0x1fe

    if-nez v0, :cond_19f

    .line 282
    const-string v0, "drop the sne for the limitation of the SIM card"

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_19d
    .catchall {:try_start_18c .. :try_end_19d} :catchall_307

    .line 286
    monitor-exit p0

    return-void

    .line 290
    :cond_19f
    :try_start_19f
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    move-object/from16 v18, v0

    .line 291
    .local v18, "pendingResponse":Landroid/os/Message;
    if-eqz v18, :cond_1c9

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-direct {v1, v11, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1c7
    .catchall {:try_start_19f .. :try_end_1c7} :catchall_307

    .line 294
    monitor-exit p0

    return-void

    .line 297
    :cond_1c9
    :try_start_1c9
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    const/16 v2, 0x4f3c

    const/16 v14, 0x4f3b

    const/16 v13, 0x4f3a

    const/16 v0, 0x6f3a

    if-eq v7, v0, :cond_1e4

    if-eq v7, v15, :cond_1e4

    if-eq v7, v13, :cond_1e4

    if-eq v7, v14, :cond_1e4

    if-eq v7, v2, :cond_1e4

    const/16 v2, 0x4f3d

    if-ne v7, v2, :cond_1f9

    .line 300
    :cond_1e4
    iget-object v2, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f9

    iget-object v2, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f9

    .line 302
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v2, v10}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->removeContactGroup(I)Z

    .line 307
    :cond_1f9
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_1ff
    .catchall {:try_start_1c9 .. :try_end_1ff} :catchall_307

    if-nez v2, :cond_203

    .line 308
    monitor-exit p0

    return-void

    .line 311
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_203
    :try_start_203
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_206
    .catchall {:try_start_203 .. :try_end_206} :catchall_307

    .line 312
    const/4 v3, 0x0

    :try_start_207
    iput-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    .line 313
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 315
    new-instance v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;

    iget-object v5, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 317
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v7, v10, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21
    :try_end_218
    .catchall {:try_start_207 .. :try_end_218} :catchall_2fc

    .line 315
    move-object/from16 v19, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move/from16 v20, v4

    .end local v4    # "i":I
    .local v20, "i":I
    move v4, v7

    move/from16 v5, v16

    move-object/from16 v22, v6

    .end local v6    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v22, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move/from16 v6, p3

    move v14, v7

    .end local v7    # "efid":I
    .local v14, "efid":I
    move-object/from16 v7, p4

    move-object/from16 v8, v21

    :try_start_22b
    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->updateEF(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_22e
    .catchall {:try_start_22b .. :try_end_22e} :catchall_2f8

    .line 321
    :goto_22e
    :try_start_22e
    iget-boolean v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z
    :try_end_230
    .catch Ljava/lang/InterruptedException; {:try_start_22e .. :try_end_230} :catch_2f0
    .catchall {:try_start_22e .. :try_end_230} :catchall_2ec

    if-eqz v2, :cond_242

    .line 322
    :try_start_232
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_237
    .catch Ljava/lang/InterruptedException; {:try_start_232 .. :try_end_237} :catch_23d
    .catchall {:try_start_232 .. :try_end_237} :catchall_238

    goto :goto_22e

    .line 327
    :catchall_238
    move-exception v0

    move-object/from16 v5, v22

    goto/16 :goto_303

    .line 324
    :catch_23d
    move-exception v0

    move-object/from16 v5, v22

    goto/16 :goto_2f3

    .line 326
    :cond_242
    nop

    .line 327
    :try_start_243
    monitor-exit v19
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_2ec

    .line 328
    :try_start_244
    iget-boolean v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z
    :try_end_246
    .catchall {:try_start_244 .. :try_end_246} :catchall_307

    if-nez v2, :cond_24a

    .line 329
    monitor-exit p0

    return-void

    .line 332
    :cond_24a
    if-eq v14, v0, :cond_26f

    if-eq v14, v15, :cond_26f

    if-eq v14, v13, :cond_26f

    const/16 v0, 0x4f3b

    if-eq v14, v0, :cond_26f

    const/16 v0, 0x4f3c

    if-eq v14, v0, :cond_26f

    const/16 v0, 0x4f3d

    if-ne v14, v0, :cond_25e

    const/4 v0, 0x0

    goto :goto_270

    .line 380
    :cond_25e
    const/16 v0, 0x6f3b

    if-ne v14, v0, :cond_269

    .line 381
    const/4 v0, 0x0

    :try_start_263
    invoke-static {v11, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 382
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_269
    .catchall {:try_start_263 .. :try_end_269} :catchall_307

    .line 385
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_269
    move/from16 v4, v20

    move-object/from16 v5, v22

    goto/16 :goto_2d9

    .line 332
    :cond_26f
    const/4 v0, 0x0

    .line 335
    :goto_270
    :try_start_270
    iget-object v2, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v3, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;
    :try_end_274
    .catch Ljava/lang/Exception; {:try_start_270 .. :try_end_274} :catch_2e2
    .catchall {:try_start_270 .. :try_end_274} :catchall_307

    move-object/from16 v5, v22

    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :try_start_276
    invoke-virtual {v2, v3, v10, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v2

    .line 337
    .local v2, "mResult":I
    const/16 v3, -0x1e

    if-ne v3, v2, :cond_286

    .line 338
    const-string v0, "drop the SNE for the limitation of the SIM card"

    const/16 v3, 0x1fe

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_291

    .line 342
    :cond_286
    const/16 v4, -0x28

    if-ne v4, v2, :cond_294

    .line 343
    const-string v0, "the sne string is too long"

    const/16 v3, 0x1ff

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_291} :catch_2de
    .catchall {:try_start_276 .. :try_end_291} :catchall_307

    .line 379
    .end local v2    # "mResult":I
    :goto_291
    move/from16 v4, v20

    goto :goto_2d9

    .line 348
    .restart local v2    # "mResult":I
    :cond_294
    const/4 v6, 0x0

    .end local v20    # "i":I
    .local v6, "i":I
    :goto_295
    const/4 v7, 0x1

    if-ge v6, v7, :cond_2ab

    .line 349
    :try_start_298
    invoke-virtual {v9, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v8
    :try_end_29c
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_29c} :catch_2db
    .catchall {:try_start_298 .. :try_end_29c} :catchall_307

    .line 350
    .end local v17    # "anr":Ljava/lang/String;
    .local v8, "anr":Ljava/lang/String;
    :try_start_29c
    iget-object v13, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v13, v8, v10, v6, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_2a1} :catch_2a6
    .catchall {:try_start_29c .. :try_end_2a1} :catchall_307

    .line 348
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v8

    goto :goto_295

    .line 374
    .end local v2    # "mResult":I
    :catch_2a6
    move-exception v0

    move v4, v6

    move-object/from16 v17, v8

    goto :goto_2e7

    .line 352
    .end local v8    # "anr":Ljava/lang/String;
    .restart local v2    # "mResult":I
    .restart local v17    # "anr":Ljava/lang/String;
    :cond_2ab
    :try_start_2ab
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v8, v9, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    .line 353
    invoke-virtual {v7, v8, v10, v5}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v7

    .line 354
    .local v7, "success":I
    if-ne v3, v7, :cond_2bd

    .line 355
    const-string v0, "drop the email for the limitation of the SIM card"

    const/16 v3, 0x1fc

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_2d8

    .line 359
    :cond_2bd
    if-ne v4, v7, :cond_2c7

    .line 360
    const-string v0, "the email string is too long"

    const/16 v3, 0x1fd

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_2d8

    .line 364
    :cond_2c7
    const/16 v3, -0x32

    if-ne v3, v7, :cond_2d2

    .line 365
    const-string v0, "Unkown error occurs when update email"

    const/4 v3, 0x2

    invoke-direct {v1, v11, v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_2d8

    .line 370
    :cond_2d2
    invoke-static {v11, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 371
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_2d8
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2d8} :catch_2db
    .catchall {:try_start_2ab .. :try_end_2d8} :catchall_307

    .line 379
    .end local v2    # "mResult":I
    .end local v7    # "success":I
    :goto_2d8
    move v4, v6

    .line 385
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :goto_2d9
    monitor-exit p0

    return-void

    .line 374
    .end local v4    # "i":I
    .restart local v6    # "i":I
    :catch_2db
    move-exception v0

    move v4, v6

    goto :goto_2e7

    .end local v6    # "i":I
    .restart local v20    # "i":I
    :catch_2de
    move-exception v0

    move/from16 v4, v20

    goto :goto_2e7

    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_2e2
    move-exception v0

    move-object/from16 v5, v22

    move/from16 v4, v20

    .line 375
    .end local v20    # "i":I
    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "i":I
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_2e7
    :try_start_2e7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2ea
    .catchall {:try_start_2e7 .. :try_end_2ea} :catchall_307

    .line 378
    monitor-exit p0

    return-void

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v20    # "i":I
    .restart local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catchall_2ec
    move-exception v0

    move-object/from16 v5, v22

    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_303

    .line 324
    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catch_2f0
    move-exception v0

    move-object/from16 v5, v22

    .line 325
    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_2f3
    :try_start_2f3
    monitor-exit v19
    :try_end_2f4
    .catchall {:try_start_2f3 .. :try_end_2f4} :catchall_2f6

    monitor-exit p0

    return-void

    .line 327
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :catchall_2f6
    move-exception v0

    goto :goto_303

    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catchall_2f8
    move-exception v0

    move-object/from16 v5, v22

    .end local v22    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_303

    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v14    # "efid":I
    .end local v20    # "i":I
    .restart local v4    # "i":I
    .local v6, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v7, "efid":I
    :catchall_2fc
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v20, v4

    move-object v5, v6

    move v14, v7

    .end local v4    # "i":I
    .end local v6    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v7    # "efid":I
    .restart local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v14    # "efid":I
    .restart local v20    # "i":I
    :goto_303
    :try_start_303
    monitor-exit v19
    :try_end_304
    .catchall {:try_start_303 .. :try_end_304} :catchall_305

    :try_start_304
    throw v0
    :try_end_305
    .catchall {:try_start_304 .. :try_end_305} :catchall_307

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :catchall_305
    move-exception v0

    goto :goto_303

    .line 171
    .end local v5    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v12    # "numLength":I
    .end local v14    # "efid":I
    .end local v16    # "extensionEF":I
    .end local v17    # "anr":Ljava/lang/String;
    .end local v18    # "pendingResponse":Landroid/os/Message;
    .end local v20    # "i":I
    .end local p2    # "adn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p3    # "recordIndex":I
    .end local p4    # "pin2":Ljava/lang/String;
    .end local p5    # "response":Landroid/os/Message;
    :catchall_307
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateAdnBySearch(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Ljava/lang/String;Landroid/os/Message;Ljava/lang/Object;)I
    .registers 32
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;
    .param p6, "object"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    monitor-enter p0

    .line 405
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", oldAdn ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], new Adn["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 407
    const/4 v3, -0x1

    .line 409
    .local v3, "index":I
    const/4 v4, 0x0

    .line 410
    .local v4, "i":I
    const/4 v5, 0x0

    .line 411
    .local v5, "anr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    .line 413
    .local v6, "extensionEF":I
    if-gez v6, :cond_5b

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EF is not known ADN-like EF:0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 414
    invoke-direct {v1, v11, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_b .. :try_end_59} :catchall_385

    .line 416
    monitor-exit p0

    return v3

    .line 419
    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :cond_5b
    :try_start_5b
    iget-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    if-nez v7, :cond_63

    .line 420
    const-string v7, ""

    iput-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 422
    :cond_63
    iget-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x3c

    if-le v7, v8, :cond_87

    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the input length of mAlphaTag is too long: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f6

    invoke-direct {v1, v11, v7, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_85
    .catchall {:try_start_5b .. :try_end_85} :catchall_385

    .line 428
    monitor-exit p0

    return v3

    .line 430
    :cond_87
    :try_start_87
    iget-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    if-nez v7, :cond_8f

    .line 431
    const-string v7, ""

    iput-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    .line 433
    :cond_8f
    iget-object v7, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 434
    .local v7, "numLength":I
    iget-object v8, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    const/16 v9, 0x2b

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_a2

    .line 435
    add-int/lit8 v7, v7, -0x1

    .line 438
    :cond_a2
    const/16 v8, 0x28

    if-le v7, v8, :cond_c0

    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the input length of phoneNumber is too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f5

    invoke-direct {v1, v11, v8, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_be
    .catchall {:try_start_87 .. :try_end_be} :catchall_385

    .line 445
    monitor-exit p0

    return v3

    .line 448
    :cond_c0
    const/4 v4, 0x0

    move v13, v7

    .end local v7    # "numLength":I
    .local v13, "numLength":I
    :goto_c2
    const/4 v14, 0x1

    if-ge v4, v14, :cond_f8

    .line 449
    :try_start_c5
    invoke-virtual {v10, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 450
    if-eqz v5, :cond_f5

    .line 451
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 452
    .end local v13    # "numLength":I
    .restart local v7    # "numLength":I
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v12, :cond_d8

    .line 453
    add-int/lit8 v7, v7, -0x1

    .line 456
    :cond_d8
    const/16 v8, 0x14

    if-le v7, v8, :cond_f4

    .line 457
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the input length of additional number is too long: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    invoke-direct {v1, v11, v8, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_f2
    .catchall {:try_start_c5 .. :try_end_f2} :catchall_385

    .line 462
    monitor-exit p0

    return v3

    .line 456
    :cond_f4
    move v13, v7

    .line 448
    .end local v7    # "numLength":I
    .restart local v13    # "numLength":I
    :cond_f5
    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    .line 468
    :cond_f8
    :try_start_f8
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v8, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v7

    const/16 v15, 0x1fd

    if-nez v7, :cond_10b

    .line 469
    const-string v7, "the email string is too long"

    invoke-direct {v1, v11, v7, v15}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_109
    .catchall {:try_start_f8 .. :try_end_109} :catchall_385

    .line 473
    monitor-exit p0

    return v3

    .line 478
    :cond_10b
    const/16 v9, 0x4f30

    const/4 v8, 0x0

    if-ne v0, v9, :cond_117

    .line 479
    :try_start_110
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->loadEfFilesFromUsim(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    .local v7, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    goto :goto_11b

    .line 481
    .end local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :cond_117
    invoke-virtual {v1, v0, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->getRecordsIfLoaded(ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    .line 484
    .restart local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :goto_11b
    if-nez v7, :cond_135

    .line 485
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adn list not exist for EF:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1fb

    invoke-direct {v1, v11, v8, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_133
    .catchall {:try_start_110 .. :try_end_133} :catchall_385

    .line 489
    monitor-exit p0

    return v3

    .line 495
    :cond_135
    const/16 v16, 0x1

    .line 496
    .local v16, "count":I
    :try_start_137
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :goto_13b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_156

    .line 497
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-virtual {v2, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isEqual(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v8

    if-eqz v8, :cond_152

    .line 498
    move/from16 v3, v16

    .line 499
    goto :goto_156

    .line 501
    :cond_152
    add-int/lit8 v16, v16, 0x1

    const/4 v8, 0x0

    goto :goto_13b

    .line 503
    .end local v17    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :cond_156
    :goto_156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateAdnBySearch index "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logi(Ljava/lang/String;)V

    .line 504
    if-ne v3, v12, :cond_1a9

    .line 505
    iget-object v8, v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_193

    iget-object v8, v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_193

    .line 506
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adn record don\'t exist for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f7

    invoke-direct {v1, v11, v8, v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_1a7

    .line 511
    :cond_193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adn record don\'t exist for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v11, v8}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1a7
    .catchall {:try_start_137 .. :try_end_1a7} :catchall_385

    .line 513
    :goto_1a7
    monitor-exit p0

    return v3

    .line 516
    :cond_1a9
    const/4 v8, 0x0

    .line 517
    .local v8, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    if-ne v0, v9, :cond_1c9

    .line 519
    add-int/lit8 v12, v3, -0x1

    :try_start_1ae
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object v8, v12

    .line 520
    iget v12, v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    move v0, v12

    .line 521
    .end local p1    # "efid":I
    .local v0, "efid":I
    iget v12, v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    move v6, v12

    .line 522
    iget v12, v8, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    move v3, v12

    .line 526
    iput v0, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEfid:I

    .line 527
    iput v6, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mExtRecord:I

    .line 528
    iput v3, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mRecordNumber:I

    move v12, v0

    move v15, v3

    move/from16 v18, v6

    goto :goto_1cd

    .line 517
    .end local v0    # "efid":I
    .restart local p1    # "efid":I
    :cond_1c9
    move v12, v0

    move v15, v3

    move/from16 v18, v6

    .line 531
    .end local v3    # "index":I
    .end local v6    # "extensionEF":I
    .end local p1    # "efid":I
    .local v12, "efid":I
    .local v15, "index":I
    .local v18, "extensionEF":I
    :goto_1cd
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    move-object/from16 v19, v0

    .line 533
    .local v19, "pendingResponse":Landroid/os/Message;
    if-eqz v19, :cond_1f7

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-direct {v1, v11, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1f5
    .catchall {:try_start_1ae .. :try_end_1f5} :catchall_385

    .line 536
    monitor-exit p0

    return v15

    .line 538
    :cond_1f7
    if-nez v12, :cond_20f

    .line 539
    :try_start_1f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal efid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_20d
    .catchall {:try_start_1f9 .. :try_end_20d} :catchall_385

    .line 540
    monitor-exit p0

    return v15

    .line 542
    :cond_20f
    :try_start_20f
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v3, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v15, v3, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v0

    const/16 v6, 0x1fc

    if-nez v0, :cond_222

    .line 543
    const-string v0, "drop the email for the limitation of the SIM card"

    invoke-direct {v1, v11, v0, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_220
    .catchall {:try_start_20f .. :try_end_220} :catchall_385

    .line 547
    monitor-exit p0

    return v15

    .line 549
    :cond_222
    const/4 v0, 0x0

    move-object/from16 v20, v5

    move v5, v0

    .end local v4    # "i":I
    .local v5, "i":I
    .local v20, "anr":Ljava/lang/String;
    :goto_226
    if-ge v5, v14, :cond_251

    .line 550
    :try_start_228
    invoke-virtual {v10, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .end local v20    # "anr":Ljava/lang/String;
    .local v0, "anr":Ljava/lang/String;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v3, v0, v15, v5, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v3

    if-nez v3, :cond_24c

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop the additional number for the write fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fa

    invoke-direct {v1, v11, v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_24a
    .catchall {:try_start_228 .. :try_end_24a} :catchall_385

    .line 556
    monitor-exit p0

    return v15

    .line 549
    :cond_24c
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v20, v0

    goto :goto_226

    .line 560
    .end local v0    # "anr":Ljava/lang/String;
    .restart local v20    # "anr":Ljava/lang/String;
    :cond_251
    :try_start_251
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v3, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v0, v15, v3, v8}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->checkSneCapacityFree(ILjava/lang/String;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)Z

    move-result v0

    const/16 v4, 0x1fe

    if-nez v0, :cond_264

    .line 561
    const-string v0, "drop the sne for the limitation of the SIM card"

    invoke-direct {v1, v11, v0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_262
    .catchall {:try_start_251 .. :try_end_262} :catchall_385

    .line 565
    monitor-exit p0

    return v15

    .line 568
    :cond_264
    :try_start_264
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_26c
    .catchall {:try_start_264 .. :try_end_26c} :catchall_385

    .line 571
    const/4 v0, 0x0

    :try_start_26d
    iput-boolean v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    .line 572
    iput-boolean v14, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    .line 574
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;

    iget-object v4, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 576
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v12, v15, v10}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21
    :try_end_27d
    .catchall {:try_start_26d .. :try_end_27d} :catchall_379

    .line 574
    move-object/from16 v22, v3

    move-object v3, v0

    const/16 v0, 0x1fe

    move-object/from16 v4, p3

    move/from16 v23, v5

    .end local v5    # "i":I
    .local v23, "i":I
    move v5, v12

    move/from16 v6, v18

    move-object/from16 v24, v7

    .end local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .local v24, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    move v7, v15

    move-object v14, v8

    const/4 v0, 0x0

    .end local v8    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v14, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move-object/from16 v8, p4

    move v0, v9

    move-object/from16 v9, v21

    :try_start_293
    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordLoader;->updateEF(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_296
    .catchall {:try_start_293 .. :try_end_296} :catchall_377

    .line 581
    :goto_296
    :try_start_296
    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mNeedToWait:Z

    if-eqz v3, :cond_2a0

    .line 582
    iget-object v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_29f
    .catch Ljava/lang/InterruptedException; {:try_start_296 .. :try_end_29f} :catch_373
    .catchall {:try_start_296 .. :try_end_29f} :catchall_383

    goto :goto_296

    .line 586
    :cond_2a0
    nop

    .line 587
    :try_start_2a1
    monitor-exit v22
    :try_end_2a2
    .catchall {:try_start_2a1 .. :try_end_2a2} :catchall_383

    .line 588
    :try_start_2a2
    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    if-nez v3, :cond_2be

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnBySearch mSuccess:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mSuccess:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->loge(Ljava/lang/String;)V
    :try_end_2bc
    .catchall {:try_start_2a2 .. :try_end_2bc} :catchall_385

    .line 590
    monitor-exit p0

    return v15

    .line 592
    :cond_2be
    const/4 v3, 0x0

    .line 593
    .local v3, "success":I
    const/16 v4, 0x6f3a

    if-eq v12, v4, :cond_2f9

    if-eq v12, v0, :cond_2f9

    const/16 v0, 0x4f3a

    if-eq v12, v0, :cond_2f9

    const/16 v0, 0x4f3b

    if-eq v12, v0, :cond_2f9

    const/16 v0, 0x4f3c

    if-eq v12, v0, :cond_2f9

    const/16 v0, 0x4f3d

    if-ne v12, v0, :cond_2d6

    goto :goto_2f9

    .line 634
    :cond_2d6
    const/16 v0, 0x6f3b

    if-ne v12, v0, :cond_2f5

    .line 635
    :try_start_2da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdnBySearch FDN response:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 636
    const/4 v0, 0x0

    invoke-static {v11, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 637
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V

    .line 639
    :cond_2f5
    move/from16 v5, v23

    goto/16 :goto_371

    .line 595
    :cond_2f9
    :goto_2f9
    iget-object v0, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v4, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v0, v4, v15, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v0

    .line 596
    .local v0, "mResult":I
    const/16 v4, -0x1e

    if-ne v4, v0, :cond_30d

    .line 597
    const-string v4, "drop the SNE for the limitation of the SIM card"

    const/16 v5, 0x1fe

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_318

    .line 601
    :cond_30d
    const/16 v5, -0x28

    if-ne v5, v0, :cond_31b

    .line 602
    const-string v4, "the sne string is too long"

    const/16 v5, 0x1ff

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 634
    .end local v0    # "mResult":I
    :goto_318
    move/from16 v5, v23

    goto :goto_371

    .line 607
    .restart local v0    # "mResult":I
    :cond_31b
    const/4 v6, 0x0

    .end local v23    # "i":I
    .local v6, "i":I
    :goto_31c
    const/4 v7, 0x1

    if-ge v6, v7, :cond_32d

    .line 608
    invoke-virtual {v10, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v8

    .line 609
    .end local v20    # "anr":Ljava/lang/String;
    .local v8, "anr":Ljava/lang/String;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v9, v8, v15, v6, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)V

    .line 607
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v20, v8

    goto :goto_31c

    .line 611
    .end local v8    # "anr":Ljava/lang/String;
    .restart local v20    # "anr":Ljava/lang/String;
    :cond_32d
    iget-object v7, v1, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    iget-object v8, v10, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v7, v8, v15, v14}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v7

    move v3, v7

    .line 614
    if-ne v4, v3, :cond_340

    .line 615
    const-string v4, "drop the email for the limitation of the SIM card"

    const/16 v5, 0x1fc

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_370

    .line 618
    :cond_340
    if-ne v5, v3, :cond_34a

    .line 619
    const-string v4, "the email string is too long"

    const/16 v5, 0x1fd

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_370

    .line 623
    :cond_34a
    const/16 v4, -0x32

    if-ne v4, v3, :cond_355

    .line 624
    const-string v4, "Unkown error occurs when update email"

    const/4 v5, 0x2

    invoke-direct {v1, v11, v4, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    goto :goto_370

    .line 629
    :cond_355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAdnBySearch response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->logd(Ljava/lang/String;)V

    .line 630
    const/4 v4, 0x0

    invoke-static {v11, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 631
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_370
    .catchall {:try_start_2da .. :try_end_370} :catchall_385

    .line 634
    .end local v0    # "mResult":I
    :goto_370
    move v5, v6

    .line 639
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :goto_371
    monitor-exit p0

    return v15

    .line 584
    .end local v3    # "success":I
    .end local v5    # "i":I
    .restart local v23    # "i":I
    :catch_373
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_374
    monitor-exit v22
    :try_end_375
    .catchall {:try_start_374 .. :try_end_375} :catchall_377

    monitor-exit p0

    return v15

    .line 587
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :catchall_377
    move-exception v0

    goto :goto_381

    .end local v14    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v23    # "i":I
    .end local v24    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .restart local v5    # "i":I
    .restart local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .local v8, "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :catchall_379
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v23, v5

    move-object/from16 v24, v7

    move-object v14, v8

    .end local v5    # "i":I
    .end local v7    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .end local v8    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v14    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v23    # "i":I
    .restart local v24    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :goto_381
    :try_start_381
    monitor-exit v22
    :try_end_382
    .catchall {:try_start_381 .. :try_end_382} :catchall_383

    :try_start_382
    throw v0
    :try_end_383
    .catchall {:try_start_382 .. :try_end_383} :catchall_385

    .end local p0    # "this":Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;
    :catchall_383
    move-exception v0

    goto :goto_381

    .line 404
    .end local v12    # "efid":I
    .end local v13    # "numLength":I
    .end local v14    # "foundAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v15    # "index":I
    .end local v16    # "count":I
    .end local v18    # "extensionEF":I
    .end local v19    # "pendingResponse":Landroid/os/Message;
    .end local v20    # "anr":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v24    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .end local p2    # "oldAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p3    # "newAdn":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local p4    # "pin2":Ljava/lang/String;
    .end local p5    # "response":Landroid/os/Message;
    .end local p6    # "object":Ljava/lang/Object;
    :catchall_385
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateContactToGroups(I[I)Z
    .registers 4
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .line 875
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateContactToGroups(I[I)Z

    move-result v0

    return v0
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .line 931
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateUsimAas(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateUsimGroup(ILjava/lang/String;)I
    .registers 4
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .line 863
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecordCache;->mUsimPhoneBookManager:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->updateUsimGroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
